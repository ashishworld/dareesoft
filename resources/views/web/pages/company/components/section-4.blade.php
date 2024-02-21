@if ( isset($leadershipData) && count($leadershipData) > 0 )
<section class="mb-5">
  <div class="py-lg-5 container animateThis slideTop">
    <div class="title">
      <h2>{{ $heading ?? '' }}</h2>
    </div>

    @if (isset($leadershipData) && !empty($leadershipData))
    <div class="swiper leadershipSwiper">
      <div class="swiper-wrapper">
        @foreach ($leadershipData as $leadership)
          @include('web.pages.company.components.cards.leadership-card', [
            'locale' => $locale ?? 'en',
            'data' => $leadership
          ])          
        @endforeach
      </div>
    </div>
    @endif

  </div>
</section>
@endif