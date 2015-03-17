<?php echo $header; ?>
<!--main-->
<section class="main">
    <div class="orders_edit_tit clearfix">
        <ul>
            <li class="orders_edit_tit0" href="<?php echo $breadcrumbs[count($breadcrumbs) - 1]['href']; ?>"><?php echo $breadcrumbs[count($breadcrumbs) - 1]['text']; ?></li>
        </ul>
    </div>
    <section class="mainWrap clearfix">
        <!--list-->
        <section class="picList clearfix">
            <ul>
                <?php foreach ($products as $product) { ?>
                <li>
                    <a href="<?php echo $product['href']; ?>" target="_blank">
                        <img class="like_pic" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"/>
                    </a>
                    <p><a href="<?php echo $product['href']; ?>" target="_blank"><?php echo $product['name']; ?></a></p>
                    <p class="price"><?php echo $product['price']; ?></p>
                </li>
                <?php } ?>
            </ul>
        </section>
    </section>
</section>
<!--share-->

<?php echo $footer; ?>
