<div class="main main_comment">
    <div class="comment_body">
        <div class="comment_cont">
            <div class="comment_msg">
                <form id="commentCourseForm" method="post">
                    <textarea name="content" id="content" placeholder="发表你的评论" cols="30" rows="10" style="outline: none; resize: none;font-size: smaller;width: 819px; height: 60px;"></textarea>
                    <input type="hidden" name="courseId" value="${courseId}"/>
                    <input type="button" value="发表评论" onclick="doCourseComment();"/>
                </form>
            </div>


            <div class="foot_bodyb">
                <ul style="list-style: none; margin: 0px;padding: 0px;">
                    <#if list??>
                        <#list list as item>
                            <li>
                            <div class="foot_bodybl fl"><img src="/static/frontByMe/images/helloWorld.jpeg" style=""></div>
                            <div class="foot_bodybr fl">
                                <div class="bodybr_head">
                                    <strong>${item.userId!}</strong>
                                </div>
                                <p style="opacity: 1.0">${item.content!}</p>
                                <div class="timem">
                                    <span>时间：${item.createTime?string('yyyy-MM-dd HH:mm:ss')}</span>
                                </div>

                            </div>
                            <div class="clear"></div>
                            </li>
                        </#list>
                    </#if>
                </ul>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="/static/frontByMe/js/jquery.js"></script>
<script type="text/javascript" src="/static/frontByMe/js/mouse.js"></script>
<script type="text/javascript">
    //评论提交
    function doCourseComment(){
        var content = $('#content').val();
        if($.trim(content).length > 300 || $.trim(content).length == 0){
            alert("评论内容长度请小于300")
        }
        $.ajax({
            type: "POST",
            dataType : 'json',
            url: "/course/learn/comment/commentPublish",
            data: $('#commentCourseForm').serialize(),
            success : function(data) {
                if (data) {
                    var url = '/course/learn/comment';
                    var courseId = ${(courseId)!};
                    $("#comment").load(
                        url,
                        {'courseId':courseId},
                        function(){}
                    );
                }
            },
            error : function() {
                alert("评论失败！");
            }
        });
    }

</script>