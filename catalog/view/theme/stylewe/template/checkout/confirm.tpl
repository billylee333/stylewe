<section class="orders_info">
    <h4 class="orders_top2">Order reviews</h4>
    <div class="orders_list">
        <ul>
            <?php foreach ($products as $product) { ?>
            <li>
                <div class="orders_pic"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" width="150" height="225"></div>
                <h4 href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></h4>
                <p class="p1">
                    <?php foreach ($product['option'] as $option) { ?>
                    <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                    <br />
                    <?php } ?>
                    &nbsp;
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
            <p>Sub Total:<span class="order_price_sub"><?php echo $totals['Sub-Total']; ?></span></p>
            <p>Shopping Cost:<span class="order_price_cost"><?php echo $totals[$shipping_method]; ?></span></p>
            <p>Deduction:<span class="order_price_ded">$0</span></p>
            <p>Grand Total:<span class="order_price_tot"><?php echo $totals['Total']; ?></span></p>
            <dl class="promotion">
                <dt><input class="radio2" type="radio" /> Promotion Code</dt>
                <dt><input class="radio2" type="radio" /> remark</dt>
            </dl>
        </div>
        <div class="order_edit_btn">
            <button type="button" class="btn_r4 wid300 fontBold" onclick="location='<?php echo $link_pay; ?>'">PAY</button>
        </div>
    </div>
</section>