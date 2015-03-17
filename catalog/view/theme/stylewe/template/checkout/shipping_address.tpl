<section class="paceOrder_addr clearfix">
    <h4 class="orders_top2">Shipping Address</h4>
    <section class="shopping_addr">
        <ul>
            <?php foreach ($addresses as $address) { ?>
            <li>
                <a href="#boxyAddrEdit<?php echo $address['address_id']; ?>" class="boxy">
                    <h4><?php echo $address['firstname']." ".$address['lastname']; ?></h4>
                    <p>
                        +86 18610389870<br/>
                        <?php echo $address['address_1']; ?><br/>
                        <?php if (strlen($address['address_2']) > 0) { ?>
                        <?php echo $address['address_2']; ?><br/>
                        <?php } ?>
                        <?php echo $address['city']." ,".$address['zone']." ,".$address['country']; ?></p>
                    </p>
                </a>
            </li>
            <?php } ?>
            <li class="btn_shopping_addr">
                <a class="btn_add_addr boxy" href="#boxyAddrAdd">Add a new address</a>
            </li>
        </ul>
    </section>
</section>