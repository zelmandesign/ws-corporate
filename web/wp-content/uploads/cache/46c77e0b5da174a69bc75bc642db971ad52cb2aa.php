<?php $backgroundImg = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'full' );?>

<div class="page-header d-flex justify-content-center align-items-center bg-danger" style="background-image: linear-gradient(to bottom, rgba(127, 127, 130, 0.22), rgba(101, 96, 99, 0.23)), url('<?php echo $backgroundImg[0]; ?>');">
  <h1><?php echo App::title(); ?></h1>
</div>
