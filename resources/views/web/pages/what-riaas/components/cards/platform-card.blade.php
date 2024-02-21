@if ( isset($icon) || isset($image) || isset($head) )
<div class="swiper-slide">
  <div class="platformBox">
    <div class="platformImg">
      @include('web.pages.partials.image', [
        'imageUrl' => $image,
        'caption' => $head
      ])
    </div>
    <div class="platformDetails">
      <div>
        @include('web.pages.partials.image', [
          'imageUrl' => $icon,
          'caption' => $head
        ])
        
        {{ $head ?? '' }}
      </div>
    </div>
  </div>
</div>
@endif