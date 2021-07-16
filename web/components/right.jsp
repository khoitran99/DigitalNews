<%-- 
    Document   : right
    Created on : Jun 28, 2021, 9:29:52 AM
    Author     : khoi.tranvan
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="title">

    Digital News

</div>
<div class="shortDes">
    ${lastD.description}
</div>
<div class="title">
    Search
</div>
<form method="get" action="search">
    <input type="text" value="${keyword}" name="keyword" >
    <button type="submit">Go</button>
</form>
<div class="title">
    Last Article
</div>
<c:forEach items="${top5}" var="o">
    <a href="detail?id=${o.id}" class="lastArticle">${o.title}</a><br>
</c:forEach>
