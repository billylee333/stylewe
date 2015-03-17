<?php echo $header; ?>
<!--main-->
<section class="main">
    <div class="orders_edit_tit clearfix">
        <ul>
            <li class="orders_edit_tit0" href="<?php echo $breadcrumbs[count($breadcrumbs) - 1]['href']; ?>"><?php echo $breadcrumbs[count($breadcrumbs) - 1]['text']; ?></li>
        </ul>
    </div>
    <section class="mainWrap clearfix">
        <!--find password-->
        <section class="findPwl">
            <h4 class="txt_tit1">Reset your password</h4>
            <p class="txt_con1">Just type in your email address below and we`ll send you an email with instructions on how to create a new one. </p>
            <section class="edit_form">
                <dl>
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                    <dt>Email address:</dt>
                    <dd><input type="email" name="email" value="" id="input-email" class="inp2 wid300" /></dd>
                    <dt></dt>
                    <dd><input type="submit" value="SEND RESET LINK" class="btn_r6 wid200"></dd>
                    </form>
                </dl>
            </section>
        </section>
    </section>
</section>
<?php echo $footer; ?>