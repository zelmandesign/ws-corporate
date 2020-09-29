@extends('layouts.app')

@section('content')
  @while(have_posts()) @php the_post() @endphp
  @include('partials.page-header')
    <div class="container mb-5">
      <div class="row">
        <div class="col">
          @include('partials.content-page')
        </div>
      </div>
    </div>
  @endwhile
@endsection
