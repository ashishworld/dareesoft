@if ( isset($data) || $isset($locale) )
<div class="swiper-slide">
  <div class="leadBox">
    <div class="leadPic">
      @if (isset($data['image']) && isset($data['image'][$locale]) && $data['image'][$locale] )
        @include('web.pages.partials.image', [
          'imageUrl' => $data['image'][$locale],
          'caption' => $data['name'][$locale] ?? ''
        ])
      @endif
    </div>
    <span>{{ $data['designation'][$locale] ?? '' }}</span>
    <h6>{{ $data['name'][$locale] ?? '' }}</h6>

    {!! $data['description'][$locale] ?? '' !!}
  </div>
</div>
@endif