@if ( isset($addressData) && !empty($addressData) )
<section>
  <div class="py-5 addressWrp">
    
    <div class="title">
      <h2>{{ $heading ?? '' }}</h2>
    </div>

    <div class="container">
      <div class="row gx-lg-5">
        @foreach ($addressData as $address)
          @include('web.pages.partials.office-card', [
            'data' => $address,
            'locale' => $locale ?? 'en'
          ])
        @endforeach
      </div>
    </div>
  </div>
</section>
@endif