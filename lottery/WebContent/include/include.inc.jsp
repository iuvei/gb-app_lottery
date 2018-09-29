<%@ page import="java.text.MessageFormat" %>
<%@page import="org.soul.web.init.BaseConfigManager" %>
<%@ include file="include.base.inc.jsp" %>
<%@ include file="include.base.inc.i18n.jsp" %>
<%@ include file="include.base.inc.ext.jsp" %>
<c:set var="resLocalRoot" value='<%=MessageFormat.format(BaseConfigManager.getConfigration().getResRoot(),request.getServerName()) %>'/>


