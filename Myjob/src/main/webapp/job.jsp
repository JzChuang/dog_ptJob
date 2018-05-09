<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
    <link href="css/base.css" tppabs="http://xm.taojianz.com/Css/base.css" rel="stylesheet" />
    <link href="css/default.css" tppabs="http://xm.taojianz.com/Css/default.css" rel="stylesheet" />
    <link href="css/update.css" tppabs="http://xm.taojianz.com/Css/update.css" rel="stylesheet" />
<style type="text/css">
.menu {
				height: 60px;
				display: block;
				/*background-image: url(img/topbg.jpg);*/
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
                background: url("images/click_2.gif")/*tpa=http://xm.taojianz.com/images/click_2.gif*//*tpa=http://xm.taojianz.com/images/click_2.gif*/ left center no-repeat;
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
<body>  
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
    <!-- login e -->
    <div class="clear"></div>
    
<html xmlns:wb="http://open.weibo.com/wb">


<div id="page_content" >
    
    
    <!-- search s -->
    <div class="search">
        <em>随时随地淘兼职</em>
        <div class="s_search clearfix">
            <div class="s_s"><input type="text" id="l_input" style="font-size: 12px;" placeholder="请输入感兴趣的兼职工作类型，如派单" onkeydown=SearchKeyDown()> </div>
            <a id="btnSearch" href="javascript:void(0)">搜索</a>
        </div>
    </div>
    <!-- search e -->

    <!-- content s -->
    <div style="margin-left:225px;  class="content b_fbfbfb clearfix" >
        <div class="c_left"  >
            <div class="def-tab" > 
            </div>
            


<div id="def-box">
    <div class="def-box block">
        <!-- 筛选 -->
        <div  class="selectNumberScreen">
            <div class="navigationbar">
                <dl>
                    <dt>
                        <a href="index.htm" tppabs="http://xm.taojianz.com/" title=厦门淘兼职首页>厦门淘兼职首页</a>  &gt; 兼职
                    </dt>
                </dl>
            </div>
            <div class="hasBeenSelected">
                <dl>
                    <dt>兼职要求：</dt>
                    <dd style="margin-left: 10px;" class="clearDd">
                        <div id="clearList" class="clearList">


                        </div>
                    </dd>
                    <div class="gw"><h1 class="gwh1">厦门兼职</h1>共 171 个岗位</div>
                </dl>

            </div>
            <div id="selectList" class="screenBox screenBackground">
                <dl class="listIndex" id="listIndex">
                    <dt>热门岗位：</dt>
                    <dd class="duo">
                        <a rel="paidan" href="job/paidan.htm" tppabs="http://xm.taojianz.com/job/paidan" class="">派单</a>
                        <a rel="cuxiao" href="job/cuxiao.htm" tppabs="http://xm.taojianz.com/job/cuxiao" class="">促销</a>
                        <a rel="liyi" href="job/liyi.htm" tppabs="http://xm.taojianz.com/job/liyi" class="">礼仪</a>
                        <a rel="jiajiao" href="job/jiajiao.htm" tppabs="http://xm.taojianz.com/job/jiajiao" class="">家教</a>
                        <a rel="fuwuyuan" href="job/fuwuyuan.htm" tppabs="http://xm.taojianz.com/job/fuwuyuan" class="">服务员</a>
                        <a rel="huawuyuan" href="job/huawuyuan.htm" tppabs="http://xm.taojianz.com/job/huawuyuan" class="">话务员</a>
                        <a rel="shixi" href="job/shixi.htm" tppabs="http://xm.taojianz.com/job/shixi" class="">刷单</a>
                        <a rel="xiaoshou" href="job/xiaoshou.htm" tppabs="http://xm.taojianz.com/job/xiaoshou" class="">销售</a>
                        <a rel="yingyeyuan" href="job/yingyeyuan.htm" tppabs="http://xm.taojianz.com/job/yingyeyuan" class="">营业员</a>
                        <a rel="qita" href="job/qita.htm" tppabs="http://xm.taojianz.com/job/qita" class="">其他</a>
                    </dd>
                </dl>
            
                <dl class="listIndex noBorder" style="display: block;">
                    <dt>性　　别：</dt>
                    <dd>
                        <a rel="" href="job.htm" tppabs="http://xm.taojianz.com/job" class="selected">不限</a>
                        <a rel="1" href="job/nan.htm" tppabs="http://xm.taojianz.com/job/nan" class="">男</a>
                        <a rel="0" href="job/nv.htm" tppabs="http://xm.taojianz.com/job/nv" class="">女</a>
                    </dd>
                </dl>
                <dl class="listIndex noborder" style="display: block;">
                    <dt>结算周期：</dt>
                    <dd>   
                        <a rel="" href="job.htm" tppabs="http://xm.taojianz.com/job" class="selected">不限</a>
                        <a rel="1" href="job/rijie.htm" tppabs="http://xm.taojianz.com/job/rijie" class="">日结</a>
                        <a rel="2" href="job/zhoujie.htm" tppabs="http://xm.taojianz.com/job/zhoujie" class="">周结</a>
                        <a rel="3" href="job/yuejie.htm" tppabs="http://xm.taojianz.com/job/yuejie" class="">月结</a>
                        <a rel="4" href="job/wangongjiesuan.htm" tppabs="http://xm.taojianz.com/job/wangongjiesuan" class="">完工结算</a>
                    </dd>
                </dl>
            </div>
        </div>
        <!-- 筛选结束 -->
        <div class="detail">
            <ul>
                    <li>
                        <div class="about">

                                <div class="work"><a>刷单</a></div>
                            <div class="d_name">
                                <div class="t">
                                    <a href="job/JobDetail/968848.htm" tppabs="http://xm.taojianz.com/job/JobDetail/968848" target="_blank">刷单打字手机兼职日结无垫付</a>
                                        <b class="hot"></b>
                                                                            <b class="fx"></b>
                                </div>
                                <div class="bq">
                                                                        <span>男女不限</span>
                                                                                                                <span>提成</span>
                                </div>
                            </div>
                            <div class="wd_110 listregion">全国</div>
                            <div class="wd_110">55 元/ 时</div>
                            <div class="wd_110" style="">浏览次数 52</div>
                            <div class="wd_110">2018-03-08</div>
                        </div>
                    </li>
                    
            </ul>
        </div>
       
    </div>
</div>

        </div> 
    </div>
    <!-- content e -->
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