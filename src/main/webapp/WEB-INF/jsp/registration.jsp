<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- adding the tag library for forms for jsp --%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
    <title>Registration</title>
</head>
<body>
    <h1>Registration </h1>
    <form:form modelAttribute="registration">
        <table>
            <tr>
                <td>  <spring:message code="name" />:  </td>
                <td>
                     <form:input path="name"/>
                     <%-- path - the value is tied to a backing object --%>
                </td>
            </tr>

            <tr>
                 <td colspan="2">
                     <input type="submit" value="<spring:message code="save.changes"/>"/>
                 </td>
            </tr>
        </table>
    </form:form>
</body>
</html>