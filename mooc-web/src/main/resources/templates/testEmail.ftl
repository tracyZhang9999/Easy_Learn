<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Cspiration</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css">

    <style>
        h3 {
            color: blue;
            font-size: 4px;
        }
        button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            margin: 4px 2px;
            cursor: pointer;
        }
    </style>
</head>

<body>
<h1>第一个标题 ${user.email}</h1>
<h2>第二个标题</h2>
<h3>第三个标题</h3>
<h4>第四个标题</h4>
<h5>第五个标题</h5>
<h6>第六个标题</h6>

<p>我是一个段落dddddfadfadsf</p>

<del>dsdds</del>
<a href="http://www.cspiration.com"><img src="CSON.jpg" height="123" width="123"></a>

<div>
    <span>ddd</span>
</div>

<ol>
    <li>dd</li>
    <li>dddd</li>
</ol>

<table border="1">
    <tr>
        <th>ddfas</th>
        <th>ddfadds</th>
    </tr>
    <tr>
        <th>ddfas</th>
        <th>ddfadds</th>
    </tr>
</table>

<form action="" method="post">
    <input type="submit" name="email" size="40" maxlength="50">
</form>

<!--
        <video width="320" height="240" controls>
            <source src="78.%20Subsets.MP4" type="video/mp4">
        </video>
-->

<button>按钮</button>

<p id = "demo">
    JavsScript is best
</p>
<button type="button" onclick="myFunction()">点击这里</button>


<input id="demo2" type="text">
<button type="button" onclick="myFunction2()">点击这里</button>

<script>
    function myFunction() {
        x = document.getElementById("demo")
        x.style.color="#ff0000"
    }
    function myFunction2() {
        var x = document.getElementById("demo2").value;
        if(x == "" || isNaN(x)) {
            alert("不是数字")
        }
    }
</script>

<p>如果点我，我就没了</p>
<p>如果点我，我就又没了</p>
<p>如果点我，我就又又又又没了</p>

<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script>
    $(document).ready(function(){
        $("p").click(function(){
            $(this).hide();
        });
    });
</script>
</body>

</html>