<%@ tag import="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd" %>
<%@ tag import="so.wwb.gamebox.web.cache.Cache" %>
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@attribute name="siteId" type="java.lang.Integer" required="true" description="站点id"%>
<%@attribute name="code" type="java.lang.String" required="true" description="彩票code"%>
<%@attribute name="betCode" type="java.lang.String" required="true" description="玩法代号"%>
<%@attribute name="bet_num" type="java.lang.String" required="true" description="号码"%>

<%
    SiteLotteryOdd siteLotteryOdds = Cache.getSiteLotteryOdds(siteId, code + "@" + betCode + "@" + bet_num);
%>

<%=siteLotteryOdds.getOdd()%>