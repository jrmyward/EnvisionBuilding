<?php
/*
 * Render a page.
 * Layout areas and page content area are rendered.
 * 
 * Available vars :
 * - dmFrontPageHelper $helper      ( page_helper service )
 * - boolean           $isEditMode  ( whether the user is allowed to edit page )
 */
?>

<div id="dm_page"<?php $isEditMode && print ' class="edit"' ?>>

  <div class="layout">

    <div class="header clearfix">

      <?php echo $helper->renderArea('layout.top', '.clearfix') ?>

    </div><!-- .header -->

    <div class="layout_center clearfix">

      <div class="container container_content_top clearfix">
        <?php echo $helper->renderArea('page.content_before', '.clearfix') ?>
      </div><!-- .container container_content_top -->

      <div class="content_main clearfix">

        <?php echo $helper->renderArea('page.content', '.clearfix') ?>

        <?php echo $helper->renderArea('layout.right') ?>

      </div><!-- .content_main -->

      <div class="container container_content_bottom clearfix">
        <?php echo $helper->renderArea('page.content_bottom', '.clearfix') ?>
      </div><!-- .container container_content_bottom -->

    </div><!-- .layout_center clearfix -->

    <div class="footer clearfix">

      <?php echo $helper->renderArea('layout.ft_content', '.clearfix') ?>

    </div><!-- .footer clearfix -->
  </div><!-- .layout -->

</div>