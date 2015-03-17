$(document).ready(function(){
	//导航
	$(".nav li").hover(function(){
		$(this).find("ul").filter(':not(:animated)').slideDown("slow");	
	},function(){
		$(this).find("ul").slideUp("fast");	
	});
	
	//表单美化
	$(".select,.inp").uniform();
	
	//新弹层-添加地址
	$(".btn_add_addr").colorbox({inline:true,overlayClose:false,transition:"none"});	
	//新弹层-登录
	$(".btn_login").colorbox({inline:true,overlayClose:false,transition:"none"});	
	//新弹层-注册
	$(".btn_reg").colorbox({inline:true,overlayClose:false,transition:"none"});
	
})