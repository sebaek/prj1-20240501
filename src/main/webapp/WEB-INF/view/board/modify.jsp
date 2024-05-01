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
<c:import url="/WEB-INF/fragment/navbar.jsp"/>
<h3>${board.id}번 게시물 수정</h3>
<form action="/modify" method="post">
    <input type="hidden" name="id" value="${board.id}">
    <div>
        제목
        <input type="text" name="title" value="${board.title}" required>
    </div>
    <div>
        본문
        <textarea cols="30" rows="10" name="content" required>${board.content}</textarea>
    </div>
    <div>
        작성자
        <input type="text" value="${board.writer}" name="writer" required>
    </div>
    <div>
        <button>수정</button>
    </div>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
