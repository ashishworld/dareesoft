<div class="row g-3">
  <div class="col-12">
    <div class="card bg-violet">

      <div class="card-header card-title">
        <h6 class="mb-0">Basic Information</h6>
      </div>

      <div class="card-body">
        <div class="row g-3">

          @include('backend.partials.inputs.select', [
            'wrapperClass' => 'col-12 col-md-3',
            'inputLabel' => 'Language',
            'inputId' => 'language',
            'value' => $language ?? '',
            'inputOptions' => [
              ['id' => 'en', 'name' => 'English only'],
              ['id' => 'kr', 'name' => 'Korean only'],
              ['id' => 'both', 'name' => 'Both'],
            ]
          ])

          @include('backend.partials.inputs.select', [
            'wrapperClass' => 'col-12 col-md-3',
            'inputLabel' => 'Type',
            'inputId' => 'type',
            'value' => $type ?? '',
            'inputOptions' => [
              ['id' => 'press', 'name' => 'Press'],
              ['id' => 'news', 'name' => 'News']
            ]
          ])

          @include('backend.partials.inputs.select', [
            'wrapperClass' => 'col-12 col-md-3',
            'inputLabel' => 'Mark as featured',
            'inputId' => 'is_featured',
            'value' => $is_featured ?? '',
            'inputOptions' => [
              ['id' => 'Y', 'name' => 'Yes'],
              ['id' => 'N', 'name' => 'No']
            ]
          ])

          @include('backend.partials.inputs.text', [
            'wrapperClass' => 'col-12 col-md-3',
            'inputLabel' => 'Publish date',
            'inputId' => 'publish_date',
            'placeHolder' => '',
            'value' => $publish_date ?? ''
          ])

          @isset($status)
            @include('backend.partials.inputs.select', [
              'wrapperClass' => 'col-12 col-md-3',
              'inputLabel' => 'Status',
              'inputId' => 'status',
              'value' => $status ?? '',
              'inputOptions' => [
                ['id' => 'A', 'name' => 'Active'],
                ['id' => 'D', 'name' => 'Deactive']
              ]
            ])
          @endisset

          @include('backend.partials.inputs.text', [
            'wrapperClass' => 'col-12',
            'inputLabel' => 'Title',
            'inputId' => 'name',
            'placeHolder' => 'Enter title',
            'value' => $name ?? '',
            'hintText' => 'Note: A slug will be generated automatically'
          ])

        </div>
      </div>
    </div>
  </div>
</div>