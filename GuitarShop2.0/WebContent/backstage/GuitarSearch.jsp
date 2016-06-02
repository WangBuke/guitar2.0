<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>GuitarSellSystem</title>
  <meta name="description" content="这是销售页面">
  <meta name="keywords" content="table">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="assets/css/admin.css">
</head>
<body>
<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong>Guitar销售管理系统</strong> <small>主页</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">暂无</span></a></li>
      <li class="am-dropdown">
        <a class="am-dropdown-toggle"  href="javascript:;">
          <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li><a href="GuitarSearch.html"><span class="am-icon-home"></span> 首页</a></li>
      <li class="admin-parent">
        <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-file"></span> 页面模块 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
        <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
          <li><a href="GuitarSearch.jsp" class="am-cf"><span class="am-icon-check"></span> 查询系统<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
          <li><a href="GuitarAdd.jsp"><span class="am-icon-puzzle-piece"></span> 新增吉他</a></li>
          <li><a href="404.html"><span class="am-icon-th"></span> 记录</a></li>
          <li><a href="404.html"><span class="am-icon-calendar"></span> 系统日志</a></li>
          <li><a href="404.html"><span class="am-icon-bug"></span> 404</a></li>
        </ul>
      </li>
      <li><a href="404.html"><span class="am-icon-table"></span> 表格</a></li>
      <li><a href="404.html"><span class="am-icon-pencil-square-o"></span> 表单</a></li>
      <li><a href="404.html"><span class="am-icon-sign-out"></span> 注销</a></li>
    </ul>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-bookmark"></span> 公告</p>
        <p>时光静好，与君语；细水流年，与君同。——guitar</p>
      </div>
    </div>

    <div class="am-panel am-panel-default admin-sidebar-panel">
      <div class="am-panel-bd">
        <p><span class="am-icon-tag"></span> wiki</p>
        <p>Welcome to the guitar sell</p>
      </div>
    </div>
  </div>
  <!-- sidebar end -->

  <!-- content start -->
    <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">吉他销售</strong> / <small>查询</small></div>
    </div>

    <div class="am-g">
      <div class="am-u-sm-12">
        <form action="searchGuitar" method="post" class="am-form">
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th class="table-id">序列号</th>
                <th class="table-title">制作人</th>
                <th class="table-type">模型</th>
                <th class="table-author">类型</th>
                <th class="table-set">背部材质</th>
                <th class="table-set">顶部材质</th>
                <th class="table-set">价格</th>
                <th class="table-set">操作</th>
              </tr>
          </thead>
          <tbody>
	          <c:forEach items="${guitars }" var="guitar">
	         	<tr>
	                <td class="table-id">${guitar.serialNumber }</td>
	                <td class="table-title">${guitar.spec.builder }</td>
                	<td class="table-set">${guitar.spec.model }</td>
	                <td class="table-type">${guitar.spec.type }</td>
	                <td class="table-author">${guitar.spec.backWood }</td>
	                <td class="table-set">${guitar.spec.topWood }</td>
	                <td class="table-set">${guitar.price }</td>
	                <td class="table-set"><a href="delGuitar?guitar.serialNumber=${guitar.serialNumber }">删除</a></td>
	              </tr>
	          </c:forEach>
          </tbody>
        </table>
         <input type="submit" class="am-btn am-btn-primary" id="submit" value="查询"/>
        </form>
      </div>

    </div>
  </div>
  <!-- content end -->
</div>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/amazeui.min.js"></script>
	<script src="assets/js/app.js"></script>
</body>
</html>
