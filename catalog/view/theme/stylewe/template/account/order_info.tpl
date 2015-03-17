<?php echo $header; ?>
<!--main-->
<section class="main">
    <section class="mainWrap main_left_bg clearfix">
        <section class="main_left">
            <h3>My account</h3>
            <ul>
                <li class="active"><a href="http://localhost/opencart/index.php?route=account/order">My orders</a></li>
                <li><a href="http://localhost/opencart/index.php?route=account/address" class="">Shipping address</a></li>
            </ul>
        </section>
        <!--list-->
        <section class="main_right">
            <section class="orders_info">
                <section class="orders_top">
                    <section class="orders_time">
                        Order NO.:<span><?php echo $order_id; ?></span>
                        Time:<span><?php echo $date_added; ?></span>
                    </section>
                    <a href="javascript:;" class="btn_s1">PAY</a>
                </section>
                <h4 class="orders_top2">Order reviews</h4>
                <div class="orders_list">
                    <ul>
                        <?php foreach ($products as $product) { ?>
                        <li>
                            <div class="orders_pic">
                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" width="150" height="225">
                            </div>
                            <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                            <p class="p1">
                                <?php if ($product['option']) { ?>
                                <?php foreach ($product['option'] as $option) { ?>
                                <?php echo $option['name']; ?>:<?php echo $option['value']; ?>
                                <br>
                                <?php } ?>
                                <?php } else { ?>
                                &nbsp;
                                <?php } ?>
                            </p>
                            <p class="p2"><?php echo $product['price']; ?></p>
                            <p class="p3">Qty:<?php echo $product['quantity']; ?></p>
                            <p class="p4"><?php echo $product['total']; ?></p>
                        </li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="order_bottom clearfix">
                    <div class="order_bottom_wrap">
                        <p>Sub Total:<span class="order_price_sub"><?php echo $totals['sub_total']; ?></span></p>
                        <p>Shopping Cost:<span class="order_price_cost"><?php echo $totals['shipping']; ?></span></p>
                        <p>Deduction:<span class="order_price_ded">$0</span></p>
                        <p>Grand Total:<span class="order_price_tot"><?php echo $totals['total']; ?></span></p>
                    </div>
                </div>
                <h4 class="orders_top2">Shopping address</h4>
                <div class="orders_addr">
                    <?php echo $shipping_address; ?>
                </div>
            </section>
        </section>
    </section>
</section>
<?php echo $footer; ?>