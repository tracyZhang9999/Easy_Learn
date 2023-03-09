
<!DOCTYPE html>

<html lang="en-US">
<@common.header/>

<body class="page-sub-page page-blog-detail" id="page-top">

<div class="wrapper">

<@common.nav/>

    <div id="page-content">
        <!-- Breadcrumb -->
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="/">主页</a></li>
                <li class="active">${course.name}</li>
            </ol>
        </div>
        <!-- end Breadcrumb -->

        <div class="container">
            <div class="main-course-left">
                <div class="course-info" style="border-bottom: none;">
                    <div class="course-title">${course.name}</div>

                    <div class="course-meta">

                        <a href="" disabled="" class="learn-btn" >开始学习</a>

                        <div class="static-item">
                            <div class="meta">难度级别</div>
                            <#if course.level == 1>
                                <div class="meta-value">初级</div>
                            <#elseif course.level == 2>
                                <div class="meta-value">中级</div>
                            <#elseif course.level == 3>
                                <div class="meta-value">高级</div>
                            </#if>
                        </div>
                        <div class="static-item">
                            <div class="meta">课程时长</div>
                            <div class="meta-value">${course.time}</div>
                        </div>
                    </div>

                    <div class="course-brief">
                        ${course.brief}
                    </div>

                    <ul class="nav nav-tabs" style="padding-top: 25px;">
                        <li class="tabSelect active">
                            <a  href="javascript:void(0)" >
                                <span onclick="showTab(this,'courseSection')" data-target="courseSection" class="menu-item cur">章节</span>
                            </a>
                        </li>
                        <li class="tabSelect">
                            <a  href="javascript:void(0)" >
                                <span onclick="showTab(this,'comment')" data-target="comment" class="menu-item">评论</span>
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- 章节信息 - start -->
                <div id="courseSection">
                    <div class="chapter">
                        <#if chapterSections??>
                        <#list chapterSections as item>
                            <a href="javascript:void(0);" class="js-open" data-id="${item.id}">
                                <h3>
                                    <strong><div class="icon-chapter">=</div>${item.name}</strong>
                                    <span class="drop-down">▼</span>
                                </h3>
                            </a>
                            <ul class="chapter-sub" data-id="${item.id}">
                                <#if item.sections??>
                                <#list item.sections as section>
                                <!--<a href="/templates/course/video?id=${section.id}" >-->
                                <a href="/course/video?id=${section.id}" target="_blank">
                                    <li class="chapter-sub-li">
                                        <i class="icon-video">▶</i> ${section.name!} (${section.time!})
                                    </li>
                                </a>
                                </#list>
                                </#if>
                            </ul>
                        </#list>
                        </#if>
                    </div>
                </div>
                <!-- 章节信息 - end -->

                <!-- 评论区 start -->
                <div id="comment">
                </div>
                <!-- 评论区 end -->

            </div>



        </div>

    </div>

<@common.footer/>

</div>

<@common.js/>

<script  type="text/javascript" >


    $(function(){
        //实现 章节鼠标焦点 动态效果
        $('.chapter li').hover(function(){
            $(this).find('.icon-video').css('color','#FFF');
        },function(){
            $(this).find('.icon-video').css('color','#777');
        });

        $('.js-open').click(function(){
            var data_id = $(this).data('id');
            var ul = $(".chapter ul[data-id='"+data_id+"']");
            var display  = ul.css('display');
            if(display === 'none'){
                ul.css('display','block');
                $(this).find('.drop-down').html('▼');
            }else{
                ul.css('display','none');
                $(this).find('.drop-down').html('▲');
            }
        });

    });

    $(function(){
        var curTab = localStorage.getItem("current");
        showTab($(".menu-item[data-target="+curTab+"]"),curTab);
    });
    /**
     *展示tab
     **/
    function showTab(el,divId){
        $(el).parent().parent().siblings().removeClass('active');
        $(el).parent().parent().addClass('active');


        localStorage.setItem("current", divId);

        if(divId == 'courseSection'){
            $('#courseSection').show();
            $('#comment').hide();
            $('#announcement').hide();
        } else if (divId == 'comment') {
            $('#courseSection').hide();
            $('#comment').show();
            $('#announcement').hide();
            _queryPage(1);//默认加载 第 1 页
        } else if (divId == 'announcement'){
            $('#courseSection').hide();
            $('#comment').hide();
            $('#announcement').show();
            _queryPage(2);//默认加载 第 1 页
        }
    }

    function _queryPage(type){
        var courseId = ${(course.id)!};//课程id
        var url = '';
        if (type == 1) {
            url = '/course/learn/comment';
            $("#comment").load(
                    url,
                    {'courseId':courseId},
                    function(){}
            );
        } else if(type == 2) {
            url = '/course/learn/announcement';
            $("#announcement").load(
                    url,
                    {'courseId':courseId},
                    function(){}
            );
        }
    };

</script>
</body>
</html>
