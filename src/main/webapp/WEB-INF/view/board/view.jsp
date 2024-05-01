<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:import url="/WEB-INF/fragment/navbar.jsp"></c:import>


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

<div>
    <form action="/delete" method="post" onsubmit="return confirm('삭제 하시겠습니까?')">
        <input type="hidden" name="id" value="${board.id}">
        <button>삭제</button>
    </form>
</div>
</body>
</html>
