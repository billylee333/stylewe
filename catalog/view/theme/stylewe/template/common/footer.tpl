<!--share-->
<section class="shares bg1">
    <section class="sharesWrap clearfix">
        <p>CONNECT  WITH chicv:</p>
        <div id="jiathis_buttons">
            <!-- JiaThis Button BEGIN -->
            <div class="jiathis_style">
                <a title="Facebook" class="jiathis_button_fb" href="#"><span class="jiathis_txt jtico jtico_fb"></span></a>
                <a title="Twitter" class="jiathis_button_twitter" href="#"><span class="jiathis_txt jtico jtico_twitter"></span></a>
                <a title="Pinterest" class="jiathis_button_pinterest" href="#"><span class="jiathis_txt jtico jtico_pinterest"></span></a>
                <a title="Tumblr" class="jiathis_button_tumblr" href="#"><span class="jiathis_txt jtico jtico_tumblr"></span></a>
            </div>

        </div>
    </section>
</section>
<!--footer-->
<footer class="footer bg2 clearfix">
    <section class="footWrap">
        <dl class="foot1">
            <dt>SERVICE</dt>
            <dd>
                <a href="/m-article-id-16.htm">Feedback</a>
                <a href="/m-article-id-29.htm">Contact Us</a>
            </dd>
        </dl>
        <dl class="foot2">
            <dt>POLICY</dt>
            <dd>
                <a href="/m-article-id-16.htm">Return Policy</a>
                <a href="/m-article-id-29.htm">Terms and Conditions</a>
                <a href="/m-article-id-29.htm">Privacy Policy</a>
            </dd>
        </dl>
        <dl class="foot3">
            <dt>Other Business</dt>
            <dd>
                <a href="/m-article-id-16.htm">Affiliate Program</a>
                <a href="/m-article-id-29.htm">Buyer`s Show</a>
                <a href="/m-article-id-29.htm">i-Try Blogger</a>
            </dd>
        </dl>
        <dl class="footer_offers">
            <dt>Get special offers</dt>
            <dd>
                <textarea class="offers_textarea"></textarea>
                <button class="btn_r2" type="button">sign up</button>
            </dd>
        </dl>
    </section>
</footer>
<section class="footer_logo bg2 bor_t">
    <a href="<?php echo $home; ?>" class="logo"></a>
</section>
</div>

<!--layer start-->
<div style="display:none;">
    <section id="colorboxLogin" class="boxyLayer">
        <section class="boxyLayer_wrap">
            <section class="boxyLayer_top">
                <a class="logo" href="/"></a>
            </section>
            <section class="boxyLayer_btns">
                <a class="btn_facebook" href="javascript:;">Login with Facebook</a>
            </section>
            <section class="line_txt"><p>or Use your email address</p></section>
            <section class="boxyLayer_form">
                <form action="<?php echo $login; ?>" method="post" enctype="multipart/form-data">
                <dl>
                    <dt>Email Address</dt>
                    <dd><input class="inp" type="text" id="input-email" placeholder="E-Mail Address" value="" name="email"></dd>
                    <dt>Password</dt>
                    <dd><input class="inp" type="password" id="input-password" placeholder="Password" value="" name="password"></dd>
                    <dt><input type="submit" class="btn_r6 wid260" value="Login in"></dt>
                    <dd><a class="a_gay" href="<?php echo $forgotten; ?>">Forgot password?</a></dd>
                </dl>
                </form>
            </section>
        </section>
        <p class="note">Don`t have an account? <a href="#colorboxReg" class="a_red btn_reg">Why not join today?</a></p>
    </section>

    <!--reg-->
    <section id="colorboxReg" class="boxyLayer">
        <section class="boxyLayer_wrap">
            <section class="boxyLayer_top">
                <a class="logo" href="/"></a>
            </section>
            <section class="boxyLayer_btns">
                <a class="btn_facebook" href="javascript:;">Register with Facebook</a>
            </section>
            <section class="line_txt"><p>or Use your email address</p></section>
            <section class="boxyLayer_form">
                <form action="<?php echo $register; ?>" method="post" enctype="multipart/form-data">
                <dl>
                    <dt>Email Address</dt>
                    <dd><input type="email" class="inp" id="input-email" placeholder="E-Mail" value="" name="email"></dd>
                    <dt>Password</dt>
                    <dd><input type="password" class="inp" id="input-password" placeholder="Password" value="" name="password"></dd>
                    <dt><input type="submit" class="btn_r6 wid260" value="Register in"></dt>
                    <dd><input class="radio0" type="radio"> I agree to chicv.com Terms and Conditions</dd>
                </dl>
                </form>
            </section>
        </section>
        <p class="note">Have a  account? <a href="#colorboxLogin" class="btn_login">Login in</a></p>
    </section>
</div>
<!--layer end-->

<script src="catalog/view/theme/stylewe/js/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/stylewe/js/jquery.uniform.min.js" type="text/javascript" charset="utf-8"></script>
<script src="catalog/view/theme/stylewe/js/jquery.colorbox-min.js"></script>
<script src="catalog/view/theme/stylewe/js/base.js?v8" type="text/javascript"></script>
<script src="catalog/view/theme/stylewe/js/page_placeOrder.js" type="text/javascript"></script>

<script type="text/javascript" src="catalog/view/theme/stylewe/js/jquery.flexslider-min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('.focusRow').flexslider({
            animation: "slide",
            slideshow: true,/*auto play*/
            slideshowSpeed: 3000,
            controlNav: true,
            pauseOnHover: true,
            directionNav: true,
            pauseOnAction: false
        });
    });
</script>

</body>
</html>