@extends('layouts.app')

@section('content')
  @while(have_posts()) @php the_post() @endphp
  @include('partials.page-header')
    <div class="container mb-5">

      @include('partials.content-page')

      <div class="row">
        <div class="col-lg-5 col-md-6 text-center mb-5">
          @php echo do_shortcode('[wps_products title="Western Sizzlin Gift Card" variant_button_color="#db3545" show_price_range="false" excludes="pricing, description" title_size="22px" items_per_row="1"]'); @endphp
          
          <div class="container-fluid" id="fluid-fix">
            <a href="https://wbiprod.storedvalue.com/WBI/lookupservlet?language=en&host=western-sizzlin.com" target="_blank" class="btn btn-danger" rel="noopener noreferrer">Check Card Balance</a>
          </div>
        </div>
        <div class="col-md">
          @php echo do_shortcode('[wps_products_description title="Western Sizzlin Gift Card" items_per_row="1"]'); @endphp
        </div>
      </div>
    </div>
  @endwhile
@endsection
