<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title></title>
    <link href="/Images/ico.ico" rel="Shortcut Icon">
    <link href="css/base.css" tppabs="http://www.taojianz.com/Css/base.css" rel="stylesheet" />
    
    <link href="css/person.css" tppabs="http://www.taojianz.com/Css/person.css" rel="stylesheet" />
    
          
    <meta name="baidu-site-verification" content="bulPVmuxCJ" />
    <style>
        .add_content .add_xq ul li p a {
            font-weight: normal;
        }
    </style>
 
<style type="text/css">
	.menu {
				background-color:rgb(48,58,64);
				height: 80px;
				padding-top:10px;
				display: block;
			}
			
			.menu ul {
				list-style: none;
				padding: 0;
			}
			
			.menu ul li {
				float: left;
				/* 閼挎粌宕熺�鎰帗缁辩姷娈戦崘鍛啇鐡掑懎鍤稉宥呭讲鐟欙拷*/
				overflow: hidden;
				position: relative;
				text-align: center;
				line-height: 45px;
				color: rgb(204, 204, 204);
			}
			
			.menu ul li a {
				/* 韫囧懘銆忛弰顖滄祲鐎电懓鐣炬担锟�*/
				margin-top: 10px;
				position: relative;
				display: block;
				width: 110px;
				height: 45px;
				font-family: Arial;
				font-size: 16px;
				font-weight: bold;
				letter-spacing: 1px;
				text-transform: uppercase;
				text-decoration: none;
				cursor: pointer;
			}
			
			.menu ul li a span {
				/* 閹碉拷婀佺仦鍌氱殺娴ｈ法鏁ょ紒婵嗩嚠鐎规矮缍�*/
				position: absolute;
				left: 0;
				width: 110px;
			}
			
			.menu ul li a span.out {
				top: 0px;
			}
			
			.menu ul li a span.over,
			.menu ul li a span.bg {
				/* 鐠у嘲鍨�over鐏炲倸鎷�bg鐏炲倻娴夌�绛ч崗鍐-45px娴犮儴鎻崚浼存閽橈拷*/
				top: -45px;
			}
			/** 鐎瑰本鏆ｉ悧鍫€仛娓氾拷**/
			
			#menu {
				//background: url(img/bg_menu.gif) scroll 0 -1px repeat-x;
				//border: 1px solid #CCC;
				//background-color: rgb(106,192,189);
			}
			
			#menu ul li a {
				color: rgb(204, 204, 204);
			}
			
			#menu ul li a span.over {
				color: #FFF;
			}
			
			#menu ul li span.bg {
				height: 45px;
				background: url(img/bg_over.gif) center center no-repeat;
			}
        .screenBox dl dd {
            padding-right: 0px;
            width: 780px;
        } 
            .screenBox dl dd.duo {
                padding-bottom: 0px;
            }

            .screenBox dl dd a.selected {
                color: #FF7800;
            }

            .screenBox dl dd.duo a.selected {
                background: url("images/click_2.gif")/*tpa=http://www.taojianz.com/images/click_2.gif*//*tpa=http://www.taojianz.com/images/click_2.gif*/ left center no-repeat;
                color: #FF7800;
            }

        .search .s_search input {
            padding-left: 20px;
        }

        .search .s_search .s_s .labe {
            color: #ccc;
        }

        .detail ul li {
            padding-left: 15px;
        }

        .d_page a {
            height: 20px;
        }

        .hb img {
            width: 60px;
            height: 60px;
            cursor: pointer;
        }
        .bd_weixin_popup_bg {
            position: absolute;
            left: -400px;
            top: -400px;
            width: 260px;
            height: 320px;
            border: 0;
            padding: 0;
            margin: 0;
            opacity: 0;
            filter: alpha(opacity=0);
            z-index: 11000;
        }

        .bd_weixin_popup {
            position: absolute;
            left: -400px;
            top: -400px;
            padding: 10px;
            width: 240px;
            height: 300px;
            background: #fff;
            border: solid 1px #d8d8d8;
            z-index: 11001;
            font-size: 12px;
        }

            .bd_weixin_popup .bd_weixin_popup_head {
                font-size: 12px;
                font-weight: bold;
                text-align: left;
                line-height: 16px;
                height: 16px;
                position: relative;
                color: #000;
            }
              .bd_weixin_popup .bd_weixin_popup_head .bd_weixin_popup_close {
                    width: 16px;
                    height: 16px;
                    position: absolute;
                    right: 0;
                    top: 0;
                    color: #999;
                    text-decoration: none;
                    font-size: 16px;
                }

                    .bd_weixin_popup .bd_weixin_popup_head .bd_weixin_popup_close:hover {
                        text-decoration: none;
                    }

            .bd_weixin_popup .bd_weixin_popup_main {
                padding: 15px 10px;
                min-height: 150px;
                _height: 150px;
                margin-left:8px;
            }

            .bd_weixin_popup .bd_weixin_popup_foot {
                font-size: 12px;
                text-align: left;
                line-height: 22px;
                color: #666;
            }

    </style>

</head>
<body >
    
    	<div id="menu" class="menu">
			<ul>
				<li><img src="img/logo.png" width="300px" /></li>
				<li>
					<a href="1.html" target="message">首页</a>
				</li>
				<li>
					<a href="javascript:;">热门职位</a>
				</li>
				<li>
					<a href="javascript:;">发布兼职</a>
				</li>
				<li>
					<a href="javascript:;">联系我们</a>
				</li>
				<li>
					<a href="javascript:;">设置</a>
				</li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li>
					<a href="login.html" target="message">登录</a>
				</li>
				<li><span id="|">|</span></li>
				<li>
					<a  id="register" >注册</a>
					<!--<input type="button" id="register" value="注册" />-->
				</li>
			</ul>
		</div>
    
  
    
<html xmlns:wb="http://open.weibo.com/wb">
<div id="page_content" >
<div class="content clearfix">
    <div class="add_content">
    
    </div>
    <div class="add_content">
        <div class="add_sf" style="border:none">
            <b>热门城市：</b><p>
                <a class="btnTopCity" href="">宁波</a>
                <a class="btnTopCity" href="">上海</a>
                <a class="btnTopCity" href="">杭州</a>
                <a class="btnTopCity" href="">广州</a>
            </p>
        </div>
    </div>
    <div class="add_content">
        <div class="add_azm">按拼音首字母选择</div>
        <div class="add_xq">
            <ul>

                    <li>
                        <b>A</b>
                        <p>
                                <a class="btnTopCity" href="">鞍山</a>
                                <a class="btnTopCity" href="">安康</a>
                        </p>
                    </li>
                    <li>
                        <b>B</b>
                        <p>
                                <a class="btnTopCity" href="index.jsp?city=北京">北京</a>
                                <a class="btnTopCity" href="index.jsp?city=保定">保定</a>
                                <a class="btnTopCity" href="">宝鸡</a>
                                <a class="btnTopCity" href="">包头</a>
                        </p>
                    </li>
                    <li>
                        <b>C</b>
                        <p>
                                <a class="btnTopCity" href="">重庆</a>
                                <a class="btnTopCity" href="">沧州</a>
                                <a class="btnTopCity" href="">长春</a>
                                <a class="btnTopCity" href="">常州</a>
                                <a class="btnTopCity" href="">长沙</a>
                                <a class="btnTopCity">常德</a>
                                <a class="btnTopCity">成都</a>
                        </p>
                    </li>
                    <li>
                        <b>D</b>
                        <p>
                                <a class="btnTopCity" href="">大连</a>
                                <a class="btnTopCity" href="">大庆</a>
                                <a class="btnTopCity" href="">东营</a>
                                <a class="btnTopCity" href="">德州</a>
                                <a class="btnTopCity" href="">东莞</a>
                        </p>
                    </li>
                    <li>
                        <b>F</b>
                        <p>
                                <a class="btnTopCity" href="">福州</a>
                                <a class="btnTopCity" href="">佛山</a>
                        </p>
                    </li>
                    <li>
                        <b>G</b>
                        <p>
                                <a class="btnTopCity" href="">广州</a>
                                <a class="btnTopCity" href="">贵阳</a>
                                <a class="btnTopCity" href="">桂林</a>
                        </p>
                    </li>
                    <li>
                        <b>H</b>
                        <p>
                                <a class="btnTopCity" href="">杭州</a>
                                <a class="btnTopCity" href="">湖州</a>
                                <a class="btnTopCity" href="">邯郸</a>
                                <a class="btnTopCity" href="">哈尔滨</a>
                                <a class="btnTopCity" href="">淮安</a>
                                <a class="btnTopCity" href="">合肥</a>
                                <a class="btnTopCity" href="">惠州</a>
                                <a class="btnTopCity" href="">海口</a>
                                <a class="btnTopCity" href="">呼和浩特</a>
                        </p>
                    </li>
                    <li>
                        <b>J</b>
                        <p>
                                <a class="btnTopCity" href="">嘉兴</a>
                                <a class="btnTopCity" href="">金华</a>
                                <a class="btnTopCity" href="">吉林</a>
                                <a class="btnTopCity" href="">济南</a>
                                <a class="btnTopCity" href="">济宁</a>
                        </p>
                    </li>
                    <li>
                        <b>K</b>
                        <p>
                                <a class="btnTopCity" href="">昆明</a>
                        </p>
                    </li>
                    <li>
                        <b>L</b>
                        <p>
                                <a class="btnTopCity" href="">丽水</a>
                                <a class="btnTopCity" href="">廊坊</a>
                                <a class="btnTopCity" href="">临沂</a>
                                <a class="btnTopCity" href="">洛阳</a>
                                <a class="btnTopCity" href="">兰州</a>
                                <a class="btnTopCity" href="">柳州</a>
                        </p>
                    </li>
                    <li>
                        <b>M</b>
                        <p>
                                <a class="btnTopCity" href="">绵阳</a>
                        </p>
                    </li>
                    <li>
                        <b>N</b>
                        <p>
                                <a class="btnTopCity" href="">宁波</a>
                                <a class="btnTopCity" href="">南昌</a>
                                <a class="btnTopCity" href="">南京</a>
                                <a class="btnTopCity" href="">南通</a>
                                <a class="btnTopCity" href="">南阳</a>
                                <a class="btnTopCity" href="">南宁</a>
                        </p>
                    </li>
                    <li>
                        <b>Q</b>
                        <p>
                                <a class="btnTopCity" href="">衢州</a>
                                <a class="btnTopCity" href="">泉州</a>
                                <a class="btnTopCity" href="">青岛</a>
                                <a class="btnTopCity" href="">威海</a>
                        </p>
                    </li>
                    <li>
                        <b>S</b>
                        <p>
                                <a class="btnTopCity" href="">绍兴</a>
                                <a class="btnTopCity" href="">上海</a>
                                <a class="btnTopCity" href="">石家庄</a>
                                <a class="btnTopCity" href="">沈阳</a>
                                <a class="btnTopCity" href="">苏州</a>
                                <a class="btnTopCity" href="">深圳</a>
                        </p>
                    </li>
                    <li>
                        <b>T</b>
                        <p>
                                <a class="btnTopCity" href="">台州</a>
                                <a class="btnTopCity" href="">天津</a>
                                <a class="btnTopCity" href="">唐山</a>
                                <a class="btnTopCity" href="">太原</a>
                                <a class="btnTopCity" href="">泰安</a>
                        </p>
                    </li>
                    <li>
                        <b>W</b>
                        <p>
                                <a class="btnTopCity" href="">温州</a>
                                <a class="btnTopCity" href="">芜湖</a>
                                <a class="btnTopCity" href=""  >无锡</a>
                                <a class="btnTopCity" href="" >潍坊</a>
                                <a class="btnTopCity" href="" >武汉</a>
                                <a class="btnTopCity" href="" >乌鲁木齐</a>
                        </p>
                    </li>
                    <li>
                        <b>X</b>
                        <p>
                                <a class="btnTopCity" href="">徐州</a>
                                <a class="btnTopCity" href="">厦门</a>
                                <a class="btnTopCity" href="">西安</a>
                                <a class="btnTopCity" href="">西宁</a>
                        </p>
                    </li>
                    <li>
                        <b>Y</b>
                        <p>
                                <a class="btnTopCity" href="">盐城</a>
                                <a class="btnTopCity" href="">扬州</a>
                                <a class="btnTopCity" href="">烟台</a>
                                <a class="btnTopCity" href="">岳阳</a>
                                <a class="btnTopCity" href="">银川</a>
                        </p>
                    </li>
                    <li>
                        <b>Z</b>
                        <p>
                                <a class="btnTopCity" href="">舟山</a>
                                <a class="btnTopCity" href="">镇江</a>
                                <a class="btnTopCity" href="">淄博</a>
                                <a class="btnTopCity" href="">郑州</a>
                                <a class="btnTopCity" href="">珠海</a>
                                <a class="btnTopCity" href="">中山</a>
                        </p>
                    </li>
            </ul>
        </div>
    </div>
</div>



        </div>  
    </div>
    <!-- content e -->
</div>
<div class="footer" >
    <div class="content clearfix">
        <div class="clear"></div>
       
        <div class="clear"></div>
        <div class="add1">汪兼职兼职提供学生兼职、传单派发、周末兼职、现场活动、商场促销等兼职招聘信息</div>
        <div class="add1">莆田学院   创新142贾自闯  版权所有 丨 </div>
    </div>
</div> 
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript">
			$(document).ready(function() {
				/* 	完整版示例	*/
				// 把每个a中的内容包含到一个层（span.out）中，在span.out层后面追加背景图层（span.bg）
				$("#menu li a").wrapInner('<span class="out"></span>').append('<span class="bg"></span>');
				// 循环为菜单的a每个添加一个层（span.over）
				$("#menu li a").each(function() {
					$('<span class="over">' + $(this).text() + '</span>').appendTo(this);
				});
				$("#menu li a").hover(function() {
					// 鼠标经过时候被触发的函数
					$(".out", this).stop().animate({
						'top': '45px'
					}, 250); // 向下滑动 - 隐藏
					$(".over", this).stop().animate({
						'top': '0px'
					}, 250); // 向下滑动 - 显示
					$(".bg", this).stop().animate({
						'top': '0px'
					}, 120); // 向下滑动 - 显示
				}, function() {
					// 鼠标移出时候被触发的函数
					$(".out", this).stop().animate({
						'top': '0px'
					}, 250); // 向上滑动 - 显示
					$(".over", this).stop().animate({
						'top': '-45px'
					}, 250); // 向上滑动 - 隐藏
					$(".bg").stop().animate({
						'top': '-45px'
					}, 120); // 向上滑动 - 隐藏
				});

			})
		</script>
</body>
</html>
