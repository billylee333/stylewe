<?php echo $header; ?>
<!--main-->
<section class="main">
    <div class="orders_edit_tit clearfix">
        <ul>
            <li class="orders_edit_tit0"> </li>
        </ul>
    </div>
    <section class="mainWrap clearfix">
        <!--shop detail strat-->
        <!--preview start-->
        <div class="preview">
            <div id="vertical" class="bigImg">
                <?php if ($thumb) { ?>
                <img src="<?php echo $popup; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" id="midimg" />
                <?php } ?>

                <div style="display:none;" id="winSelector"></div>
            </div><!--bigImg end-->
            <div class="smallImg">
                <div class="scrollbutton smallImgUp disabled"></div>
                <div id="imageMenu">
                    <ul>
                        <?php if ($images) { ?>
                        <?php foreach ($images as $image) { ?>
                        <?php if ($image['popup'] == $images[0]['popup']){ ?>
                        <li id="onlickImg"><img src="<?php echo $image['popup']; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>"/></li>
                        <?php } else { ?>
                        <li><img src="<?php echo $image['popup']; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>"/></li>
                        <?php } ?>
                        <?php } ?>
                        <?php } ?>
                    </ul>
                </div>
                <div class="scrollbutton smallImgDown"></div>
            </div><!--smallImg end-->
            <div id="bigView" style="display:none;"><img width="900" height="1200" alt="" src="" /></div>
        </div>
        <!--preview end-->
        <!--info start-->
        <div class="shopInfo sys_item_spec" id="product">
            <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
            <h1><?php echo $heading_title; ?></h1>
            <p class="shopInfo_price"><span class="sys_item_price"><?php echo $price; ?></span></p>
            <p style="display:none;">mktprice:<span class="iteminfo_mktprice">¥<b class="sys_item_mktprice"></b></span></p>
            <!-- options -->
            <?php foreach ($options as $option) { ?>
            <input type="hidden" id="option[<?php echo $option['product_option_id']; ?>]" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
            <?php if ($option['type'] == 'select') { ?>
            <dl class="shopInfo_con sys_item_specpara" data-sid="<?php echo $option['product_option_id']; ?>">
                <dt><?php echo $option['name']; ?>:</dt>
                <dd>
                    <?php if ($option['name'] == 'Color') { ?>
                    <ul class="shopInfo_color">
                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                        <li data-aid="<?php echo $option_value['product_option_value_id']; ?>" name="option[<?php echo $option['product_option_id']; ?>]"><a href="javascript:;"></a></li>
                        <?php } ?>
                    </ul>
                    <?php } else if ($option['name'] == 'Size') { ?>
                    <ul class="shopInfo_size">
                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                        <li data-aid="<?php echo $option_value['product_option_value_id']; ?>" name="option[<?php echo $option['product_option_id']; ?>]"><a href="javascript:;"><?php echo $option_value['name']; ?></a></li>
                        <?php } ?>
                    </ul>
                    <span class="shopInfo_size_txt">Size guide</span>
                    <a href="javascript:;" class="shopInfo_btn_ask"></a>
                    <?php } else { ?>
                    <?php } ?>
                </dd>
            </dl>
            <?php } ?>
            <?php } ?>

            <dl class="shopInfo_con">
                <dt>QTY:</dt>
                <dd>
                    <ul class="shopInfo_qty">
                        <li><a href="javascript:;" class="shopInfo_sub"></a></li>
                        <li><input type="text" class="shopInfo_inp" name="quantity" value="<?php echo $minimum; ?>"/></li>
                        <li><a href="javascript:;" class="shopInfo_add"></a></li>
                    </ul>
                </dd>
            </dl>
            <dl class="shopInfo_con">
                <dd class="shopInfo_btns">
                    <ul>
                        <li><button type="button" class="shopInfo_btn_cart" id="button-cart"/><i></i>Add to Cart</button></li>
                        <li><a href="javascript:;" class="shopInfo_btn_fly"></a></li>
                        <li><a href="javascript:;" class="shopInfo_btn_re"></a></li>
                    </ul>
                </dd>
            </dl>
            <div class="shopInfo_more">
                <div class="shopInfo_more_tab" id="fadetab">
                    <a href="javascript:;" class="active" id="shopInfo_more_tab1">Designer</a>
                    <a href="javascript:;" id="shopInfo_more_tab2">Product detail</a>
                </div>
                <div class="shopInfo_more_con" id="fadecon">
                    <div id="shopInfo_more_con1">
                        <div class="shopInfo_face clearfix">
                            <a href=""><img class="shopInfo_face_pic" src="catalog/view/theme/stylewe/images/img/face2.jpg" /></a>
                            <h4><a href="">Alex wang</a></h4>
                            <p>Dress designer</p>
                        </div>
                        <p class="shopInfo_more_con_txt">I'm responsible for developing and following new samples,
                            adjusting the fitting and giving the revision comment. </p>
                    </div>
                    <div id="shopInfo_more_con2" style="display:none;">
                        <?php echo $description; ?>
                    </div>

                </div>

            </div>
            <div class="sharesSmall">
                <section class="sharesWrap clearfix">
                    <p>Share:</p>
                    <div id="jiathis_buttons">
                        <!-- JiaThis Button BEGIN -->
                        <div class="jiathis_style">
                            <a class="jiathis_button_fb"></a>
                            <a class="jiathis_button_twitter"></a>
                            <a class="jiathis_button_pinterest"></a>
                            <a class="jiathis_button_tumblr"></a>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!--info end-->
        <!--shop detail end-->
    </section>
</section>
<script src="catalog/view/theme/stylewe/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/stylewe/js/shopView.js?v8" type="text/javascript"></script>
<script src="catalog/view/theme/stylewe/js/jquery.tabso.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function($){
        //tabso tab switch layout
        $("#fadetab").tabso({
            cntSelect:"#fadecon",
            tabEvent:"mouseover",
            tabStyle:"fade"
        });
        // quantity add || sub
        $('.shopInfo_add').click(function(){
            var buyNum = parseInt($('.shopInfo_inp').val());
            $('.shopInfo_inp').val(buyNum+1);
            var buyNumNow = parseInt($('.shopInfo_inp').val());
        });
        $('.shopInfo_sub').click(function(){
            var buyNum = parseInt($('.shopInfo_inp').val());
            if(buyNum > <?php echo $minimum; ?>){
                $('.shopInfo_inp').val(buyNum-1);
                var buyNumNow = $('.shopInfo_inp').val();
            }
        });
        $(".sys_item_spec .sys_item_specpara").each(function(){
            var i=$(this);
            var p=i.find("ul>li");
            p.click(function(){
                if($(this).hasClass("active")){
                    $(this).removeClass("active");
                    i.removeAttr("data-attrval");
                }else{
                    $(this).addClass("active").siblings("li").removeClass("active");
                    i.attr("data-attrval",$(this).attr("data-aid"))
                }
                document.getElementById($(this).attr("name")).value = $(this).attr("data-aid");
            })
        });
    });

    $('#button-cart').on('click', function() {
        _num = $('.shopInfo_inp').val();
        //alert("总价：" + _price * _num);

        $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            //data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
            //data: {product_id:50, quantity:1, 'option[228]':20},
            data: $('#product input[type=\'text\'], #product input[type=\'hidden\']'),
            dataType: 'json',
            beforeSend: function() {
                //$('#button-cart').button('loading');
            },
            complete: function() {
                //$('#button-cart').button('reset');
            },
            success: function(json) {
                if (json['error']) {
                    if (json['error']['option']) {
                        for (i in json['error']['option']) {
                            alert(json['error']['option'][i]);
                        }
                    }
                }

                if (json['success']) {
                    alert(json['total']);

                    $('html, body').animate({ scrollTop: 0 }, 'slow');
                }
            }
        });
    });
    //--></script>
<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=2009655" charset="utf-8"></script>
<?php echo $footer; ?>
