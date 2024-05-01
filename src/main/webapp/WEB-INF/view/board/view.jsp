<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>${board.id} 번 게시물</h3>
<div>
    제목
    <input type="text" value="${board.title}" readonly>
</div>
<div>
    본문
    <textarea cols="30" rows="10" readonly>${board.content}</textarea>
</div>
<div>
    작성자
    <input type="text" readonly value="${board.writer}">
</div>
<div>
    작성일시
    <input type="datetime-local" readonly value="${board.inserted}">
</div>
</body>
</html>
