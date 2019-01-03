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
    <script src="../jquery-3.2.1.min.js"></script>
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

            <!--      <div class="row placeholders">
                    <div class="col-xs-6 col-sm-3 placeholder">
                      <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                      <h4>Label</h4>
                      <span class="text-muted">Something else</span>
                    </div>
                    <div class="col-xs-6 col-sm-3 placeholder">
                      <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                      <h4>Label</h4>
                      <span class="text-muted">Something else</span>
                    </div>
                    <div class="col-xs-6 col-sm-3 placeholder">
                      <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                      <h4>Label</h4>
                      <span class="text-muted">Something else</span>
                    </div>
                    <div class="col-xs-6 col-sm-3 placeholder">
                      <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                      <h4>Label</h4>
                      <span class="text-muted">Something else</span>
                    </div>
                  </div>-->
            <h2>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">写日记</button>
                <!--<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@fat">Open modal for @fat</button>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">Open modal for @getbootstrap</button>-->

                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="exampleModalLabel">写日记</h4>
                            </div>
                            <div class="modal-body">
                                <form action="/diary/saveDiary" method="post">
                                    <div class="form-group">
                                        <label for="recipient-name" class="control-label">标题：</label>
                                        <input type="text" class="form-control" id="title" name="title">
                                    </div>
                                    <div class="form-group">
                                        <label for="recipient-name" class="control-label">内容</label>
                                        <input type="text" class="form-control" id="content" name="content">
                                    </div>
                                    <div class="form-group">
                                        <label for="message-text" class="control-label">天气</label>
                                        <textarea class="form-control" id="weather" name="weather"></textarea>
                                    </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="submit" class="btn btn-primary">保存</button>
                            </div>
                        </div>
                        </form>

                    </div>
                </div>


            </h2>

            <!--<h2 class="sub-header">
  <a href="add.html" class="btn btn-info">
      <i class="fa fa-plus"></i>&nbsp;&nbsp;写日记</a>

            </h2>-->


            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>编号</th>
                        <th>标题</th>
                        <th>内容</th>
                        <th>天气</th>
                        <th>操作</th>
                        <!--  <th>Header</th>-->
                    </tr>
                    </thead>
                    <tbody>
                    <#list diaryList as item>
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.title}</td>
                        <td>${item.content}</td>
                        <td>${item.weather}</td>
                        <td>
·

                            <!--<a class="btn btn-primary btn-xs" href="#"><i class="fa fa-pencil"></i></a>
                           <a class="btn btn-danger btn-xs" data-toggle="modal" data-id="1" href="#" onclick="deleteRow();"><i class="fa fa-times"></i></a>-->
                            <a data-toggle="modal"  data-target="#exampleModall" onclick="uppd(${item.id})">修改</a>
                            <#--<a href="/diary/updatee?id=${item.id}">修改</a>-->

                            <button onclick="del('${item.id}')">删除</button>
                        <script>
                            function del(id){
                                alert(id);
                                $.post( "/diary/delete", //调用的方法
                                    {"id" : id}, //传递参数，
                                    function(data)
                                    { if(data){ alert("删除成功") }
                                    else{ alert("删除失败") } },
                                    "json"
                                );
                            }
                        </script>
              <script>
                  function uppd(id){
                                alert(id);
                                $.post( "/diary/updatee", //调用的方法
                                    {"id" : id}, //传递参数，
                                    function(data)
                                    { if(data){ alert("删除成功") }
                                    else{ alert("删除失败") } },
                                    "json"
                                );
                            }
              </script>

                        </td>
                    </tr>
                 </#list>





                    <div class="modal fade" id="exampleModall" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="exampleModalLabel">修改日记</h4>
                                </div>
                                <div class="modal-body">
                                    <form>

                                            <div class="form-group">
                                                <label for="recipient-name" class="control-label">id：</label>
                                                <input type="hidden" class="form-control" id="recipient-name" value="${item.id}">
                                            </div>
                                        <div class="form-group">
                                            <label for="recipient-name" class="control-label">标题：</label>
                                            <input type="text" class="form-control" id="recipient-name" value="${item.title}">
                                        </div>
                                        <div class="form-group">
                                            <label for="recipient-name" class="control-label">内容</label>
                                            <input type="text" class="form-control" id="recipient-name" value="${item.content}">
                                        </div>
                                        <div class="form-group">
                                            <label for="message-text" class="control-label">天气</label>
                                            <textarea class="form-control" id="message-text" value="${item.weather}"></textarea>
                                        </div>

                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                    <button type="button" class="btn btn-primary">保存</button>
                                </div>
                            </div>
                        </div>
                    </div>





                    </tbody>
                </table>

                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
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
