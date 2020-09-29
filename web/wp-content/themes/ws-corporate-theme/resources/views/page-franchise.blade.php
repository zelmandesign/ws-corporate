@extends('layouts.app')

@section('content')
  @while(have_posts()) @php the_post() @endphp
  @include('partials.page-header')
    <div class="container pb-5" id="franchise-logos">
      <div class="row">
        <div class="col-md col-4 mb-2">
          <img src="@asset('images/logos_front/WGLogo.png')" alt="" class="img-fluid wow fadeInUp">
        </div>
        <div class="col-md col-4 mb-2">
          <img src="@asset('images/logos_front/WSEXPRESS7.png')" alt="" class="img-fluid wow fadeInUp">
        </div>
        <div class="col-md col-4 mb-2">
          <img src="@asset('images/logos_front/WSLogo3D.png')" alt="" class="img-fluid wow fadeInUp">
        </div>
      </div>
    </div>
    <div class="container mb-5">
      @include('partials.content-page')
    </div>
  @endwhile
@endsection
