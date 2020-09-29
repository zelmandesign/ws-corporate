@extends('layouts.app')

@section('content')
  @while(have_posts()) @php the_post() @endphp

    <section id="main" style="background: url('{{$hero_background_image}}') center center;">
      <div class="flex-wrapper">
        @if($hero_heading)
          <h1 class="wow fadeIn">{{$hero_heading}}</h1>
          <div class="line"></div>
        @endif

        @if($hero_subheading)
          <p class="wow fadeIn">{{$hero_subheading}}</p>
        @endif
        
        <div class="container pt-5 pb-5">
          <div class="row">
            @php
              if( have_rows('logos') ): 
            @endphp
              @php   
              while ( have_rows('logos') ) : the_row(); 
              @endphp
                <div class="col-md col-4 mb-2">
                  @php 
                    $image = get_sub_field('logo');
                  @endphp
                  <img src="@php echo $image['url']; @endphp" alt="@php echo $image['alt']; @endphp" class="img-fluid wow fadeInUp">
                </div>
              @php endwhile; @endphp
            @endif
          </div>
        </div>
      </div>
    </section>
    {{--  <section id="logos">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md col-4 mb-2">
            <img src="@asset('images/logos_front/NewGAlogoColor.png')" alt="" class="img-fluid wow fadeInUp">
          </div>
          <div class="col-md col-4 mb-2">
            <img src="@asset('images/logos_front/QuincysLogoNoGrill.png')" alt="" class="img-fluid wow fadeInUp">
          </div>
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
    </section>  --}}
    <section id="verbiage">
      <div class="container">
        <div class="text-center">
          @if($verbiage_heading)
            <h1>{{$verbiage_heading}}</h1>
            <div class="line"></div>
          @endif
          @if($verbiage_subheading)
            <div class="stronger mb-5">
              {{$verbiage_subheading}}
            </div> 
          @endif
        </div>
        
        <div class="line-long"></div>

        @if($verbiage_text)
          <div class="row">
            <div class="col-md-10 offset-md-1">
              @php echo $verbiage_text @endphp
            </div>
          </div>
        @endif
      </div>
    </section>

    <section id="cards">
      <div class="container">
        <div class="row">

            @php
              if( have_rows('card_image') ): 
            @endphp

              @php   
              while ( have_rows('card_image') ) : the_row(); 
              @endphp

                <div class="col-md mb-3">
                  @php 
                    $image_card = get_sub_field('card_image_single');
                    $page_url = get_sub_field('card_page_link');
                  @endphp

                  <a href="{{$page_url}}">
                    <img src="@php echo $image_card['url']; @endphp" alt="@php echo $image_card['alt']; @endphp" class="img-fluid">
                  </a>
                </div>
              
              @php endwhile; @endphp
            @endif

        </div>
      </div>
    </section>
    <section id="buffet-hero" style="background-image: linear-gradient(to bottom, rgba(58, 60, 69, 0.32), rgba(33, 30, 32, 0.33)), url('{{$statement_bg_image}}');">
      <div class="container text-center">
        <img src="@asset('images/logo.png')" alt="" class="mb-4 wow fadeInUp"><br>
        <div class="line wow fadeInUp"></div>
        @if($verbiage_text)
          <div class="home-bigger wow fadeInUp">{{$statement_text}}</div> 
        @endif
      </div>
    </section>
    <section id="locations-home">
      <div class="background-after" style="background-image: linear-gradient(to bottom, rgba(127, 127, 130, 0.32), rgba(101, 96, 99, 0.33)), url('{{$store_finder_bg_image}}');"></div>

      <div class="container">
        @if($store_finder_text)
          <div class="home-bigger wow fadeIn">{{$store_finder_text}}</div>
          <div class="line"></div>
        @endif
        <div class="row wow fadeIn">
          <div class="col-sm-8 offset-sm-2">
            @php dynamic_sidebar('sidebar-home-location') @endphp
          </div>
        </div>
      </div>
    </section>
    @endwhile
@endsection
