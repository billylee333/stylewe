<?php echo $header; ?>
<!--main-->
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
<section class="main">
    <div class="orders_edit_tit clearfix">
        <ul>
            <li class="orders_edit_tit1">Iteams info</li>
            <li class="orders_edit_tit2">Unit price</li>
            <li class="orders_edit_tit3">Qty</li>
            <li class="orders_edit_tit4">Sum</li>
            <li class="orders_edit_tit5">Edit</li>
        </ul>
    </div>
    <section class="mainWrap clearfix">
        <!--list-->
        <div class="orders_edit">
            <ul>
                <?php foreach ($products as $product) { ?>
                <li>
                    <div class="orders_radio"><a class="radio1" href="#"></a></div>
                    <div class="orders_edit_pic">
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
                    <p class="p3"><span class="qty_sub">-</span> <input type="text" class="qty_val" value="<?php echo $product['quantity']; ?>"> <span class="qty_add">+</span></p>
                    <p class="p4"><?php echo $product['total']; ?></p>
                    <p class="p5"><a onclick="cart.remove('<?php echo $product['key']; ?>');" title="Remove" class="icon icon_del"><i></i></a></p>
                </li>
                <?php } ?>
            </ul>
        </div>

        <div class="order_edit_bottom c_gay clearfix">
            <p>Subtotal before Delivery Charges<span class="order_price_sub"><?php echo $totals['Sub-Total']; ?></span></p>
            <p>Grand Total:<span class="order_price_tot2"><?php echo $totals['Total']; ?></span></p>

            <dl class="promotion">
                <dt>Promotion Code:</dt>
                <dd>
                    <textarea class="promotion_textarea"></textarea>
                    <button type="button" class="btn_r4">Apply</button>
                </dd>
            </dl>

            <div class="order_edit_btn">
                <button type="button" class="btn_r5 fontBold" onclick="location='<?php echo $link_pay_express; ?>'">Check out with PayPal</button>
                <span class="btn_space">or</span>
                <button type="button" class="btn_r4 fontBold" onclick="location='<?php echo $checkout; ?>'">CHECE OUT</button>
            </div>
        </div>
    </section>
</section>
</form>
<script src="catalog/view/theme/stylewe/js/cart.js" type="text/javascript"></script>
<?php echo $footer; ?> 