<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<style>
    .goods img{
        width: 300px;
        height: 300px;
    }
    .goods td {
        font-size: 20px;
    }
    .goods th {
        font-size: 20px;
    }
</style>
<div class="goods">
    <h1>상품 상세 화면</h1>

    <img src="/img/${goods.img1}">
    <img src="/img/${goods.img2}">

        <table class="goods-table">
            <tr>
                <th>상품명</th>
                <td>${goods.mname}</td>
            </tr>
            <tr>
                <th>가격</th>
                <td>${goods.mprice} 원</td>
            </tr>
        </table>
</div>
<hr/>
<form action="/cart" method="post">
    <input type="hidden" name="mno" value="${goods.mno}">
    <button>담기</button>
</form>
<a href="/goods">
    <button>돌아가기</button>
</a>
</body>
</html>