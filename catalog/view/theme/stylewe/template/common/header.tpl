<!DOCTYPE html> <html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
    <meta http-equiv="Content-Language" content="<?php echo $lang; ?>" />
    <meta charset="utf-8"/>
    <title><?php echo $title; ?></title>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <meta name="description" content="<?php echo $description; ?>" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="catalog/view/theme/stylewe/style/base.css" type="text/css" />
    <link rel="stylesheet" href="catalog/view/theme/stylewe/style/common.css" type="text/css" />

    <!--[if IE]>
    <script src="catalog/view/theme/stylewe/js/html5.js"></script>
    <![endif]-->
</head>
<body>
<!--top-->
<div class="wrap wrapper">
    <!--nav-->
    <header class="header">
        <section class="headerWrap">
            <section class="headerTop">
                <a href="<?php echo $home; ?>" class="logo"></a>
                <section class="header_ctrl">
                    <section class="header_search icon_search">
                        <i class="icons icon_search"></i><input class="header_search_inp" type="text" />
                    </section>
                    <?php if ($logged) { ?>
                    <a class="btn_r3" href="<?php echo $account; ?>"><?php echo $email; ?></a>
                    <?php } else { ?>
                    <a class="btn_r3 btn_login" href="#colorboxLogin">Login</a>
                    <?php } ?>
                    <a class="icon icon_cart" href="<?php echo $shopping_cart; ?>"><i></i></a>
                </section>
            </section>
            <section class="nav clearfix">
                <ul>
                    <?php foreach ($categories as $category) { ?>
                    <li>
                        <a href="<?php echo $category['href']; ?>" class="nav1"><?php echo $category['name']; ?></a>
                        <?php if ($category['children']) { ?>
                        <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                        <ul>
                            <?php foreach ($children as $child) { ?>
                            <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                            <?php } ?>
                        </ul>
                        <?php } ?>
                        <?php } ?>
                    </li>
                    <?php } ?>
                </ul>
            </section>
        </section>
    </header>
    <!--main-->