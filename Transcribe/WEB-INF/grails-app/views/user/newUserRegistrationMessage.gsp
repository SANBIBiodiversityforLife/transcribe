<%@ page import="au.org.ala.volunteer.DateConstants" %>
<%@page defaultCodec="none" %>

This message was automatically generated by <g:message code="default.application.name"/>. Please do not reply to this message directly.

A new user has registered on <g:message code="default.application.name"/>.

Name : ${user.displayName}
Email : ${user.userId}
User created: ${formatDate(date: user.created, format: DateConstants.DATE_TIME_FORMAT)}

You are receiving this email because you are a site administrator. If you do not wish to receive any more of these messages please contact
the <g:message code="default.application.name"/> team.
