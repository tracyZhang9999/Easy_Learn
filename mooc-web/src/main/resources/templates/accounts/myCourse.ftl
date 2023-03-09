<!DOCTYPE html>
<html lang="en-US">
<@common.header/>
<body class="page-sub-page page-blog-detail" id="page-top">
<div class="wrapper">
    <@common.nav/>
    <div id="page-content">
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="/">主页</a></li>
                <li><a href="/accounts/profile">个人主页</a></li>
                <li class="active">我的课程</li>
            </ol>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-2">
                    <section id="sidebar">
                        <header><h3>账号</h3></header>
                        <aside>
                            <ul class="sidebar-navigation">
                                <li><a href="/accounts/profile"><i class="fa fa-user"></i><span>个人信息</span></a></li>
                                <li class="active"><a href="/accounts/myCourse"><i class="fa fa-home"></i><span>我的课程</span></a></li>
                            </ul>
                        </aside>
                    </section>
                </div>

                <div class="col-md-9 col-sm-10">
                    <section id="profile">
                        <header><h1>我的课程</h1></header>
                        <div class="account-profile">
                            <div class="row">
                                <div class="col-md-9 col-sm-9">
                                    <div class="split-line" style="margin: 20px 0px;"></div>
                                    <form id="queryPageForm" action="">
                                        <#if userCourse??>
                                            <#list userCourse as item>
                                                <div class="comment clearfix">
                                                    <div class="comment-main" style="width: 100%">
                                                        <a href="/course/learn?id=${item.courseId!}" target="_blank"
                                                           class="user-name link-a" style="font-size:20px;">${item.courseName!}</a>
                                                    </div>
                                                </div>
                                            </#list>
                                        </#if>
                                    </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>

                </div>
            </div>
</div>

<@common.js/>

</body>
</html>
