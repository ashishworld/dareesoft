"use strict";

let inputSet = {};

if( typeof isFormPage !== 'undefined' && isFormPage === '1' ){
  inputSet = {
    contentEn: getContentObject("contentEn", 10),
    contentKr: getContentObject("contentKr", 10)
  };
}

if( typeof isEditFormPage !== 'undefined' && isEditFormPage === '1' ){
  inputSet.contentEn.toggleButton("contentEn");
  inputSet.contentKr.toggleButton("contentKr");
}

$(document).ready(function() {

  if( typeof isListPage  !== 'undefined' && isListPage  === '1' ){

    const tableColumns =  [
      {"targets": [0], "orderable": false}, 
      {"targets": [1,2,3,4,5,6,7,8,9,10], "orderable": true},
      {"targets": [0,1,2], "width": 50},
      {"targets": [3], "width": 100},
      {"targets": [4], "width": 300},
      {"targets": [5,6,7], "width": 40},
      {"targets": [8,9,10], "width": 60}
    ];

    setDataTable("blogTable", tableColumns);

    $(".deleteBtn").on("click", function(e){
      e.preventDefault();        

      const recordId = $(this).data("itemtodelete");

      const formdata = new FormData();
      formdata.append('recordId', recordId);
  
      deleteRecord(routes.BLOG_DELETE, formdata);
    });
  }

  if( typeof isFormPage  !== 'undefined' && isFormPage === '1' ){

    const accordionElements = document.getElementsByClassName("accordion");
    if( accordionElements.length > 0 ){
      for (let i = 0; i < accordionElements.length; i++) {
        const accordionElement = accordionElements[i];
        const sortable = Sortable.create(accordionElement, {
          handle: '.accordion-header', // Use the header for the drag handle
          animation: 150,
          dataIdAttr: 'data-id',
          handle: ".my-handle", 
          
          onEnd: function(evt) {
            const item = evt.item;
            const section = item.getAttribute('data-section');
  
            const order = sortable.toArray(); // Get the array of item IDs
            inputSet[section].elements = order;
          }
        });
      }  
    }
    
    $(".addRowBtn").on("click", function(e){
      e.preventDefault();

      const section = $(this).data('section');
      const treeRef = `#${section}Tree`;

      if( ['contentEn', 'contentKr'].includes(section) ){
        resetErrorMessages();
        $('#loader-wrapper').hide();

        const selectedLayout = $(`#${section}Layout`).val();
        if( !selectedLayout ){
          $(`label[for='${section}Layout']`).html("Select layout");
          $(`#${section}Layout`).addClass('is-invalid');
          $(".invalid-feedback").css("display", "block");
          
          return
        }else{
          inputSet[section].layout = selectedLayout;
        }
      }

      inputSet[section].elIndex += 1;
      inputSet[section].pushElement();
      inputSet[section].toggleButton(section);

      $('.accordion-collapse').removeClass('show');
      $('.accordion-button').attr('aria-expanded', 'false');

      $(treeRef).append( inputSet[section].newRow() );

      if( ['layout_1','layout_2'].includes(inputSet[section].layout) ){
        CKEDITOR.replace( $(`#${section}TextR${inputSet[section].elIndex}`).attr('id') )
      }
      
      $(`#${section}Layout`).val('');
    });

    $("#blogAddForm, #blogUpdateForm").on('click', ".removeRowBtn", removeTableRowHandler);

    let defaultDate = '';
    
    if( typeof isEditFormPage  !== 'undefined' && isEditFormPage === '1' ){
      $("#blogUpdateForm").on("submit",function(e){
        e.preventDefault();        
    
        for(let instance in CKEDITOR.instances){
          CKEDITOR.instances[instance].updateElement();
        } 

        const formData = new FormData(this);
        formData.append("contentEnSet", inputSet.contentEn.elements);
        formData.append("contentKrSet", inputSet.contentKr.elements);

        postForm(routes.BLOG_UPDATE, formData);
      });
    }else{
      $("#blogAddForm").on("submit", function(e){
        e.preventDefault();        
    
        for(let instance in CKEDITOR.instances){
          CKEDITOR.instances[instance].updateElement();
        } 

        const formData = new FormData(this);
        formData.append("contentEnSet", inputSet.contentEn.elements);
        formData.append("contentKrSet", inputSet.contentKr.elements);

        postForm(routes.BLOG_ADD, formData);
      });
    }

    flatpickr("#publish_date", {
      defaultDate: defaultDate, // Set the default date
      maxDate: new Date()
    });

    $("#language").on("change", function(e){
      const selectedLang = $(this).val(); 
      sectionToggler(selectedLang);
    });
    
    const selectedLang = $('#language').val(); 
    sectionToggler(selectedLang);
  }
});