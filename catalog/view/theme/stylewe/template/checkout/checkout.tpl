<?php echo $header; ?>
<!--main-->
<section class="main">
    <section class="bg_gay">
        <section class="wid_in">
            <div class="tab_tit clearfix">
                <ul>
                    <li class="">Shopping Bag</li>
                    <li class="active">Place Order</li>
                    <li class="">Pay</li>
                </ul>
            </div>
        </section>
    </section>
    <section class="mainWrap clearfix">
        <?php echo $shipping_address; ?>

        <?php echo $shipping_method; ?>

        <?php echo $payment_method; ?>
        <!--list-->

        <?php echo $confirm; ?>
    </section>
</section>
<?php echo $footer; ?>