@extends('layouts.app')

@section('content')
  @while(have_posts()) @php the_post() @endphp
  @include('partials.page-header')
    <div class="container-fluid">
      @include('partials.content-page')
    </div>
  @endwhile
@endsection
