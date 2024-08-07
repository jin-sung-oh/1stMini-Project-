<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="includes/header.jsp"%>

<html>
<head>
    <title>Goods Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        .ani {
            margin-bottom: 20px;
        }
        .goods-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .goods-item {
            margin: 10px;
            border: 1px solid #ddd;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 500px; /* 고정 너비 설정 */
            box-sizing: border-box;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .goods-item img {
            width: 100%; /* 이미지의 가로 길이를 부모 컨테이너의 100%로 설정 */
            height: 500px; /* 이미지의 높이를 고정 */
            object-fit: cover; /* 이미지가 컨테이너를 가득 채우도록 설정 */
        }
        .btn-category {
            margin: 5px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="ani text-center">
        <!-- 카테고리 버튼 -->
        <a href="/goods?ano=${param.ano}&cno=1" class="btn btn-outline-primary btn-category">피규어</a>
        <a href="/goods?ano=${param.ano}&cno=2" class="btn btn-outline-secondary btn-category">라이프</a>
        <a href="/goods?ano=${param.ano}&cno=3" class="btn btn-outline-success btn-category">악세사리</a>
        <a href="/goods?ano=${param.ano}&cno=4" class="btn btn-outline-danger btn-category">간식</a>
        <a href="/goods?ano=${param.ano}&cno=5" class="btn btn-outline-warning btn-category">문구류</a>
    </div>


    <!-- Flexbox를 사용하여 상품을 나란히 배치 -->
    <div class="goods-list">
        <!-- goodslist의 각 상품을 반복하면서 표시 -->
        <c:forEach items="${goodslist}" var="goods">
            <div class="goods-item">
                <!-- 상품 이미지 -->
                <a href="/view?mno=${goods.mno}">
                    <img src="/img/${goods.img1}" alt="${goods.mname}" class="img-fluid">
                </a>
                <!-- 상품명 -->
                <h5>${goods.mname}</h5>
                <!-- 상품 가격 -->
                <p>${goods.mprice} 원</p>
            </div>
        </c:forEach>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>