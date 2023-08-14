<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<jsp:include page="/WEB-INF/views/admin/adminHeader.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
section {
    text-align: center;
    margin: 30px auto;
    width: 80%; /* Adjust the width as needed */
}

/* Center-align the table within the section */
table {
    margin: 30px auto;
}
.pagination {
	justify-content: center;
	margin: 30px auto;
}
</style>
<section>
<div class="admin-member-search-container">
    <form:form
        name="adminMemberSearchFrm" 
        action="${pageContext.request.contextPath}/admin/adminSubscribeSearchByNameOrId.do"
        method="get">
        <label for="searchKeyword">회원검색:</label>
        <select name="searchCategory">
            <option value="memberName">회원명</option>
            <option value="memberId">아이디</option>
        </select>
        <input type="text" id="searchKeyword" name="searchKeyword" placeholder="회원명 또는 아이디">
        <input type="submit" value="검색">
    </form:form>
</div>

<table class="table table-striped table-hover">
    <thead class="table-dark">
        <tr>
            <th>no</th>
            <th>회원아이디</th>
            <th>이름</th>
            <th>전화번호</th>
            <th>이메일</th>
            <th>가입일</th>
            <th>주소</th>
            <th>생일</th>
            <th>관리</th>
        </tr>
    </thead>
    <tbody>
        <c:if test="${empty members}">
            <tr>
				<td colspan="11" class="text-center">조회된 회원이 없습니다.</td>
			</tr>
        </c:if>
        <c:if test="${not empty members}">
            <c:forEach items="${members}" var="member" varStatus="vs">
				<tr>
				    <td>${totalCount - vs.index}</td>
				    <td>${member.memberId}</td>
				    <td>${member.name}</td>
				    <td>${member.phone}</td>
				    <td>${member.email}</td>
				    <td>${member.enrollDate}</td>
				    <td>${member.address}</td>
				    <td>${member.birthday}</td>
				    <td><button onclick="">수정</button></td>
				</tr>
            </c:forEach>
        </c:if>
    </tbody>
</table>
<nav aria-label="...">
	<ul class="pagination pagination-sm">
		<c:forEach begin="1" end="${totalPages}" var="pageNumber">
			<li class="page-item ${page == pageNumber ? 'active' : ''}"><a
				class="page-link"
				href="${pageContext.request.contextPath}/admin/adminSubscribeList.do?page=${pageNumber}">
					<span class="page-number">${pageNumber}</span>
			</a></li>
		</c:forEach>
	</ul>
</nav>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp" />