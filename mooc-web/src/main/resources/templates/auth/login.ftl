<!doctype html>
<html lang="en">
    <@common.headerNow/>
    <body>
        <div class="lay-wrap">
            <div class="lay-col" style="background-image: url(/common/images/formbg.jpg);">
                <div class="inner">
                    <div class="lay-logo">
                        <a href="/">
                            <img src="/common/images/logo_hui.png" width="214px" alt="">
                        </a>
                    </div>
                    <div class="lay-text">
                        留学两年多，刷题过三千<br>
                        Cspiration（CSON）专注于北美计算机求职算法面试领域
                        <br>希望通过我们的努力，让刷题变得更容易，让FMAG不是梦！
                    </div>
                </div>
            </div>
            <div class="lay-form lay-login">
                <form role="form" class="form-inner" method="post" action="/login">
                    <div class="form-tit">欢迎登录</div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="username" value="${username!}" placeholder="请输入用户名" required>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name="password" value="${password!}" placeholder="请输入用户密码"
                               required>
                    </div>
                    <input type="hidden" value="${target!}" name="target" />
                    <div class="form-link justify">
                        <label class="form-check-label">
                            <input class="form-check-input" name="remember-me" type="checkbox" checked> 记住密码
                        </label>
                        <a href="/forgetPassword" class="link">忘记密码?</a>
                    </div>
                    <div class="form-button">
                        <button class="btn btn-submit">登 录</button>
                    </div>
                    <div class="form-footer">
                        还没有账号？快来<a href="/register">立即注册</a>吧
                    </div>
                </form>
            </div>
        </div>
        <@common.jsNow/>
    </body>
    <script  type="text/javascript" >
        $(document).ready(function() {
            var errorMsg   = "${errorMsg!""}";
            var successMsg = "${successMsg!""}";
            if(errorMsg){
                errormsg("error",errorMsg);
            }
            if(successMsg) {
                successmsg("success",successMsg);
            }
        });
    </script>
</html>