<!--add address layer-->
<div style="display:none;">
    <!--add address-->
    <section id="<?php echo $boxy_id; ?>" class="boxyLayer">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <section class="boxyLayer_wrap">
            <section class="boxyLayer_top">
                <h4 class="boxyLayer_top_tit">Shopping infomation</h4>
            </section>
            <section class="boxyLayer_form">
                <dl class="form_edit2">
                    <dt>First name:</dt>
                    <dd><input type="text" class="inp" id="input-firstname" placeholder="First Name" value="<?php echo $firstname; ?>" name="firstname"></dd>
                </dl>
                <dl class="form_edit2 mar_l">
                    <dt>Last name:</dt>
                    <dd><input type="text" class="inp" id="input-lastname" placeholder="Last Name" value="<?php echo $lastname; ?>" name="lastname"></dd>
                </dl>
                <dl class="form_edit1">
                    <dt>Address Line 1:</dt>
                    <dd><input type="text" class="inp" id="input-address-1" placeholder="Address 1" value="<?php echo $address_1; ?>" name="address_1"></dd>
                </dl>
                <dl class="form_edit1">
                    <dt>Address Line 2:</dt>
                    <dd><input type="text" class="inp" id="input-address-2" placeholder="Address 2" value="<?php echo $address_2; ?>" name="address_2"></dd>
                </dl>
                <dl class="form_edit2">
                    <dt>Country:</dt>
                    <dd>
                        <select name="country_id" id="input-country" class="select" onchange='OnChangeCountry();'>
                            <option value=""><?php echo $text_select; ?></option>
                            <?php foreach ($countries as $country) { ?>
                            <?php if ($country['country_id'] == $country_id) { ?>
                            <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                            <?php } else { ?>
                            <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
                    </dd>
                </dl>
                <dl class="form_edit2 mar_l">
                    <dt>State/Province/Region:</dt>
                    <dd><select name="zone_id" id="input-zone" class="select"></select></dd>
                </dl>
                <dl class="form_edit2">
                    <dt>City:</dt>
                    <dd><input type="text" class="inp" id="input-city" placeholder="City" value="<?php echo $city; ?>" name="city"></dd>
                </dl>
                <dl class="form_edit2 mar_l">
                    <dt>Phone Number:</dt>
                    <dd><input type="text" class="inp" id="input-phone" placeholder="Phone" value="1234567" name="phone"></dd>
                </dl>

                <dl class="form_btns">
                    <dd><input type="submit" class="btn_r6 wid200" value="Submit"><input type="submit" class="btn_r7 wid200 modalClose" value="Cancel"></dd>
                </dl>
            </section>
        </section>
        </form>
    </section>
</div>

<!--layer end-->
<script type="text/javascript">
    <!--
    function OnChangeCountry() {
        var value = document.getElementById('input-country').value;
        $.ajax({
            url: 'index.php?route=account/account/country&country_id=' + value,
            dataType: 'json',
            beforeSend: function () {

            },
            complete: function () {

            },
            success: function (json) {

                html = '<option value=""><?php echo $text_select; ?></option>';

                if (json['zone'] != '') {
                    for (i = 0; i < json['zone'].length; i++) {
                        html += '<option value="' + json['zone'][i]['zone_id'] + '"';

                        /*
                         if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                         html += ' selected="selected"';
                         }
                         */

                        html += '>' + json['zone'][i]['name'] + '</option>';
                    }
                } else {
                    html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
                }

                $('select[name=\'zone_id\']').html(html);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    }
    OnChangeCountry();

    //-->
</script>
