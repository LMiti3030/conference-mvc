<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- adding the tag library for forms for jsp --%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
    <title>Registration</title>

    <style>
        .error {
            color: #ff0000;
        }

        .errorblock {
            color: #000;
            background-color: #ffEEEE;
            border: 3px solid #ff0000;
            padding: 8px;
            margin: 16px;
        }
    </style>

</head>
<body>
    <h1>Registration </h1>
    <form:form modelAttribute="registration">
        <form:errors path="*" cssClass="errorblock" element="div" />
        <table>
            <tr>
                <td>  <spring:message code="name" />:  </td>
                <td>
                     <form:input path="name"/>
                     <%-- path - the value is tied to a backing object --%>
                </td>
                <td>
                    <form:errors path="name" cssClass="error"/>
                </td>
            </tr>

            <tr>
                 <td colspan="3">
                      <input type="submit" value="<spring:message code="save.changes"/>"/>
                 </td>
            </tr>
        </table>
    </form:form>
</body>
</html>