<%-- 
    Document   : search
    Created on : Jun 27, 2021, 4:36:45 PM
    Author     : khoi.tranvan
--%>

<%@page import="java.lang.String"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body onload="hightlight()">
        <div class="container">
            <%@include file="components/header.jsp" %>
            <div class="main">
                <div class="left">
                    <div class="per_article">
                        <div class="resulttotal" >
                                ${result}
                            </div>
                        </div>
                    <c:forEach items="${listSearchPaging}" var="o">
                        <div class="per_article">
                            <div class="title">
                                <a href="detail?id=${o.id}">
                                    ${o.title}
                                </a>
                            </div>
                            <img src="images/${o.image}" alt=""/>
                            <div class="search_des">
                                ${o.description}
                            </div>
                        </div>
                    </c:forEach>

                    <div class="paging">
                        <c:if test="${page!=1}">
                            <c:forEach begin="1" end="${page}" var="i">
                                <a class="${i==index?"active":""}" href="search?index=${i}&keyword=${keyword}">${i}</a>
                            </c:forEach>
                        </c:if>

                    </div>
                </div>
                <div class="right">
                    <%@include file="components/right.jsp" %>
                </div>
            </div>
            <div class="footer">
            </div>
        </div>
        <script>
            var titles = document.querySelectorAll(".title a");
            titles.forEach(function (title) {
                var regex = /${keyword}/ig;
                var result = title.innerHTML.replace(regex, function (x) {
                    return "<mark>" + x + "</mark>";
                });
                title.innerHTML = result;
            });
        </script>
    </body>

</html>
