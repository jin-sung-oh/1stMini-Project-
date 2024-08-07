
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .cart-item {
            display: flex;
            align-items: center;
            border-bottom: 1px solid #ddd;
            padding: 10px;
        }
        .cart-item img {
            width: 50px; /* 이미지 크기를 작게 설정 */
            height: auto;
            margin-right: 20px; /* 이미지와 텍스트 사이의 여백 설정 */
        }
        .cart-item-details {
            display: flex;
            flex-direction: column;
        }
        .cart-item-detail {
            margin-right: 20px;
        }
        .cart-item span {
            margin-right: 20px; /* 각 항목 사이의 여백 설정 */
        }
    </style>
</head>
<body>
<h1>cartpage</h1>
<div>
    <c:forEach var="item" items="${wantedGoods}">
        <div class="cart-item">
            <img src="/img/${goods.image1}" alt="${goods.mname}">
            <div class="cart-item-details">
                <span class="cart-item-detail">상품명: ${goods.mname}</span>
                <span class="cart-item-detail">수량: ${goods.qty}</span>
                <span class="cart-item-detail">가격: ${goods.mprice} 원</span>
            </div>
        </div>
    </c:forEach>
</div>
<a href="/main">
    <button>주문</button>
</a>
</body>
</html>
