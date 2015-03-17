<!--Shipping Method-->
<section class="shipping_method clearfix">
    <h4 class="orders_top2">Shipping Method</h4>
    <section class="choose_text">
        <ul>
            <?php foreach ($shipping_methods as $shipping_method) { ?>
            <?php foreach ($shipping_method['quote'] as $quote) { ?>
            <?php if ($quote['code'] == $code || !$code) { ?>
            <?php $code = $quote['code']; ?>
            <li><p class="wid1 active"><?php echo $quote['title']; ?> - <?php echo $quote['text']; ?></p></li>
            <?php } else { ?>
            <li><p class="wid1"><?php echo $quote['title']; ?> - <?php echo $quote['text']; ?></p></li>
            <?php } ?>
            <?php } ?>
            <?php } ?>
        </ul>
    </section>
</section>