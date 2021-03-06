<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>商品分类管理</title>
	<meta name="decorator" content="default"/>
	<%@include file="/WEB-INF/views/include/treetable.jsp" %>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#treeTable").treeTable({expandLevel : 1}).show();
		});
    	function updateSort() {
			loading('正在提交，请稍等...');
	    	$("#listForm").attr("action", "${ctx}/sys/menu/updateSort");
	    	$("#listForm").submit();
    	}
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/craw/pCategory/list">商品分类列表</a></li>
		<li><a href="${ctx}/craw/pCategory/form">商品分类添加</a></li>
	</ul>
	<sys:message content="${message}"/>
	<form id="listForm" method="post">
		<table id="treeTable" class="table table-striped table-bordered table-condensed hide">
			<thead>
				<tr><th style="text-align:center;width: 30%;">分类名称</th>
				<th>链接</th><th style="text-align:center;">排序</th><th>可见</th><th>权限标识</th><shiro:hasPermission name="sys:menu:edit"><th>操作</th></shiro:hasPermission></tr>
			</thead>
			<tbody>
			<c:forEach items="${list}" var="menu">
				<tr id="${menu.id}" pId="${menu.parent ne '1'?menu.parent:'0'}">
					<td nowrap><i class="icon-${not empty menu.icon?menu.icon:' hide'}"></i><a href="${ctx}/sys/menu/form?id=${menu.id}">${menu.name}</a></td>
					<td title="${menu.name}">${fns:abbr(menu.name,30)}</td>
					<td style="text-align:center;">
						<shiro:hasPermission name="sys:menu:edit">
							<input type="hidden" name="ids" value="${menu.id}"/>
							<input name="sorts" type="text" value="${menu.name}" style="width:50px;margin:0;padding:0;text-align:center;">
						</shiro:hasPermission><shiro:lacksPermission name="sys:menu:edit">
							${menu.name}
						</shiro:lacksPermission>
					</td>
					<td>12</td>
					<td>12</td>
					<shiro:hasPermission name="sys:menu:edit"><td nowrap>
						<a href="${ctx}/sys/menu/form?id=${menu.id}">修改</a>
						<a href="${ctx}/sys/menu/delete?id=${menu.id}" onclick="return confirmx('要删除该菜单及所有子菜单项吗？', this.href)">删除</a>
						<a href="${ctx}/craw/pCategory/form?parent=${menu.id}">添加下级菜单</a> 
					</td></shiro:hasPermission>
				</tr>
			</c:forEach>
			
			</tbody>
		</table>
	 </form>
</body>
</html>