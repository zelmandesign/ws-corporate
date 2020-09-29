<header class="banner navbar navbar-expand-lg fixed-top">
  <a class="brand" href="{{ home_url('/') }}"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.png" width="210" height="156"></a>
  
  <div class="cart-shopify d-block d-lg-none">
    @php echo do_shortcode('[wps_cart_icon icon_color="#FFF" counter_background_color="#DB3545" counter_text_color="#FFF"]'); @endphp 
  </div>

  <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
    <div id="nav-icon3">
      <span></span>
      <span></span>
      <span></span>
      <span></span>
    </div>
  </button>
  
  <nav class="nav-primary navbar-collapse collapse justify-content-end" id="navbarCollapse">
    @if (has_nav_menu('primary_navigation'))
      {!! wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav navbar-nav mr-auto']) !!}
    @endif
    <span class="navbar-text d-none d-lg-block">
      @php echo do_shortcode('[wps_cart_icon icon_color="#FFF" counter_background_color="#DB3545" counter_text_color="#FFF"]'); @endphp 
    </span>
  </nav>
</header>

<div class="scroll">
  <a href="#" class="scrollup hvr-outline-out"><i class="fas fa-angle-up" style="font-size: 1.5rem;"></i></a>
</div>
