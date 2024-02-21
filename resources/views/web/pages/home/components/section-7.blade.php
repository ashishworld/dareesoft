<!-- Modal -->
@if ( isset($image) && $image )
<!-- Modal -->
<div class="modal fade modal-md" id="dareesoftPopup" data-bs-backdrop="static">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      
      @include('web.pages.partials.image', [
        'imageUrl' => $image ?? ''
      ])

      <div class="modal-footer justify-content-between">
        <div>
          <input class="form-check-input" type="checkbox" id="dontShowAgain" />
          <label class="form-check-label" for="dontShowAgain">Do not display today</label>
        </div>
        <div>
          <button
            type="button"
            class="p-2 px-4 ctaBtn"
            id="closeButton"
            data-bs-dismiss="modal"
          >
            Close
          </button>
        </div>
      </div>
    </div>
  </div>
</div>
@endif