<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="">

    <title>日记管理页面</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../assets/js/ie-emulation-modes-warning.js"></script>
    <link rel="shortcut icon" href="../img/favicon.ico">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">WDJY</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">搜索</a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <input id="sousuo" type="text" class="form-control" placeholder="搜索..." >
            </form>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="http://localhost:8080/diary/findAll">主页<span class="sr-only">(current)</span></a></li>
                <li><a href="#">详情</a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href=""></a></li>
                <li><a href=""></a></li>
                <li><a href=""></a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">



            <h2 class="page-header">日记管理</h2>






                                <h4 class="modal-title" id="exampleModalLabel">修改日记</h4>

                           <div class="modal-body">
                                <form action="/diary/update" method="post">
                                    <#list diaryl as item>
                                    <tr>
                                        <td>
                                    <div class="form-group">
                                        <label for="recipient-name" class="control-label">id：</label>
                                        <input type="hidden" class="form-control" id="id" name="title" value="${item.id}">
                                    </div>
                                        </td>
                                        <td>
                                    <div class="form-group">
                                        <label for="recipient-name" class="control-label">标题：</label>
                                        <input type="text" class="form-control" id="title" name="title" value="${item.title}">
                                    </div>
                                        </td>
                                        <td>
                                    <div class="form-group">
                                        <label for="recipient-name" class="control-label">内容</label>
                                        <input type="text" class="form-control" id="content" name="content" value="${item.content}">
                                    </div>
                                        </td>
                                        <td>
                                    <div class="form-group">
                                        <label for="message-text" class="control-label">天气</label>
                                        <textarea class="form-control" id="weather" name="weather" value="${item.weather}"></textarea>
                                    </div>
                                        </td>
                                    </tr>
                               </#list>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal"></button>
                                <button type="submit" class="btn btn-primary">保存</button>
                            </div>
                        </div>
                        </form>

                    </div>
                </div>


            </h2>


        <#--            <#list diaryList as item>
                        <tr>
                        <td>${item.id}</td>
                        <td>${item.title}</td>
                        <td>${item.content}</td>
                        <td>${item.weather}</td>
                        <td>
                        </td>
                        </tr>
                    </#list>-->






                </table>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../assets/js/jquery.min.js"><\/script>')</script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="../assets/js/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
