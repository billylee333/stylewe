<?php echo $header; ?>
<!--main-->
<section class="main">
    <section class="mainWrap main_left_bg clearfix">
        <section class="main_left">
            <h3>My account</h3>
            <ul>
                <li><a href="<?php echo $link_my_order; ?>">My orders</a></li>
                <li class="active"><a>Shipping address</a></li>
            </ul>
        </section>
        <!--list-->
        <section class="main_right">
            <section class="orders_info">
                <section class="orders_top">
                    Shopping address
                </section>
                <section class="shopping_addr">
                    <ul>
                        <?php foreach ($addresses as $address) { ?>
                        <li>
                            <a href="#<?php echo $address['boxy_id']; ?>" class="boxy">
                                <h4><?php echo $address['result']['firstname']." ".$address['result']['lastname']; ?></h4>
                                <p>
                                    +86 18610389870<br/>
                                    <?php echo $address['result']['address_1']; ?><br/>
                                    <?php if (strlen($address['result']['address_2']) > 0) { ?>
                                    <?php echo $address['result']['address_2']; ?><br/>
                                    <?php } ?>
                                    <?php echo $address['result']['city']." ,".$address['result']['zone']." ,".$address['result']['country']; ?></p>
                                </p>
                            </a>
                        </li>
                        <?php } ?>
                        <li class="btn_shopping_addr">
                            <a class="btn_add_addr boxy" href="#colorboxAddr">Add a new address</a>
                        </li>
                    </ul>
                </section>
            </section>
        </section>
    </section>
</section>


<script src="catalog/view/theme/stylewe/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<?php echo $layer_addr_add; ?>
<?php foreach ($addresses as $address) { ?>
<?php echo $address['layer_addr_edit']; ?>
<?php } ?>

<?php echo $footer; ?>