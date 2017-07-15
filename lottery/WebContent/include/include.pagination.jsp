<%@ page import="org.soul.web.session.SessionManagerBase" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:set var="pageNumber" value="${command.paging.pageNumber}"/>
<c:set var="firstPageNumber" value="${command.paging.firstPageNumber}"/>
<c:set var="firstPage" value="${command.paging.firstPage}"/>
<c:set var="prePage" value="${command.paging.prePage}"/>
<c:set var="midBeginPage" value="${command.paging.midBeginPage}"/>
<c:set var="midEndPage" value="${command.paging.midEndPage}"/>
<c:set var="slider" value="${command.paging.slider}"/>
<c:set var="totalCount" value="${command.paging.totalCount}"/>
<c:set var="lastPageNumber" value="${command.paging.lastPageNumber}"/>
<c:set var="lastPage" value="${command.paging.lastPage}"/>
<c:set var="nextPage" value="${command.paging.nextPage}"/>
<c:set var="views" value='<%=I18nTool.getI18nMap(SessionManagerBase.getLocale().toString()).get("views") %>'/>

    <input type="hidden" name="paging.pageNumber" value="${command.paging.pageNumber}">
    <input type="hidden" name="paging.prePage" value="${command.paging.prePage}">
    <input type="hidden" name="paging.nextPage" value="${command.paging.nextPage}">
    <input type="hidden" name="paging.firstPageNumber" value="${command.paging.firstPageNumber}">
    <input type="hidden" name="paging.lastPageNumber" value="${command.paging.lastPageNumber}">
    <input type="hidden" name="paging.totalCount" value="${command.paging.totalCount}">
    <div class="paging">
        <div class="paging-left">
            <div class="paging-form-inline">
                <span class="paging-tit">每页显示</span>
                <select class="paging-select" name="paging.pageSize" onchange="gotoPage(1,this)">
                    <option value="20" ${command.paging.pageSize==20?'selected':''}>20条</option>
                    <option value="30" ${command.paging.pageSize==30?'selected':''}>30条</option>
                    <option value="50" ${command.paging.pageSize==50?'selected':''}>50条</option>
                    <option value="100" ${command.paging.pageSize==100?'selected':''}>100条</option>
                    <option value="200" ${command.paging.pageSize==200?'selected':''}>200条</option>
                </select>
                <label class="">共${command.paging.totalCount}条</label>
            </div>
        </div>
        <div class="paging-right">
            <ul class="paging-btn-list">
            <c:if test="${command.paging.pageNumber>1}">
                <li class=""><a href="javascript:void(0)" onclick="gotoPage(1,this)"><i class="paging-ico first-ico"></i></a></li>
                <li class=""><a href="javascript:void(0)" onclick="gotoPage(${command.paging.prePage},this)"><i class="paging-ico go-ico"></i></a></li>
            </c:if>
            <c:if test="${command.paging.pageNumber==1}">
                <li class=""><a href="javascript:void(0)" disabled="true"><i class="paging-ico first-ico"></i></a></li>
                <li class=""><a href="javascript:void(0)" disabled="true"><i class="paging-ico go-ico"></i></a></li>
            </c:if>

            <c:if test="${midBeginPage > firstPageNumber}">
                <c:set var="end" value="${midBeginPage}"/>
                <c:if test="${firstPageNumber + slider < midBeginPage}">
                    <c:set var="end" value="${firstPageNumber + slider}"/>
                </c:if>
                <c:set var="index"/>
                <c:forEach var="i" begin="${firstPageNumber}" end="${end-1}" step="1">
                    <li aria-controls="editable" class=""><a name="paging.Page" href="javascript:void(0)" onclick="gotoPage(${i+1-firstPageNumber},this)" data-page="${i}">${i+1-firstPageNumber}</a></li>
                    <c:set var="index" value="${i}"/>
                </c:forEach>
                <c:if test="${index < midBeginPage && index + 1 != midBeginPage}">
                    <li class="disabled"><a href="javascript:void(0);">...</a></li>
                </c:if>
            </c:if>
            <c:if test="${totalCount == null}">
                <li class="disabled"><a href="javascript:void(0);">1</a></li>
            </c:if>
            <c:forEach var="i" begin="${midBeginPage}" end="${midEndPage}" step="1">
                <c:if test="${i == pageNumber}">
                    <li class="active disabled"><a name="paging.Page" href="javascript:void(0)" data-page="0">${i+1-firstPageNumber}</a></li>
                </c:if>
                <c:if test="${i != pageNumber && totalCount > 0}">
                    <li aria-controls="editable" class="">
                        <a name="paging.Page" href="javascript:void(0)" onclick="gotoPage(${i+1-firstPageNumber},this)" data-page="${i}">${i+1-firstPageNumber}</a>
                    </li>
                </c:if>
            </c:forEach>

            <c:set var="endPageIndex" value="${midEndPage}"/>
            <c:if test="${lastPageNumber - midEndPage > slider}">
                <li class="disabled"><a href="javascript:void(0);">...</a></li>
                <c:set var="endPageIndex" value="${lastPageNumber - slider}"/>
            </c:if>

            <c:forEach var="i" begin="${endPageIndex+1}" end="${lastPageNumber}" step="1">
                <li aria-controls="editable" class=""><a name="paging.Page" href="javascript:void(0)" onclick="gotoPage(${i+1-firstPageNumber},this)" data-page="${i}">${i+1-firstPageNumber}</a></li>
            </c:forEach>




            <c:if test="${command.paging.pageNumber<command.paging.lastPageNumber}">
                <li class=""><a href="javascript:void(0)" onclick="gotoPage(${command.paging.nextPage},this)"><i class="paging-ico retreat-ico"></i></a></li>
                <li class=""><a href="javascript:void(0)" onclick="gotoPage(${command.paging.lastPageNumber},this)"><i class="paging-ico last-ico"></i></a></li>
            </c:if>
            <c:if test="${command.paging.pageNumber==command.paging.lastPageNumber}">
                <li class=""><a href="javascript:void(0)"><i class="paging-ico retreat-ico"></i></a></li>
                <li class=""><a href="javascript:void(0)"><i class="paging-ico last-ico"></i></a></li>
            </c:if>
            </ul>
            <div class="paging-form-inline">
                <label class="m-l-sm">共${command.paging.lastPageNumber}页<%--，每页${command.paging.pageSize}条，共${command.paging.totalCount}条。--%></label>
                <label class="m-l">第<input type="number" min="1" id="input-number" value="${command.paging.pageNumber}" class="input-sm" style="border: 1px solid #dddddd;height: 27px">页</label>
                <button class="paging-btn" onclick="gotoPage(null,this)">跳转</button>
            </div>
        </div>
    </div>

