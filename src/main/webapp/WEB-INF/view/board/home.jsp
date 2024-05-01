<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>

<c:import url="/WEB-INF/fragment/navbar.jsp"></c:import>

<%--div.container>div.row>div.col-6--%>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-6">


            <h3 class="mb-4">게시물 목록</h3>

            <table class="table table-striped">
                <thead>
                <tr>
                    <th style="width: 50px;">#</th>
                    <th>제목</th>
                    <th style="width: 170px">작성자</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${boardList}" var="board">
                    <c:url value="/board" var="viewLink">
                        <c:param name="id" value="${board.id}"/>
                    </c:url>
                    <tr>
                        <td>${board.id}</td>
                        <td>
                            <a href="${viewLink}">
                                    ${board.title}
                            </a>
                        </td>
                        <td>${board.writer}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
