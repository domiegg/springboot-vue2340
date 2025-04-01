<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp" %>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
		  rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8"
			src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8"
			src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8"
			src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
	.error {
		color: red;
	}
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
	<div class="spinner">
		<div class="double-bounce1"></div>
		<div class="double-bounce2"></div>
	</div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
	<!-- Page Content -->
	<div id="content">
		<!-- Top Navigation -->
		<%@ include file="../../static/topNav.jsp" %>
		<!-- Menu -->
		<div class="container menu-nav">
			<nav class="navbar navbar-expand-lg lochana-bg text-white">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="ti-menu text-white"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul id="navUl" class="navbar-nav mr-auto">

					</ul>
				</div>
			</nav>
		</div>
		<!-- /Menu -->
		<!-- Breadcrumb -->
		<!-- Page Title -->
		<div class="container mt-0">
			<div class="row breadcrumb-bar">
				<div class="col-md-6">
					<h3 class="block-title">编辑</h3>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb">
						<li class="breadcrumb-item">
							<a href="${pageContext.request.contextPath}/index.jsp">
								<span class="ti-home"></span>
							</a>
						</li>
						<li class="breadcrumb-item">管理</li>
						<li class="breadcrumb-item active">编辑</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /Page Title -->

		<!-- /Breadcrumb -->
		<!-- Main Content -->
		<div class="container">

			<div class="row">
				<!-- Widget Item -->
				<div class="col-md-12">
					<div class="widget-area-2 lochana-box-shadow">
						<h3 class="widget-title">充值页面</h3>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label>充值金额</label>
									<input id="balance" name="balance" class="form-control" type="number"
										   value="0" class="layui-input" >
								</div>
								<div class="form-group col-md-12 mb-3">
									<button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
									<button onclick="chongqian()" type="button" class="btn btn-primary btn-lg">充值</button>
								</div>
							</div>
					</div>
				</div>
				<!-- /Widget Item -->
			</div>
		</div>
		<!-- /Main Content -->
	</div>
	<!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
	<span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "yonghuxinxi";
    var pageType = "recharge";


    // 表单提交
    function chongqian() {
        var yuer = document.getElementById("balance").value;
            httpJson("yonghuxinxi/congzhi?yuer="+yuer, "POST", {}, (res) => {
                if(res.code == 0){
					alert("充值成功");
            }
        })
            ;
    }




    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            window.location.href = "list.jsp"
        });
        readonly();
    });

    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>