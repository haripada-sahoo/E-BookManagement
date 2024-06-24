<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
 <html>
<head>
<meta charset="ISO-8859-1">
<title>EBook: Register</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
    <jsp:include page="all_component/navbar.jsp"/>
    <div class="container p-2">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                        <h4 class="text-center">Registration Page</h4>
                        
                        <c:if test="${not empty succMsg }">
                        <p class="text-center text-success">${succMsg}</p>
                        <c:remove var="succMsg" scope="session"/>
                        </c:if>
                         <c:if test="${not empty failedMsg}">
                        <p class="text-center text-danger">${failedMsg}</p>
                        <c:remove var="failedMsg" scope="session"/>
                        </c:if>
                        <form action="reg" method="post">
                            <div class="form-group">
                                <label for="fullName">Enter Full Name</label>
                                <input type="text" class="form-control" id="fullName" name="fname" required="required">
                            </div>
                            <div class="form-group">
                                <label for="email">Email address</label>
                                <input type="email" class="form-control" id="email" name="email" required="required">
                            </div>
                            <div class="form-group">
                                <label for="phoneNo">Phone No</label>
                                <input type="number" class="form-control" id="phoneNo" name="phno" required="required">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password" name="password" required="required">
                            </div>
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="check" name="check">
                                <label class="form-check-label" for="check">Agree terms & Condition</label>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="all_component/footer.jsp"/>
</body>
</html>
