@if ( isset($data) )
  <div data-fillter="{{ $slug ?? '' }}" class="workDetailBox">
    <div class="d-flex">

      <div class="wdIcon serviceIcon">
        @include('web.pages.partials.image', [
          'imageUrl' => $data['iconBlue'] ?? '',
          'caption' => $data['head'] ?? ''
        ])

        @include('web.pages.partials.image', [
          'imageUrl' => $data['iconWhite'] ?? '',
          'caption' => $data['head'] ?? ''
        ])
      </div>

      <div>
        <h6>{{ $data['head'] ?? '' }}</h6>
        {!! $data['text'] ?? '' !!}
      </div>
    </div>
  </div>
@endif