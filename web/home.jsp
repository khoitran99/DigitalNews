<%-- 
    Document   : home
    Created on : Jun 27, 2021, 4:36:36 PM
    Author     : khoi.tranvan
--%>

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
    <body>
        <div class="container">
            <%@include file="components/header.jsp" %>
            <div class="main">
                <div class="left">
                    <div class="title">
                        ${detail.title}
                    </div>
                    <div class="image">
                        <img src="images/${detail.image}" alt=""/>
                    </div>
                    <div class="des">
                        ${detail.content}
                    </div>
                    <div class="author">
                        <img src="images/timeicon.gif" alt=""/>
                        <img src="images/comment.gif" alt=""/>
                        <span class="forFloat">
                            ${detail.author} | ${detail.createdDate}
                        </span>
                    </div>
                </div>
                <div class="right">
                    <%@include file="components/right.jsp" %>
                </div>
            </div>
            <div class="footer">

            </div>
        </div>
    </body>
</html>
