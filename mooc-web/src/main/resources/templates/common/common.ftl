<#macro headerNow>
    <head>
        <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=0, shrink-to-fit=no">
        <link rel="stylesheet" href="/common/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="/common/fonts/iconfont.css"/>
        <link rel="stylesheet" href="/common/css/owl.carousel.min.css"/>
        <link rel="stylesheet" href="/common/css/css.css"/>
        <link rel="stylesheet" href="/common/css/toastr.css"/>
        <title>Cspiration 留学两年多刷题过三千，教你刷题不再困难；全美唯一Java版本Leetcode视频讲解</title>
    </head>
</#macro>

<#macro header>
<html lang="en-US">
<head>
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,700' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="/static/assets/fonts/font-awesome.css"  type="text/css">
    <link rel="stylesheet" href="/static/assets/bootstrap/css/bootstrap.css" type="text/css">
    <link rel="stylesheet" href="/static/assets/css/bootstrap-select.min.css" type="text/css">
    <link rel="stylesheet" href="/static/assets/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/static/assets/css/jquery.slider.min.css" type="text/css">
    <link rel="stylesheet" href="/static/assets/css/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="/static/assets/css/style.css" type="text/css">
    <link rel="stylesheet" href="/static/assets/css/owl.transitions.css" type="text/css">
    <link rel="stylesheet" href="/static/assets/css/fileinput.min.css" type="text/css">
    <link rel="stylesheet" href="/static/assets/css/learn.css" type="text/css">
    <link rel="stylesheet" href="/static/assets/css/comment.css" type="text/css">
    <link rel="stylesheet" href="/static/frontByMe/css/frontStyle.css" type="text/css">
    <link rel="stylesheet" href="/static/assets/css/toastr.css" type="text/css">

    <title>Cspiration 留学两年多刷题过三千，教你刷题不再困难；全美唯一Java版本Leetcode视频讲解</title>

</head>
</#macro>

<#macro navNow>
    <header class="site-header">
        <nav class="navbar navbar-expand flex-md-row site-navbar">
            <div class="container">
                <a class="navbar-brand mr-0 mr-md-5" href="/" aria-label="Bootstrap"></a>
                <div class="navbar-nav-scroll">
                    <ul class="navbar-nav bd-navbar-nav flex-row">
                        <li class="nav-item">
                            <a class="nav-link " href="/">首页</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="##">刷题班</a>
                            <div class="dropdown-menu dropdown-menu-left" aria-labelledby="bd-versions">
                                <a class="dropdown-item" href="/leetCodeCourse">LeetCode面试刷题班</a>
                                <a class="dropdown-item" href="/crashCourse">短期算法速成班</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="##">旗舰班</a>
                            <div class="dropdown-menu dropdown-menu-left" aria-labelledby="bd-versions">
                                <a class="dropdown-item" href="/course-diff">课程对比</a>
                                <a class="dropdown-item" href="/sprintCourse">北美留学SDE求职班</a>
                                <a class="dropdown-item" href="/jobCourse">北美在职SDE跳槽班</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="/leetcodeClassification">LC分类顺序表</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="/story">创始人故事</a>
                        </li>
                        <#if (loginUser.username)??>
                            <li class="nav-item dropdown nav-ucenter">
                                <a href="" class="nav-link ">
                                    <span class="nav-bell"></span>
                                </a>
                                <a class="nav-link" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="##">
                                    <span class="uc-text">个人主页</span>
                                    <img src="/common/images/ren.jpg" class="uc-avatar" alt="" />
                                </a>
                                <div class="dropdown-menu dropdown-menu-left" aria-labelledby="bd-versions">
                                    <div class="ucenter-box">
                                        <a href="/accounts/profile">
                                            <img src="/common/images/ren.jpg" alt="" />
                                            <span class="u-name">  ${loginUser.username}</span>
                                        </a>
                                    </div>
                                    <ul class="menu-list">
                                        <li>
                                            <a href="/accounts/myCourse" class="menu-box">
                                                <img src="/common/images/s2.png" alt="" />
                                                <p>我的课程</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/accounts/myOrder" class="menu-box">
                                                <img src="/common/images/s7.png" alt="" />
                                                <p>我的订单</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/accounts/profile" class="menu-box">
                                                <img src="/common/images/set.png" alt="" />
                                                <p>个人设置</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/accounts/identification" class="menu-box">
                                                <img src="/common/images/ident.png" alt="" />
                                                <p>实名认证</p>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="menu-footer">
                                        <a href="/logout" class="btn btn-danger">退出登陆</a>
                                    </div>
                                </div>
                            </li>
                        <#else>
                            <li class="nav-item nav-form-item">
                                <a class="nav-link" href="/login">登录</a>/
                                <a class="nav-link" href="/register">注册</a>
                            </li>
                        </#if>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
</#macro>

<#macro footerNow>
    <footer class="footer">
        <div class="container">
            <div class="row foot-row">
                <div class="col col-info">
                    <div class="end-logo">
                        <img src="/common/images/CSON.png" width="214px" height="70px" alt="" />
                    </div>
                    <div class="end-link">
                        <h4>CSPIRATION</h4>
                        <p><a href="/legal/privacy">隐私政策</a></p>
                        <p><a href="/legal/user-agreement">用户协议</a></p>
                        <p><a href="/legal/copyright">版权保护</a></p>
                        <p><a href="/legal/security">网站安全</a></p>
                        <p><a href="/legal/referral">内推人计划</a></p>
                    </div>
                    <div class="end-text">
                        <h4>联系我们</h4>
                        <p>Emaill:<br />admin@cspiration.com</p>
                    </div>
                </div>
                <div class="col-6">
                    <ul class="wx-list list-unstyled">
                        <li>
                            <img src="/common/images/小助手.png" height="150px" width="150px" alt="" />
                            <p>-北美CS刷题求职群-<br /><span>实习全职百人大群</span></p>
                        </li>
                        <li>
                            <img src="/common/images/Cspiration服务号.jpg" alt="" />
                            <p>-Cspiration官方公众号-<br /><span>每周第一手求职信息</span></p>
                        </li>
                    </ul>
                </div>
            </div>
            <#--<div class="copyright">-->
            <#--版权所有2002-2019 © 上方网 京ICP证:041414号 电子公告许可 北京市公安局海淀分局备案编号：1101081831-->
            <#--</div>-->
        </div>
    </footer>
</#macro>

<#macro js>
    <script type="text/javascript" src="/static/assets/js/jquery-2.1.0.min.js"></script>
    <script type="text/javascript" src="/static/assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="/static/assets/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/static/assets/js/smoothscroll.js"></script>
    <script type="text/javascript" src="/static/assets/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="/static/assets/js/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="/static/assets/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/static/assets/js/jquery.placeholder.js"></script>
    <script type="text/javascript" src="/static/assets/js/icheck.min.js"></script>
    <script type="text/javascript" src="/static/assets/js/jquery.vanillabox-0.1.5.min.js"></script>
    <script type="text/javascript" src="/static/assets/js/jquery.raty.min.js"></script>
    <script type="text/javascript" src="/static/assets/js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="/static/assets/js/jshashtable-2.1_src.js"></script>
    <script type="text/javascript" src="/static/assets/js/jquery.numberformatter-1.2.3.js"></script>
    <script type="text/javascript" src="/static/assets/js/tmpl.js"></script>
    <script type="text/javascript" src="/static/assets/js/jquery.dependClass-0.1.js"></script>
    <script type="text/javascript" src="/static/assets/js/draggable-0.1.js"></script>
    <script type="text/javascript" src="/static/assets/js/jquery.slider.js"></script>
    <script type="text/javascript" src="/static/assets/js/jquery.fitvids.js"></script>
    <script type="text/javascript" src="/static/assets/js/fileinput.min.js"></script>
    <script type="text/javascript" src="/static/assets/js/custom-map.js"></script>
    <script type="text/javascript" src="/static/assets/js/custom.js"></script>
    <script type="text/javascript" src="/static/assets/js/toastr.js"></script>
    <script type="text/javascript" src="/common/js/common.js"></script>
</#macro>

<#macro nav>
    <div class="navigation">
        <div class="secondary-navigation">
            <div class="container">
                <div class="contact">
                </div>
                <div class="user-area">
                    <#if (loginUser.userAuth)??>
                        <a href="/accounts/profile" class="promoted">${loginUser.username} 的个人主页</a>
                        <a href="/logout" class="promoted">退出</a>
                    <#else>
                        <a href="/register" class="promoted"><strong>注册</strong></a>
                        <a href="/login">登录</a>
                    </#if>
                </div>
            </div>
        </div>
        <div class="container">
            <header class="navbar" id="top" role="banner">
                <div class="navbar-header">
                    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="navbar-brand nav" id="brand">
                        <a href="/"><img src="/static/assets/img/logo.png" alt="brand" width="188" height="59"></a>
                    </div>
                </div>
                <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
                    <ul class="nav navbar-nav">
                        <li><a href="/">首页</a></li>
                        <li><a href="/leetCodeCourse">LeetCode刷题班</a></li>
                        <li><a href="/crashCourse">速成班</a></li>
                        <li><a href="/sprintCourse">求职班</a></li>
                        <li><a href="/jobCourse">跳槽班</a></li>
                    </ul>
                </nav><!-- /.navbar collapse-->
            </header><!-- /.navbar -->
        </div><!-- /.container -->
    </div>
</#macro>

<#macro jsNow>
    <script src="/common/js/jquery.min.js"></script>
    <script src="/common/js/bootstrap.min.js"></script>
    <script src="/common/js/jquery.nav.js"></script>
    <script src="/common/js/owl.carousel.min.js"></script>
    <script src="/common/js/main.js"></script>
    <script src="/common/js/windows.js"></script>
    <script src="/common/js/toastr.js"></script>
    <script src="/common/js/scroll.js"></script>
</#macro>

<#macro footer>
    <footer>
        <div class="container">
            <div class="foot-one">
                <div class="foot-tit">Cspiration</div>
                <div class="foot-info">Computer + science + aspiration == Cspiration</div>
                <div class="foot-line"></div>
            </div>
            <div class="foot-two">
                <div class="foot-tit">联系方式</div>
                <div class="foot-info">Emaill:<br>admin@cspiration.com</div>
            </div>
            <div class="foot-three">
                <div class="foot-tit">常用链接</div>
                <div class="foot-info">
                    <a href="https://www.youtube.com/channel/UCTWuRL33U8xBPqk3LehXjFw" target="_blank">我的 Youtube</a><br>
                    <a href="http://weibo.com/edwardshi95" target="_blank">我的 微博</a><br>
                    <a href="https://github.com/EdwardShi92" target="_blank">我的 Github</a><br>
                    <a href="http://www.1point3acres.com/bbs/home.php?mod=space&uid=149554&do=thread&view=me&from=space" target="_blank">一亩三分地</a>
                </div>
            </div>
            <div class="foot-copy">
                Copyright © 2018. All Rights Reserved. <a href="/"><span>Go to top</span></a>
            </div>
        </div>
    </footer>
</#macro>
