<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>새 게시물 작성</h3>

<form action="/add" method="post">
    <div>
        제목
        <input type="text" name="title" required>
    </div>
    <div>
        본문
        <textarea name="content" cols="30" rows="10" required></textarea>
    </div>
    <div>
        작성자
        <input type="text" name="writer" required>
    </div>
    <div>
        <button>저장</button>
    </div>
</form>

</body>
</html>
