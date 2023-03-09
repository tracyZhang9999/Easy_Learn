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
            <div class="lay-form lay-regist">
                <div class="form-inner">
                    <ul class="step-cell justify">
                        <li class="active">
                            <div class="step-icon"><i class="user"></i></div>
                            <div class="step-text">注册账号</div>
                        </li>
                        <li>
                            <div class="step-icon"><i class="smm"></i></div>
                            <div class="step-text">实名认证</div>
                        </li>
                        <li>
                            <div class="step-icon"><i class="cart"></i></div>
                            <div class="step-text">购买课程</div>
                        </li>
                    </ul>
                    <div class="form-tit">欢迎注册</div>
                    <form role="form" method="post" enctype="multipart/form-data" action="/register">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="请输入用户名" name="username"  maxlength="20" required>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="请输入邮箱" onkeyup="value=value.replace(/[\u4e00-\u9fa5]/ig,'')" name="email" required>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="请输入登录密码" name="passwd" required>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="请再次输入登录密码" name="confirmPasswd" required>
                        </div>
                        <div class="form-link">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" checked> <span><a href="/legal/user-agreement" target="_blank">我已阅读并同意《用户协议》</a></span>
                            </label>
                        </div>
                        <div class="form-button">
                            <button type="submit" class="btn btn-submit">注  册</button>
                        </div>
                    </form>
                    <div class="form-footer">
                        已有帐号，<a href="/login">立即登录</a>
                    </div>
                </div>
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