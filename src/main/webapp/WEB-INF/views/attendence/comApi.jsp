<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        #container {
            max-width: 900px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }

        #searchArea {
            display: flex;
            margin-bottom: 20px;
        }

        input[type="text"] {
            flex: 1;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        #searchBtn {
            padding: 10px 20px;
            border: none;
            background-color: #007bff;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
        }

        #resultArea {
            margin-top: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th,
        td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .hidden {
            display: none;
        }

        .name:hover {
            cursor: pointer;
        }
    </style>
</head>

<body>
    <div id="container">
    	<form method="get" action="/att/comapi">
        <div id="searchArea">
            <input type="text" name="searchWord">
            <input type="hidden" name="id" value="${id }">
            <button type="submit" id="searchBtn">검색</button>
        </div>
        </form>

        <div id="resultArea">
            <div>
                회사 검색 결과 (<span id="resultSize">${cnt }건</span>)
            </div>
            <table id="resultList">
                <tr>
                    <th>NO</th>
                    <th>회사명</th>
                    <th>대표</th>
                    <th>주 사업</th>
                    <th>주소</th>
                    <th style="width: 50px;">저장</th>
                </tr>
            <c:forEach var="company" items="${companies}">
			<tr>
				<form method="post" action="/att/comapi">
				<input type="hidden" name="comName" value="${company.name}" />
				<td>${company.num}</td>
				<td>${company.name}</td>
				<td>${company.representative}</td>
				<td>${company.business}</td>
				<td>${company.address}</td>
				<td><button type="submit" id="save">저장</button></td>
				</form>
			</tr>
			</c:forEach>
            </table>
        </div>
    </div>

	<script>
	const save = document.querySelector("#save");
	save.addEventListener("click", function(){
		
	})
	</script>
</body>


</html>