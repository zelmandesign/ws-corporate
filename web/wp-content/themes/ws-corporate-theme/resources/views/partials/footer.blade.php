<footer>
  <div class="content-info">
    <div class="container">
      <div class="row d-none d-lg-flex">
        <div class="col">
          <img src="@asset('images/logos_front/WGLogo.png')" alt="" class="img-fluid">
        </div>      
        <div class="col">
          <img src="@asset('images/logos_front/WSEXPRESS7.png')" alt="" class="img-fluid">
        </div>
        <div class="col">
          <img src="@asset('images/logos_front/WSLogo3D.png')" alt="" class="img-fluid">
        </div>
        <div class="col">
          <img src="@asset('images/logos_front/NewGAlogoColor.png')" alt="" class="img-fluid">
        </div>
        <div class="col">
          <img src="@asset('images/logos_front/QuincysLogoNoGrill.png')" alt="" class="img-fluid">  
        </div>
        <div class="col-3 offset-1">
          <div class="d-inline-block w-50">
            {!! wp_nav_menu(['theme_location' => 'footer_navigation', 'menu_class' => 'nav navbar-nav']) !!}
          </div>
          <div class="d-inline-block">
            {!! wp_nav_menu(['theme_location' => 'footer_navigation2', 'menu_class' => 'nav navbar-nav']) !!}  
          </div>
        </div>
      </div>
      <div class="row d-flex d-lg-none">
        <div class="col">
          <img src="@asset('images/logos_front/WSLogo3D.png')" alt="" class="img-fluid">
        </div>
        <div class="col offset-md-1">
          {!! wp_nav_menu(['theme_location' => 'footer_navigation', 'menu_class' => 'nav navbar-nav']) !!}
        </div>
        <div class="col">
          {!! wp_nav_menu(['theme_location' => 'footer_navigation2', 'menu_class' => 'nav navbar-nav']) !!}  
        </div>
      </div>
    </div>
  </div>
  <div class="copy">
    <div class="container">
      <div class="payments">
        <i class="fab fa-paypal"></i>
        <i class="fab fa-cc-visa"></i>
        <i class="fab fa-cc-amex"></i>
        <i class="fab fa-cc-mastercard"></i>
      </div>
      <div>
        Copyright @php echo get_bloginfo('name'); @endphp 2019
      </div>
    </div>
  </div>
</footer>