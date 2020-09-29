<?php $__env->startSection('content'); ?>
  <?php while(have_posts()): ?> <?php the_post() ?>

    <section id="main" style="background: url('<?php echo e($hero_background_image); ?>') center center;">
      <div class="flex-wrapper">
        <?php if($hero_heading): ?>
          <h1 class="wow fadeIn"><?php echo e($hero_heading); ?></h1>
          <div class="line"></div>
        <?php endif; ?>

        <?php if($hero_subheading): ?>
          <p class="wow fadeIn"><?php echo e($hero_subheading); ?></p>
        <?php endif; ?>
        
        <div class="container pt-5 pb-5">
          <div class="row">
            <?php
              if( have_rows('logos') ): 
            ?>
              <?php   
              while ( have_rows('logos') ) : the_row(); 
              ?>
                <div class="col-md col-4 mb-2">
                  <?php 
                    $image = get_sub_field('logo');
                  ?>
                  <img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" class="img-fluid wow fadeInUp">
                </div>
              <?php endwhile; ?>
            <?php endif; ?>
          </div>
        </div>
      </div>
    </section>
    
    <section id="verbiage">
      <div class="container">
        <div class="text-center">
          <?php if($verbiage_heading): ?>
            <h1><?php echo e($verbiage_heading); ?></h1>
            <div class="line"></div>
          <?php endif; ?>
          <?php if($verbiage_subheading): ?>
            <div class="stronger mb-5">
              <?php echo e($verbiage_subheading); ?>

            </div> 
          <?php endif; ?>
        </div>
        
        <div class="line-long"></div>

        <?php if($verbiage_text): ?>
          <div class="row">
            <div class="col-md-10 offset-md-1">
              <?php echo $verbiage_text ?>
            </div>
          </div>
        <?php endif; ?>
      </div>
    </section>

    <section id="cards">
      <div class="container">
        <div class="row">

            <?php
              if( have_rows('card_image') ): 
            ?>

              <?php   
              while ( have_rows('card_image') ) : the_row(); 
              ?>

                <div class="col-md mb-3">
                  <?php 
                    $image_card = get_sub_field('card_image_single');
                    $page_url = get_sub_field('card_page_link');
                  ?>

                  <a href="<?php echo e($page_url); ?>">
                    <img src="<?php echo $image_card['url']; ?>" alt="<?php echo $image_card['alt']; ?>" class="img-fluid">
                  </a>
                </div>
              
              <?php endwhile; ?>
            <?php endif; ?>

        </div>
      </div>
    </section>
    <section id="buffet-hero" style="background-image: linear-gradient(to bottom, rgba(58, 60, 69, 0.32), rgba(33, 30, 32, 0.33)), url('<?php echo e($statement_bg_image); ?>');">
      <div class="container text-center">
        <img src="<?= App\asset_path('images/logo.png'); ?>" alt="" class="mb-4 wow fadeInUp"><br>
        <div class="line wow fadeInUp"></div>
        <?php if($verbiage_text): ?>
          <div class="home-bigger wow fadeInUp"><?php echo e($statement_text); ?></div> 
        <?php endif; ?>
      </div>
    </section>
    <section id="locations-home">
      <div class="background-after" style="background-image: linear-gradient(to bottom, rgba(127, 127, 130, 0.32), rgba(101, 96, 99, 0.33)), url('<?php echo e($store_finder_bg_image); ?>');"></div>

      <div class="container">
        <?php if($store_finder_text): ?>
          <div class="home-bigger wow fadeIn"><?php echo e($store_finder_text); ?></div>
          <div class="line"></div>
        <?php endif; ?>
        <div class="row wow fadeIn">
          <div class="col-sm-8 offset-sm-2">
            <?php dynamic_sidebar('sidebar-home-location') ?>
          </div>
        </div>
      </div>
    </section>
    <?php endwhile; ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>