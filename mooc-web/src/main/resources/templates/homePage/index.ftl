<!doctype html>
<html lang="en">
<@common.headerNow/>
<link rel="stylesheet" href="/common/css/swiper.min.css">
<body>
<header class="site-header">
    <nav class="navbar navbar-expand flex-md-row ke-index-navbar">
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
                    </li><!doctype html>
                    <html lang="en">
                    <@common.headerNow/>
                    <link rel="stylesheet" href="/common/css/swiper.min.css">
                    <body>
                    <header class="site-header">
                        <nav class="navbar navbar-expand flex-md-row ke-index-navbar">
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
                    <div class="index-ke-banner">
                        <div class="swiper-container swiper-ke-banner">
                            <div class="swiper-wrapper">
                                <a href="/leetCodeCourse" target="_blank" class="swiper-slide" style="background-image:url(/common/images/kecheng/banner1.jpg);"></a>
                                <a href="/crashCourse" target="_blank" class="swiper-slide" style="background-image:url(/common/images/kecheng/banner2.jpg);"></a>
                                <a href="/jobCourse" target="_blank" class="swiper-slide" style="background-image:url(/common/images/kecheng/banner3.jpg);"></a>
                            </div>
                            <!-- Add Arrows -->
                            <div class="swiper-ke-next"><i class="iconfont icon-nex"></i></div>
                            <div class="swiper-ke-prev"><i class="iconfont icon-prev"></i></div>
                            <div class="swiper-pagination" style="bottom: 70px; width: 1200px;left: 50%;"></div>
                        </div>
                        <!-- nanv -->
                        <div class="nav-group">
                            <dl class="nav-dl">
                                <dt><span class="iconfont icon-kecheng1"></span><span class="txt">算法面试，火热招生</span></dt>
                                <dd><span class="iconfont icon-icon-to_right"></span><span>LeetCode视频刷题班</span></dd>
                                <dd><span class="iconfont icon-icon-to_right"></span><span>短期算法速成班</span></dd>
                                <dd><span class="iconfont icon-icon-to_right"></span><span>北美求职班 & 跳槽班</span></dd>
                            </dl>
                        </div>
                    </div>
                    <!-- flex -->
                    <div class="flex-bar">
                        <div class="container justify">
                            <div class="flex-box">
                                <span class="iconfont icon-luxiang"></span>
                                <h4>录播模式</h4>
                                <p>录播教学时间自由</p>
                            </div>
                            <div class="flex-box">
                                <span class="iconfont icon-suishisuidi"></span>
                                <h4>即买即看</h4>
                                <p>成功报名即刻学习</p>
                            </div>
                            <div class="flex-box">
                                <span class="iconfont icon-xuexi1"></span>
                                <h4>在线观看</h4>
                                <p>随时随地快速提升</p>
                            </div>
                            <div class="flex-box">
                                <span class="iconfont icon-xuexi"></span>
                                <h4>反复观看</h4>
                                <p>多次反复扎实牢固</p>
                            </div>
                        </div>
                    </div>
                    <!-- 全网独家LeetCode题目视频讲解，深入浅出的讲解分析，助你快速掌握90%+面试核心内容  -->
                    <div class="g-section">
                        <div class="g-header">
                            <h3>全网独家LeetCode题目视频讲解，深入浅出的讲解分析，助你快速掌握90%+面试核心内容</h3>
                            <p>脉络清晰，逻辑严密，帮你构建正确的刷题思路，形式实战中的思维习惯</p>
                        </div>
                        <div class="container">
                            <div class="row row-center">
                                <div class="col-4">
                                    <div class="hx-photo">
                                        <img src="/common/images/kecheng/leetpic.png">
                                    </div>
                                </div>
                                <div class="col-8">
                                    <div class="row hex-row">
                                        <div class="col-6">
                                            <div class="hex-cell">
                                                <div class="hex-head">
                                                    <div class="hex-nn">1</div>
                                                    <div class="hex-title">做题方法技巧</div>
                                                </div>
                                                <div class="hex-cont">
                                                    3000题总结的各种⽅法技巧，遇见什么题马上想出答案，经验总结方法，独家拥有
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="hex-cell">
                                                <div class="hex-head">
                                                    <div class="hex-nn">2</div>
                                                    <div class="hex-title">做题技巧套路模版</div>
                                                </div>
                                                <div class="hex-cont">
                                                    为初学者准备，遇⻅题添加内容就行，简单⽆无脑，技巧套路大全，方法模版汇总
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="hex-cell">
                                                <div class="hex-head">
                                                    <div class="hex-nn">3</div>
                                                    <div class="hex-title">LeetCode每一道题讲解</div>
                                                </div>
                                                <div class="hex-cont">
                                                    LeetCode 题目一道道讲解，一题多解最优解，全网唯一，独家拥有，900题大全
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="hex-cell">
                                                <div class="hex-head">
                                                    <div class="hex-nn">4</div>
                                                    <div class="hex-title">完整面试流程讲解</div>
                                                </div>
                                                <div class="hex-cont">
                                                    从题意，重要性，分析思路，一行行手写代码，手跑Test Case，到最后的时间空间复杂度
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 以面试刷题为目的的面试针对性训练，学会即可横扫所有互联网公司算法面试  -->
                    <div class="g-section zdui-section">
                        <div class="g-header">
                            <h3>以面试刷题为目的的面试针对性训练，学会即可横扫所有互联网公司算法面试</h3>
                            <p>刷题体系化，面试功利性，零基础起步到大神，一套体系搞定算法面试</p>
                        </div>
                        <div class="container">
                            <nav>
                                <div class="nav ms-tabs"  role="tablist">
                                    <a class="nav-item ms-tab-item active"  href="/course-diff" ><i class="iconfont icon-kecheng1"></i> <span>课程对比</span></a>
                                    <a class="nav-item ms-tab-item"  href="/story" ><i class="iconfont iconfont icon-zhinan"></i> <span>创始人故事</span></a>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane active" id="nav-cag1" role="tabpanel">
                                    <div class="zke-card">
                                        <div class="row zke-row">
                                            <div class="col zke-green">
                                                <div class="zke-head">入学能力评估</div>
                                                <div class="row zke-group-row">
                                                    <div class="col">
                                                        <div class="zke-box">
                                                            <div>评估现状<br>项目推荐</div>
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="zke-box">
                                                            <div>个性化<br>定制计划</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col zke-yellow">
                                                <div class="zke-head">算法能力训练</div>
                                                <div class="row zke-group-row">
                                                    <div class="col">
                                                        <div class="zke-box">
                                                            <div>基础知识<br>题型技巧</div>
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="zke-box">
                                                            <div>实战刷题<br>LC训练</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col zke-blue">
                                                <div class="zke-head">系统设计能力提升</div>
                                                <div class="row zke-group-row">
                                                    <div class="col">
                                                        <div class="zke-box">
                                                            <div>00D<br>面向对象</div>
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="zke-box">
                                                            <div>SD<br>系统设计</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col zke-green">
                                                <div class="zke-head">面试能力实战训练</div>
                                                <div class="row zke-group-row">
                                                    <div class="col">
                                                        <div class="zke-box">
                                                            <div>简历修改<br>模拟面试</div>
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="zke-box">
                                                            <div>大厂内推<br>10家起步</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col zke-yellow">
                                                <div class="zke-head">求职咨询服务</div>
                                                <div class="row zke-group-row">
                                                    <div class="col">
                                                        <div class="zke-box">
                                                            <div>扫清求职过程中的<br>所有疑虑</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 北美求职首选，算法短期速成，快速入门达到FMAG面试水平 -->
                    <div class="g-section">
                        <div class="g-header">
                            <h3>北美求职首选，算法短期速成，快速入门达到FMAG面试水平</h3>
                            <p>算法面试体系化课程，电话监督+助教答疑,每周催刷题</p>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <a href="/crashCourse" class="fam-cell fam-1 hoverUp">
                                        <div class="fam-grid">
                                            <div class="fam-title">短期算法速成班</div>
                                            <div class="line"></div>
                                            <div class="fam-item"><i class="iconfont icon-biaoshi"></i>课程体系6门全包，外加《规划总结》课</div>
                                            <div class="fam-item"><i class="iconfont icon-biaoshi"></i>刷题⽅法，简历修改，⾯试技巧等讲解</div>
                                            <div class="fam-item"><i class="iconfont icon-biaoshi"></i>每周电话监督，助教答疑，刷题打卡</div>
                                            <div class="fam-item"><i class="iconfont icon-biaoshi"></i>10+北美大公司内推（FMAG）</div>
                                        </div>
                                        <div class="fam-link">报名后立即开始</div>
                                    </a>
                                </div>
                                <div class="col">
                                    <a href="/sprintCourse" class="fam-cell fam-2 hoverUp">
                                        <div class="fam-grid">
                                            <div class="fam-title">北美留学SDE求职班</div>
                                            <div class="line"></div>
                                            <div class="fam-item"><i class="iconfont icon-biaoshi"></i>《速成班》全部包含+OOD+System Design</div>
                                            <div class="fam-item"><i class="iconfont icon-biaoshi"></i>3次1对1模拟面试，检验阶段性成果</div>
                                            <div class="fam-item"><i class="iconfont icon-biaoshi"></i>北美留学首选，录播模式，时间自由</div>
                                            <div class="fam-item"><i class="iconfont icon-biaoshi"></i>1对1定制咨询，推荐Project，充实简历</div>
                                        </div>
                                        <div class="fam-link">报名后立即开始</div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 北美求职体系化课程，全网唯一，适合不同阶段面试刷题需求 -->
                    <div class="g-section">
                        <div class="g-header">
                            <h3>北美求职体系化课程，全网唯一，适合不同阶段面试刷题需求</h3>
                            <p>除了课程，我们还提供10+大厂内推，每周电话1对1监督等增值服务，确保学习效果</p>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-4">
                                    <div class="ksys-box">
                                        <div class="icon"><i class="iconfont icon-xuexi"></i></div>
                                        <div class="tit">转专业</div>
                                        <div class="desc">零基础转专业，简历项目1对1指导，体系化课程实现从零入门，不要在意“基础差”我们解决的就是“零基础起步”</div>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="ksys-box">
                                        <div class="icon"><i class="iconfont icon-xuesheng"></i></div>
                                        <div class="tit">留学生</div>
                                        <div class="desc">北美找实习，全职，春招秋招，马上毕业OPT开始，面试机会到手没刷题？已经毕业没工作怎么办？我们来解决！</div>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="ksys-box">
                                        <div class="icon"><i class="iconfont icon-gongzuo"></i></div>
                                        <div class="tit">跳槽者</div>
                                        <div class="desc">上班没时间？录播课程为主，自由安排学习进度，LeetCode答案一应俱全，节省90%时间，2-3个月完成跳槽。</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- CSON学员专享课程服务 -->
                    <div class="g-section cson-serv-section">
                        <div class="g-header">
                            <h3>CSON学员专享课程服务</h3>
                            <p>CSON学员专享课程服务</p>
                        </div>
                        <div class="container">
                            <div class="row row-serve flex-items-xs-center">
                                <div class="col-4">
                                    <div class="serv-cell">
                                        <div class="serv-squ"><i class="nbox">1</i>服务一</div>
                                        <div class="serv-h3">课程随时随地观看</div>
                                        <div class="serv-desc">
                                            学习时间自由灵活<br>
                                            闲暇空余均可利用<br>
                                            我们明白你的时间很重要
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="serv-cell">
                                        <div class="serv-squ"><i class="nbox">2</i>服务二</div>
                                        <div class="serv-h3">代码版本不断升级</div>
                                        <div class="serv-desc">
                                            讲师长期维护代码<br>持续迭代更新版本<br>每行代码都是面试精华]
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="serv-cell">
                                        <div class="serv-squ"><i class="nbox">3</i>服务三</div>
                                        <div class="serv-h3">学习交流群</div>
                                        <div class="serv-desc">
                                            刷题、求职难免有问题<br>课程开通学习交流群<br>帮助你，也能帮助他人
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="serv-cell">
                                        <div class="serv-squ"><i class="nbox">4</i>服务四</div>
                                        <div class="serv-h3">题型对应章节</div>
                                        <div class="serv-desc">
                                            每章节对应LeetCode题型作业<br>边学习边结合实战刷题<br>提升更快更高效
                                        </div>
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="serv-cell">
                                        <div class="serv-squ"><i class="nbox">5</i>服务五</div>
                                        <div class="serv-h3">补充知识点</div>
                                        <div class="serv-desc">
                                            除常规考点外<br>补充丰富延申拓展<br>知其然，知其所以然
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 不敢让学生写评论的课都不是好课！我们的课程敢让所有学生公开评论！ -->
                    <div class="g-section">
                        <div class="g-header">
                            <h3>《速成班》真实案例，零基础转专业 & 上班族，60天400题不是梦</h3>
                        </div>
                        <div class="container">
                            <div class="row case-row">
                                <div class="col-3">
                                    <div class="comment-card case-yy">
                                        <div class="user-box">
                                            <img src="/common/images/ren.jpg" class="avatar" alt="">
                                            <div class="user-name">bobbylandy</div>
                                            <div class="u-raty"><img src="/common/images/star.png" alt=""></div>
                                        </div>
                                        <div class="comment-cell">
                                            <div class="t">背景：</div>
                                            <div class="cont">国内从事电影行业的⼩姐姐，年龄30+，孕妇，假期⽹课⼀门，上课期间⽣了孩子</div>
                                        </div>
                                        <div class="comment-cell">
                                            <div class="t">成果：</div>
                                            <div class="cont">两个月，从零基础学起，课程结束刷题数量量：407道</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="comment-card case-yy">
                                        <div class="user-box">
                                            <img src="/common/images/ren.jpg" class="avatar" alt="">
                                            <div class="user-name">anonymity</div>
                                            <div class="u-raty"><img src="/common/images/star.png" alt=""></div>
                                        </div>
                                        <div class="comment-cell">
                                            <div class="t">背景：</div>
                                            <div class="cont">北美工作10年+，manager 级别，年龄40+，平时工作7，8点下班</div>
                                        </div>
                                        <div class="comment-cell">
                                            <div class="t">成果：</div>
                                            <div class="cont">两个月，刷题过300，跳槽对应Google L6～L7级别，50w+包裹</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="comment-card case-yy">
                                        <div class="user-box">
                                            <img src="/common/images/ren.jpg" class="avatar" alt="">
                                            <div class="user-name">Gina</div>
                                            <div class="u-raty"><img src="/common/images/star.png" alt=""></div>
                                        </div>
                                        <div class="comment-cell">
                                            <div class="t">背景：</div>
                                            <div class="cont">本科机械转码姑娘，Master 在读，之前一道题没做过</div>
                                        </div>
                                        <div class="comment-cell">
                                            <div class="t">成果：</div>
                                            <div class="cont">两个月，从零基础学起，课程结束刷题数量量：400+</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="comment-card case-yy">
                                        <div class="user-box">
                                            <img src="/common/images/ren.jpg" class="avatar" alt="">
                                            <div class="user-name">瓜瓜</div>
                                            <div class="u-raty"><img src="/common/images/star.png" alt=""></div>
                                        </div>
                                        <div class="comment-cell">
                                            <div class="t">背景：</div>
                                            <div class="cont">本科EE转码姑娘，面实习Facebook拒，全职发奋图强刷起</div>
                                        </div>
                                        <div class="comment-cell">
                                            <div class="t">成果：</div>
                                            <div class="cont">两个月300+题量，Facebook，Microsoft offer，最终接 Facebook</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 关于我们 -->
                    <div class="g-section bg">
                        <div class="people-cells">
                            <div class="owl-carousel owl-theme">
                                <div class="item">
                                    <div class="peo-card shadow shadow">
                                        <div class="peo-body">
                                            <div class="p-name">Edward Shi</div>
                                            <div class="p-text">创始人</div>
                                            <div class="p-decs">留学两年多，刷题过三千。CS科班出身，但非ACMer，从没接触过ACM。从树的遍历捡起，纯自己刷题，在北美留学期间刷了3000多到题，全部都是Leetcode和面试题。自我总结出公司面试题出题方式，套路。独立做出针对面试刷题的课程，课程有《算法基础知识（上下）》《题型技巧总结（上下）》《Leetcode 题目视频讲解（上中下1-900题）》</div>
                                        </div>
                                        <div class="peo-grid">
                                            <img src="/common/images/猴子.jpeg" alt="" />
                                            <div class="p-name">Edward Shi</div>
                                            <div class="p-text">创始人</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <@common.footerNow/>
                    <@common.jsNow/>
                    <script src="/common/js/swiper.min.js"></script>
                    <script>
                        $('.owl-carousel').owlCarousel({
                            stagePadding: 100,
                            loop:true,
                            margin:40,
                            nav:true,
                            items:1,
                            responsive:{
                                1200:{
                                    stagePadding: 150,
                                },
                                1600:{
                                    stagePadding: 400,
                                },
                            }
                        })
                    </script>
                    <script>
                        var swiper = new Swiper('.swiper-comments', {
                            loop: true,
                            slidesPerView: 4,
                            slidesPerGroup: 4,
                            spaceBetween: 5,
                            pagination: {
                                noSwiping: true,
                                el: '.swiper-pagination',
                                clickable: true,
                            },
                            navigation: {
                                nextEl: '.swiper-next',
                                prevEl: '.swiper-prev',
                            },
                        });

                        var swiper2 = new Swiper('.swiper-tips', {
                            loop: true,
                            direction: 'vertical',
                            loop: true,
                            speed: 1000,
                            autoplay: {
                                delay: 5000,
                                stopOnLastSlide: false,
                                disableOnInteraction: true,
                            },
                        });

                        var swiper3 = new Swiper('.swiper-ke-banner', {
                            loop: true,
                            autoplay: {
                                delay: 5500,
                                disableOnInteraction: false,
                            },
                            pagination: {
                                el: '.swiper-pagination',
                                clickable: true,
                            },
                            navigation: {
                                nextEl: '.swiper-ke-next',
                                prevEl: '.swiper-ke-prev',
                            },
                        });
                        $(".nav-dl").on("click","dd",function(){
                            var index = $(this).index();
                            swiper3.slideTo(index);
                        })

                        // 关闭广告
                        $('.ad-close').click(function(){
                            $('.act-top-ad').slideUp('fast')
                            $('.site-header').removeClass('site-hasad-header')
                        })
                    </script>
                    <script type="text/javascript">
                        $('.ad-close').click(function(){
                            $('.act-top-ad').slideUp('fast')
                        })
                        $(function() {
                            $('#myModal').modal('show')
                        });
                    </script>
                    </body>
                    </html>

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
<div class="index-ke-banner">
    <div class="swiper-container swiper-ke-banner">
        <div class="swiper-wrapper">
            <a href="/leetCodeCourse" target="_blank" class="swiper-slide" style="background-image:url(/common/images/kecheng/banner1.jpg);"></a>
            <a href="/crashCourse" target="_blank" class="swiper-slide" style="background-image:url(/common/images/kecheng/banner2.jpg);"></a>
            <a href="/jobCourse" target="_blank" class="swiper-slide" style="background-image:url(/common/images/kecheng/banner3.jpg);"></a>
        </div>
        <!-- Add Arrows -->
        <div class="swiper-ke-next"><i class="iconfont icon-nex"></i></div>
        <div class="swiper-ke-prev"><i class="iconfont icon-prev"></i></div>
        <div class="swiper-pagination" style="bottom: 70px; width: 1200px;left: 50%;"></div>
    </div>
    <!-- nanv -->
    <div class="nav-group">
        <dl class="nav-dl">
            <dt><span class="iconfont icon-kecheng1"></span><span class="txt">算法面试，火热招生</span></dt>
            <dd><span class="iconfont icon-icon-to_right"></span><span>LeetCode视频刷题班</span></dd>
            <dd><span class="iconfont icon-icon-to_right"></span><span>短期算法速成班</span></dd>
            <dd><span class="iconfont icon-icon-to_right"></span><span>北美求职班 & 跳槽班</span></dd>
        </dl>
    </div>
</div>
<!-- flex -->
<div class="flex-bar">
    <div class="container justify">
        <div class="flex-box">
            <span class="iconfont icon-luxiang"></span>
            <h4>录播模式</h4>
            <p>录播教学时间自由</p>
        </div>
        <div class="flex-box">
            <span class="iconfont icon-suishisuidi"></span>
            <h4>即买即看</h4>
            <p>成功报名即刻学习</p>
        </div>
        <div class="flex-box">
            <span class="iconfont icon-xuexi1"></span>
            <h4>在线观看</h4>
            <p>随时随地快速提升</p>
        </div>
        <div class="flex-box">
            <span class="iconfont icon-xuexi"></span>
            <h4>反复观看</h4>
            <p>多次反复扎实牢固</p>
        </div>
    </div>
</div>
<!-- 全网独家LeetCode题目视频讲解，深入浅出的讲解分析，助你快速掌握90%+面试核心内容  -->
<div class="g-section">
    <div class="g-header">
        <h3>全网独家LeetCode题目视频讲解，深入浅出的讲解分析，助你快速掌握90%+面试核心内容</h3>
        <p>脉络清晰，逻辑严密，帮你构建正确的刷题思路，形式实战中的思维习惯</p>
    </div>
    <div class="container">
        <div class="row row-center">
            <div class="col-4">
                <div class="hx-photo">
                    <img src="/common/images/kecheng/leetpic.png">
                </div>
            </div>
            <div class="col-8">
                <div class="row hex-row">
                    <div class="col-6">
                        <div class="hex-cell">
                            <div class="hex-head">
                                <div class="hex-nn">1</div>
                                <div class="hex-title">做题方法技巧</div>
                            </div>
                            <div class="hex-cont">
                                3000题总结的各种⽅法技巧，遇见什么题马上想出答案，经验总结方法，独家拥有
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="hex-cell">
                            <div class="hex-head">
                                <div class="hex-nn">2</div>
                                <div class="hex-title">做题技巧套路模版</div>
                            </div>
                            <div class="hex-cont">
                                为初学者准备，遇⻅题添加内容就行，简单⽆无脑，技巧套路大全，方法模版汇总
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="hex-cell">
                            <div class="hex-head">
                                <div class="hex-nn">3</div>
                                <div class="hex-title">LeetCode每一道题讲解</div>
                            </div>
                            <div class="hex-cont">
                                LeetCode 题目一道道讲解，一题多解最优解，全网唯一，独家拥有，900题大全
                            </div>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="hex-cell">
                            <div class="hex-head">
                                <div class="hex-nn">4</div>
                                <div class="hex-title">完整面试流程讲解</div>
                            </div>
                            <div class="hex-cont">
                                从题意，重要性，分析思路，一行行手写代码，手跑Test Case，到最后的时间空间复杂度
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 以面试刷题为目的的面试针对性训练，学会即可横扫所有互联网公司算法面试  -->
<div class="g-section zdui-section">
    <div class="g-header">
        <h3>以面试刷题为目的的面试针对性训练，学会即可横扫所有互联网公司算法面试</h3>
        <p>刷题体系化，面试功利性，零基础起步到大神，一套体系搞定算法面试</p>
    </div>
    <div class="container">
        <nav>
            <div class="nav ms-tabs"  role="tablist">
                <a class="nav-item ms-tab-item active"  href="/course-diff" ><i class="iconfont icon-kecheng1"></i> <span>课程对比</span></a>
                <a class="nav-item ms-tab-item"  href="/story" ><i class="iconfont iconfont icon-zhinan"></i> <span>创始人故事</span></a>
            </div>
        </nav>
        <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane active" id="nav-cag1" role="tabpanel">
                <div class="zke-card">
                    <div class="row zke-row">
                        <div class="col zke-green">
                            <div class="zke-head">入学能力评估</div>
                            <div class="row zke-group-row">
                                <div class="col">
                                    <div class="zke-box">
                                        <div>评估现状<br>项目推荐</div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="zke-box">
                                        <div>个性化<br>定制计划</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col zke-yellow">
                            <div class="zke-head">算法能力训练</div>
                            <div class="row zke-group-row">
                                <div class="col">
                                    <div class="zke-box">
                                        <div>基础知识<br>题型技巧</div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="zke-box">
                                        <div>实战刷题<br>LC训练</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col zke-blue">
                            <div class="zke-head">系统设计能力提升</div>
                            <div class="row zke-group-row">
                                <div class="col">
                                    <div class="zke-box">
                                        <div>00D<br>面向对象</div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="zke-box">
                                        <div>SD<br>系统设计</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col zke-green">
                            <div class="zke-head">面试能力实战训练</div>
                            <div class="row zke-group-row">
                                <div class="col">
                                    <div class="zke-box">
                                        <div>简历修改<br>模拟面试</div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="zke-box">
                                        <div>大厂内推<br>10家起步</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col zke-yellow">
                            <div class="zke-head">求职咨询服务</div>
                            <div class="row zke-group-row">
                                <div class="col">
                                    <div class="zke-box">
                                        <div>扫清求职过程中的<br>所有疑虑</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 北美求职首选，算法短期速成，快速入门达到FMAG面试水平 -->
<div class="g-section">
    <div class="g-header">
        <h3>北美求职首选，算法短期速成，快速入门达到FMAG面试水平</h3>
        <p>算法面试体系化课程，电话监督+助教答疑,每周催刷题</p>
    </div>
    <div class="container">
        <div class="row">
            <div class="col">
                <a href="/crashCourse" class="fam-cell fam-1 hoverUp">
                    <div class="fam-grid">
                        <div class="fam-title">短期算法速成班</div>
                        <div class="line"></div>
                        <div class="fam-item"><i class="iconfont icon-biaoshi"></i>课程体系6门全包，外加《规划总结》课</div>
                        <div class="fam-item"><i class="iconfont icon-biaoshi"></i>刷题⽅法，简历修改，⾯试技巧等讲解</div>
                        <div class="fam-item"><i class="iconfont icon-biaoshi"></i>每周电话监督，助教答疑，刷题打卡</div>
                        <div class="fam-item"><i class="iconfont icon-biaoshi"></i>10+北美大公司内推（FMAG）</div>
                    </div>
                    <div class="fam-link">报名后立即开始</div>
                </a>
            </div>
            <div class="col">
                <a href="/sprintCourse" class="fam-cell fam-2 hoverUp">
                    <div class="fam-grid">
                        <div class="fam-title">北美留学SDE求职班</div>
                        <div class="line"></div>
                        <div class="fam-item"><i class="iconfont icon-biaoshi"></i>《速成班》全部包含+OOD+System Design</div>
                        <div class="fam-item"><i class="iconfont icon-biaoshi"></i>3次1对1模拟面试，检验阶段性成果</div>
                        <div class="fam-item"><i class="iconfont icon-biaoshi"></i>北美留学首选，录播模式，时间自由</div>
                        <div class="fam-item"><i class="iconfont icon-biaoshi"></i>1对1定制咨询，推荐Project，充实简历</div>
                    </div>
                    <div class="fam-link">报名后立即开始</div>
                </a>
            </div>
        </div>
    </div>
</div>
<!-- 北美求职体系化课程，全网唯一，适合不同阶段面试刷题需求 -->
<div class="g-section">
    <div class="g-header">
        <h3>北美求职体系化课程，全网唯一，适合不同阶段面试刷题需求</h3>
        <p>除了课程，我们还提供10+大厂内推，每周电话1对1监督等增值服务，确保学习效果</p>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-4">
                <div class="ksys-box">
                    <div class="icon"><i class="iconfont icon-xuexi"></i></div>
                    <div class="tit">转专业</div>
                    <div class="desc">零基础转专业，简历项目1对1指导，体系化课程实现从零入门，不要在意“基础差”我们解决的就是“零基础起步”</div>
                </div>
            </div>
            <div class="col-4">
                <div class="ksys-box">
                    <div class="icon"><i class="iconfont icon-xuesheng"></i></div>
                    <div class="tit">留学生</div>
                    <div class="desc">北美找实习，全职，春招秋招，马上毕业OPT开始，面试机会到手没刷题？已经毕业没工作怎么办？我们来解决！</div>
                </div>
            </div>
            <div class="col-4">
                <div class="ksys-box">
                    <div class="icon"><i class="iconfont icon-gongzuo"></i></div>
                    <div class="tit">跳槽者</div>
                    <div class="desc">上班没时间？录播课程为主，自由安排学习进度，LeetCode答案一应俱全，节省90%时间，2-3个月完成跳槽。</div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- CSON学员专享课程服务 -->
<div class="g-section cson-serv-section">
    <div class="g-header">
        <h3>CSON学员专享课程服务</h3>
        <p>CSON学员专享课程服务</p>
    </div>
    <div class="container">
        <div class="row row-serve flex-items-xs-center">
            <div class="col-4">
                <div class="serv-cell">
                    <div class="serv-squ"><i class="nbox">1</i>服务一</div>
                    <div class="serv-h3">课程随时随地观看</div>
                    <div class="serv-desc">
                        学习时间自由灵活<br>
                        闲暇空余均可利用<br>
                        我们明白你的时间很重要
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="serv-cell">
                    <div class="serv-squ"><i class="nbox">2</i>服务二</div>
                    <div class="serv-h3">代码版本不断升级</div>
                    <div class="serv-desc">
                        讲师长期维护代码<br>持续迭代更新版本<br>每行代码都是面试精华]
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="serv-cell">
                    <div class="serv-squ"><i class="nbox">3</i>服务三</div>
                    <div class="serv-h3">学习交流群</div>
                    <div class="serv-desc">
                        刷题、求职难免有问题<br>课程开通学习交流群<br>帮助你，也能帮助他人
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="serv-cell">
                    <div class="serv-squ"><i class="nbox">4</i>服务四</div>
                    <div class="serv-h3">题型对应章节</div>
                    <div class="serv-desc">
                        每章节对应LeetCode题型作业<br>边学习边结合实战刷题<br>提升更快更高效
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="serv-cell">
                    <div class="serv-squ"><i class="nbox">5</i>服务五</div>
                    <div class="serv-h3">补充知识点</div>
                    <div class="serv-desc">
                        除常规考点外<br>补充丰富延申拓展<br>知其然，知其所以然
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 不敢让学生写评论的课都不是好课！我们的课程敢让所有学生公开评论！ -->
<div class="g-section">
    <div class="g-header">
        <h3>《速成班》真实案例，零基础转专业 & 上班族，60天400题不是梦</h3>
    </div>
    <div class="container">
        <div class="row case-row">
            <div class="col-3">
                <div class="comment-card case-yy">
                    <div class="user-box">
                        <img src="/common/images/ren.jpg" class="avatar" alt="">
                        <div class="user-name">bobbylandy</div>
                        <div class="u-raty"><img src="/common/images/star.png" alt=""></div>
                    </div>
                    <div class="comment-cell">
                        <div class="t">背景：</div>
                        <div class="cont">国内从事电影行业的⼩姐姐，年龄30+，孕妇，假期⽹课⼀门，上课期间⽣了孩子</div>
                    </div>
                    <div class="comment-cell">
                        <div class="t">成果：</div>
                        <div class="cont">两个月，从零基础学起，课程结束刷题数量量：407道</div>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="comment-card case-yy">
                    <div class="user-box">
                        <img src="/common/images/ren.jpg" class="avatar" alt="">
                        <div class="user-name">anonymity</div>
                        <div class="u-raty"><img src="/common/images/star.png" alt=""></div>
                    </div>
                    <div class="comment-cell">
                        <div class="t">背景：</div>
                        <div class="cont">北美工作10年+，manager 级别，年龄40+，平时工作7，8点下班</div>
                    </div>
                    <div class="comment-cell">
                        <div class="t">成果：</div>
                        <div class="cont">两个月，刷题过300，跳槽对应Google L6～L7级别，50w+包裹</div>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="comment-card case-yy">
                    <div class="user-box">
                        <img src="/common/images/ren.jpg" class="avatar" alt="">
                        <div class="user-name">Gina</div>
                        <div class="u-raty"><img src="/common/images/star.png" alt=""></div>
                    </div>
                    <div class="comment-cell">
                        <div class="t">背景：</div>
                        <div class="cont">本科机械转码姑娘，Master 在读，之前一道题没做过</div>
                    </div>
                    <div class="comment-cell">
                        <div class="t">成果：</div>
                        <div class="cont">两个月，从零基础学起，课程结束刷题数量量：400+</div>
                    </div>
                </div>
            </div>
            <div class="col-3">
                <div class="comment-card case-yy">
                    <div class="user-box">
                        <img src="/common/images/ren.jpg" class="avatar" alt="">
                        <div class="user-name">瓜瓜</div>
                        <div class="u-raty"><img src="/common/images/star.png" alt=""></div>
                    </div>
                    <div class="comment-cell">
                        <div class="t">背景：</div>
                        <div class="cont">本科EE转码姑娘，面实习Facebook拒，全职发奋图强刷起</div>
                    </div>
                    <div class="comment-cell">
                        <div class="t">成果：</div>
                        <div class="cont">两个月300+题量，Facebook，Microsoft offer，最终接 Facebook</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 关于我们 -->
<div class="g-section bg">
    <div class="people-cells">
        <div class="owl-carousel owl-theme">
            <div class="item">
                <div class="peo-card shadow shadow">
                    <div class="peo-body">
                        <div class="p-name">Edward Shi</div>
                        <div class="p-text">创始人</div>
                        <div class="p-decs">留学两年多，刷题过三千。CS科班出身，但非ACMer，从没接触过ACM。从树的遍历捡起，纯自己刷题，在北美留学期间刷了3000多到题，全部都是Leetcode和面试题。自我总结出公司面试题出题方式，套路。独立做出针对面试刷题的课程，课程有《算法基础知识（上下）》《题型技巧总结（上下）》《Leetcode 题目视频讲解（上中下1-900题）》</div>
                    </div>
                    <div class="peo-grid">
                        <img src="/common/images/猴子.jpeg" alt="" />
                        <div class="p-name">Edward Shi</div>
                        <div class="p-text">创始人</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<@common.footerNow/>
<@common.jsNow/>
<script src="/common/js/swiper.min.js"></script>
<script>
    $('.owl-carousel').owlCarousel({
        stagePadding: 100,
        loop:true,
        margin:40,
        nav:true,
        items:1,
        responsive:{
            1200:{
                stagePadding: 150,
            },
            1600:{
                stagePadding: 400,
            },
        }
    })
</script>
<script>
    var swiper = new Swiper('.swiper-comments', {
        loop: true,
        slidesPerView: 4,
        slidesPerGroup: 4,
        spaceBetween: 5,
        pagination: {
            noSwiping: true,
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-next',
            prevEl: '.swiper-prev',
        },
    });

    var swiper2 = new Swiper('.swiper-tips', {
        loop: true,
        direction: 'vertical',
        loop: true,
        speed: 1000,
        autoplay: {
            delay: 5000,
            stopOnLastSlide: false,
            disableOnInteraction: true,
        },
    });

    var swiper3 = new Swiper('.swiper-ke-banner', {
        loop: true,
        autoplay: {
            delay: 5500,
            disableOnInteraction: false,
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-ke-next',
            prevEl: '.swiper-ke-prev',
        },
    });
    $(".nav-dl").on("click","dd",function(){
        var index = $(this).index();
        swiper3.slideTo(index);
    })

    // 关闭广告
    $('.ad-close').click(function(){
        $('.act-top-ad').slideUp('fast')
        $('.site-header').removeClass('site-hasad-header')
    })
</script>
<script type="text/javascript">
    $('.ad-close').click(function(){
        $('.act-top-ad').slideUp('fast')
    })
    $(function() {
        $('#myModal').modal('show')
    });
</script>
</body>
</html>
