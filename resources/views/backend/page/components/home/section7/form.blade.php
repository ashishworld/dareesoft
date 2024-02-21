<div class="row g-3">
  <div class="col-12">
    <div class="card bg-violet">

      <div class="card-header card-title">
        <h6 class="mb-0">Section 7 - Popup</h6>
      </div>

      <div class="card-body">
        <div class="row g-3">
          
          @include('backend.partials.media-selector', [
            'sectionName' => 'sec7Image',
            'sectionLabel' => 'Image',
            'sectionValue' => $image ?? '',
          ])

          @include('backend.partials.inputs.text', [
            'wrapperClass' => 'col-12 col-md-6',
            'inputLabel' => 'Heading',
            'inputId' => 'sec6Heading',
            'placeHolder' => 'Enter heading',
            'value' => $heading ?? ''
          ])

          @include('backend.partials.inputs.text', [
            'wrapperClass' => 'col-12 col-md-6',
            'inputLabel' => 'Heading (Red Color)',
            'inputId' => 'sec6HeadingRed',
            'placeHolder' => 'Enter heading',
            'value' => $headingRed ?? ''
          ])

        </div>
      </div>
    </div>
  </div>
</div>