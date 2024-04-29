<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <style>
            table {
                width: 100%;
                border-collapse: collapse;
            }

            th,
            td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }

            th {
                background-color: #f2f2f2;
            }

            tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            .memo-input {
                width: 80%;
                margin-right: 5px;
            }

            .memo-button {
                background-color: #007bff;
                color: #fff;
                border: none;
                padding: 6px 12px;
                border-radius: 4px;
                cursor: pointer;
            }

            .char-count {
                font-size: 10px;
                color: #888;
            }
        </style>
    </head>

    <body>
    
    
   	<form action="/att/attend" method="post">
        <div id="today-att">
        
        </div>
        <div>
            <table>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>이름</th>
                        <th>아이디</th>
                        <th style="width: 60px">고유번호</th>
                        <th><input type="checkbox" onclick="checkAllAttendances(this)" />출석 여부</th>
                        <th>비고</th>
                    </tr>
                </thead>
                <tbody id="stuList">
                <c:forEach items="${memberList}"  var="att" varStatus="loop" >
                <tr>
                    <td>${loop.index + 1}
                    <input type="hidden" name="attIndex" value="${loop.index + 1}">
                    </td> 
                    <td>${att.memberName}
                    <input type="hidden" name="memberName" value="${att.memberName}">
                    </td>
                    <td>${att.memberId}
                    <input type="hidden" name="memberId" value="${att.memberId}">
                    </td>
                    
                    <td>${att.memberNum}
                    <input type="hidden" name="memberNum" value="${att.memberNum}">
                    </td>
                     <td>
			           	<input type="checkbox" id="checking" onclick="toggleCheckbox(this)" value="Y">
    					<input type="hidden" name="att">
			        </td>
                    <td>
                        <input type="text" class="memo-input" name="memo" maxlength="40">
                        <span class="char-count">0/40</span>
                    </td>
                </tr>
                
                
                </c:forEach>
                </tbody>
            </table>
            <div style="text-align: right; margin: 20px 20px 0px 0px">
                <button id="saveAtt" type="submit">저장</button>
                <button id="closseWindow" type="button" onclick="closeWindow()">닫기</button>
            </div>
        </div>

       </form>
       <script type="text/javascript">
	    
	       // 페이지가 로드될 때 실행될 함수
	       window.onload = function() {
	           // 현재 페이지 URL에서 쿼리 문자열 파싱
	           const queryString = window.location.search;
	           // URLSearchParams 객체 생성
	           const urlParams = new URLSearchParams(queryString);
	           // dataKey에 해당하는 값 가져오기
	           const dataKeyValue = urlParams.get('dataKey');
	           // 가져온 값 콘솔에 출력 (테스트용)
	           console.log('dataKey 값:', dataKeyValue);
	           
	           document.getElementById('today-att').innerHTML = `<h2 >\${dataKeyValue}출석부</h2>
	        	   <input type="hidden" name="attDate" value="\${dataKeyValue}">`;
	       };
	       
	       
	       function toggleCheckbox(checkbox) {
	    	   var hiddenField = checkbox.nextElementSibling;
	    	    if (checkbox.checked) {
	    	        hiddenField.value = "Y"; 
	    	    } else {
	    	        hiddenField.value = "N"; 
	    	    }
	    }
	       
	       function checkAllAttendances(checkbox) {
	    	    var checkboxes = document.querySelectorAll('input[type="checkbox"][id="checking"]');
	    	    checkboxes.forEach(function(item) {
	    	        item.checked = checkbox.checked;
	    	        toggleCheckbox(item);
	    	    });
	    	}
	       
	       saveAtt.addEventListener("submit", function (e) {
		    	 e.preventDefault();
	    	    const saveMessage = "저장되었습니다.";

	    	    // 저장 메시지를 화면에 표시합니다.
	    	    alert(saveMessage);
	    	    // 저장 메시지를 받으면 창을 닫습니다.
	    	    
	    	    this.form.submit();

	    	   
	       });
	       function closeWindow() {
               window.close();
           }
   </script>
    </body>
   
</html>
