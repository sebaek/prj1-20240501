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


<h3>${board.id} 번 게시물</h3>
<div>
    <label for="inputTitle" class="form-label">
        제목
    </label>
    <input id="inputTitle" class="form-control" type="text" value="${board.title}" readonly>
</div>
<div>
    <label for="textareaContent" class="form-label">
        본문
    </label>
    <textarea id="textareaContent" class="form-control" cols="30" rows="10" readonly>${board.content}</textarea>
</div>
<div>
    <label for="inputWriter" class="form-label">
        작성자
    </label>
    <input id="inputWriter" class="form-control" type="text" readonly value="${board.writer}">
</div>
<div>
    <label for="inputInserted" class="form-label">
        작성일시
    </label>
    <input id="inputInserted" class="form-control" type="datetime-local" readonly value="${board.inserted}">
</div>

<div>
    <form action="/delete" method="post" onsubmit="return confirm('삭제 하시겠습니까?')">
        <input type="hidden" name="id" value="${board.id}">
        <button class="btn btn-danger">삭제</button>
    </form>
</div>

<a href="/modify?id=${board.id}" class="btn btn-secondary">수정</a>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
