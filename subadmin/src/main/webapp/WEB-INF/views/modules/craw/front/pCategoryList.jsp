<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fns" uri="/WEB-INF/tlds/fns.tld" %>
<c:set var="ctx" value="${pageContext.request.contextPath}${fns:getFrontPath()}"/>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta name="format-detection" content="telephone=no">
        <title>FrozenUI Demo</title>
        <script type="text/javascript" src="http://tajs.qq.com/stats?sId=37342703" charset="UTF-8"></script>
        <link rel="stylesheet" href="${ctxStatic}/css/frozen.css">
        <link rel="stylesheet" href="${ctxStatic}/demo.css">
        <script src="../lib/zepto.min.js"></script>
        <script src="../js/frozen.js"></script>
    </head>
    
    <body ontouchstart>
        <header class="ui-header ui-header-positive ui-border-b">
            <i class="ui-icon-return" onclick="history.back()"></i><h1>基础样式 </h1><button class="ui-btn">回首页</button>
        </header>
        <footer class="ui-footer ui-footer-btn">
            <ul class="ui-tiled ui-border-t">
                <li data-href="index.html" class="ui-border-r"><div>基础样式</div></li>
                <li data-href="ui.html" class="ui-border-r"><div>UI组件</div></li>
                <li data-href="js.html"><div>JS插件</div></li>
            </ul>
        </footer>
        <section class="ui-container">



<section id="list">
    <div class="demo-item">
        <div class="demo-block">
            <ul class="ui-list ui-list-pure ui-border-b">
                <li class="ui-border-t" data-href="type.html">
                  文本
                </li>
                <li class="ui-border-t" data-href="icon.html">
                  图标
                </li>
                <li class="ui-border-t" data-href="layout.html">
                  布局
                </li>
                <li class="ui-border-t" data-href="grid.html">
                  网格
                </li>
                <li class="ui-border-t" data-href="arrowlink.html">
                  箭头链接
                </li>
                <li class="ui-border-t" data-href="border.html">
                  1px解决方案
                </li>
                <li class="ui-border-t" data-href="nowrap.html">
                  文字截断
                </li>
                <li class="ui-border-t" data-href="placehold.html">
                  占位
                </li>
                <li class="ui-border-t" data-href="whitespace.html">
                  两端留白
                </li>
                <li class="ui-border-t" data-href="justify.html">
                  两端对齐
                </li>
            </ul>
        </div>
    </div>
</section>


 
        </section><!-- /.ui-container-->
        <script>
        $('.ui-list li,.ui-tiled li').click(function(){
            if($(this).data('href')){
                location.href= $(this).data('href');
            }
        });
        $('.ui-header .ui-btn').click(function(){
            location.href= 'index.html';
        });
        </script>
    </body>
</html>