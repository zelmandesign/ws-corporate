<?php $__env->startSection('content'); ?>
  <?php while(have_posts()): ?> <?php the_post() ?>
  <?php echo $__env->make('partials.page-header', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    <div class="container pb-5" id="franchise-logos">
      <div class="row">
        <div class="col-md col-4 mb-2">
          <img src="<?= App\asset_path('images/logos_front/WGLogo.png'); ?>" alt="" class="img-fluid wow fadeInUp">
        </div>
        <div class="col-md col-4 mb-2">
          <img src="<?= App\asset_path('images/logos_front/WSEXPRESS7.png'); ?>" alt="" class="img-fluid wow fadeInUp">
        </div>
        <div class="col-md col-4 mb-2">
          <img src="<?= App\asset_path('images/logos_front/WSLogo3D.png'); ?>" alt="" class="img-fluid wow fadeInUp">
        </div>
      </div>
    </div>
    <div class="container mb-5">
      <?php echo $__env->make('partials.content-page', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    </div>
  <?php endwhile; ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>