<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/jsp/pub/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>长安铃木数据采集系统</title>
<link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/css/admin.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/css/lyz.calendar.css" rel="stylesheet" type="text/css" />
<!-- <script type="text/javascript"	src="<%=request.getContextPath()%>/js/jquery.js"> </script> -->
<script type="text/javascript"	src="<%=request.getContextPath()%>/js/jquery-1.5.1.js"> </script>
<script type="text/javascript"	src="<%=request.getContextPath()%>/js/lyz.calendar.min.js"> </script>
<script type="text/javascript">
function search(){
	var r_vin = document.getElementById("r_vin");
	var r_abon = document.getElementById("r_abon");
	var r_type = document.getElementById("r_type");
	var r_tqdr = document.getElementById("r_tqdr");
	var url = "<c:url value="/suzuki/airtightCheck.do?m=list"/>";
	if(r_vin.value!=""){
		url+="&r_vin="+r_vin.value;
	}
	if(r_abon.value!=""){
		url+="&r_abon="+r_abon.value;
	}
	if(r_type.value!=""){
		url+="&r_type="+r_type.value;
	}
	if(r_tqdr.value!=""){
		url+="&r_tqdr="+r_tqdr.value;
	}
	if(txtBeginDate.value!=""){
		url+="&txtBeginDate="+txtBeginDate.value;
	}
	if(txtEndDate.value!=""){
		url+="&txtEndDate="+txtEndDate.value;
	}
	location=url;
}

function exportExcel(){
	var r_vin = document.getElementById("r_vin");
	var r_abon = document.getElementById("r_abon");
	var r_type = document.getElementById("r_type");
	var r_tqdr = document.getElementById("r_tqdr");
	var url = "<c:url value="/suzuki/airtightCheck.do?m=listExcel"/>";
	if(r_vin.value!=""){
		url+="&r_vin="+r_vin.value;
	}
	if(r_abon.value!=""){
		url+="&r_abon="+r_abon.value;
	}
	if(r_type.value!=""){
		url+="&r_type="+r_type.value;
	}
	if(r_tqdr.value!=""){
		url+="&r_tqdr="+r_tqdr.value;
	}
	if(txtBeginDate.value!=""){
		url+="&txtBeginDate="+txtBeginDate.value;
	}
	if(txtEndDate.value!=""){
		url+="&txtEndDate="+txtEndDate.value;
	}
	location=url;
}

</script>
<script>
    $(function () {
        $("#txtBeginDate").calendar({
            controlId: "divDate",                                 // 弹出的日期控件ID，默认: $(this).attr("id") + "Calendar"
            speed: 200,                                           // 三种预定速度之一的字符串("slow", "normal", or "fast")或表示动画时长的毫秒数值(如：1000),默认：200
            complement: true,                                     // 是否显示日期或年空白处的前后月的补充,默认：true
            readonly: true,                                       // 目标对象是否设为只读，默认：true
            upperLimit: new Date(),                               // 日期上限，默认：NaN(不限制)
            lowerLimit: new Date("2011/01/01"),                   // 日期下限，默认：NaN(不限制)
        });
        $("#txtEndDate").calendar();
    });
</script>
</head>
<body>
	<div class="wrap">
		<!--头部定义开始-->
		<div id="header" class="main">
			<jsp:include page="/WEB-INF/jsp/pub/header.jsp"></jsp:include>
		</div>
		<!--头部定义结束-->
		<!--中部内容定义开始-->
		<div class="main">
			<!--右侧内容定义-->

			<div class="c_spacing"></div>
			<div id="instructionalResearch" class="mediumTurquoise"
				style="margin-top:20px;">
				<dl>
					<dt>
						<em><a href="<c:url value="#"/>">燃油气密查询</a></em>
					</dt>

				</dl>
			</div>
			<div class="c_spacing"></div>
		</div>
		<!-- 下面是长安铃木的查询内容 -->
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td valign="top">
					<div id="c01">
						<dl>
						    <dt style="padding-right:5px;">
								VIN码:<input type="text" class="qidian" id="r_vin" name="r_vin"
									value="${r_vin}" />
							</dt>
							<dt style="padding-right:5px;">
								ABON号：<input type="text" class="qidian" id="r_abon" name="r_abon"
									value="${r_abon}" />
							</dt>
							<dt style="padding-right:5px;">
								车型：<select id="r_type" name="r_type" style="width:100px;" >
								<option value="">全部</option>
								<c:forEach items="${r_typeList}" var="menu">
									<option value="${menu.r_type}" ${menu.r_type==r_type?'selected=selected':''}><c:out value="${menu.r_type}"/></option>
								</c:forEach>
								</select>
							</dt>
							<dt style="padding-right:5px;">
								检测结果：<select id="r_tqdr" name="r_tqdr" style="width:100px;" >
								<option value="">全部</option>
								<c:forEach items="${r_tqdrList}" var="menu">
									<option value="${menu.r_tqdr}" ${menu.r_tqdr==r_tqdr?'selected=selected':''}><c:out value="${menu.r_tqdr}"/></option>
								</c:forEach>
								</select>
							</dt>
							<dt style="padding-right:5px;">
							开始时间：<input id="txtBeginDate" style="width:70px;" value="${txtBeginDate}" />
  
							结束时间：<input id="txtEndDate" style="width:70px;" value="${txtEndDate}" />
						</dt>
							<dd style="padding-right:5px;">
								<input type="button" value="查询" class="chaxun"
									onclick="search()" />
							</dd>
							<dd style="padding-right:5px;">
								<input type="button" value="导出" class="chaxun"
									onclick="exportExcel()" />
							</dd>
						</dl>
						<table width="99%" border="0" cellpadding="0" cellspacing="1"
							bgcolor="#dae2e5"  >
							<tr>
								<td  height="30" bgcolor="#e5edfa" align="center">ABON号</td>
								<td  height="30" bgcolor="#e5edfa" align="center">VIN码</td>
								<td  height="30" bgcolor="#e5edfa" align="center">车型</td>
								<td  height="30" bgcolor="#e5edfa" align="center">R_DATE</td>
								<td  height="30" bgcolor="#e5edfa" align="center">R_TIME</td>
								<td  height="30" bgcolor="#e5edfa" align="center">R_QMTP</td>
								<td  height="30" bgcolor="#e5edfa" align="center">R_QMTD</td>
								<td  height="30" bgcolor="#e5edfa" align="center">R_QMDR</td>
								<td  height="30" bgcolor="#e5edfa" align="center">R_TQTP</td>
								<td  height="30" bgcolor="#e5edfa" align="center">R_TQTD</td>
								<td  height="30" bgcolor="#e5edfa" align="center">检测结果</td>
							</tr>
							<c:choose>
								<c:when test="${not empty airtightCheckList}">
									<c:forEach items="${airtightCheckList}" var="antifreeze" varStatus="vs">
										<tr>
											<td height="30" bgcolor="#FFFFFF" align="center"> <c:out value="${antifreeze.r_abon}" /></td>
											<td height="30" bgcolor="#FFFFFF" align="center"> <c:out value="${antifreeze.r_vin}" /></td>
											<td height="30" bgcolor="#FFFFFF" align="center"> <c:out value="${antifreeze.r_type}" /></td>
											<td height="30" bgcolor="#FFFFFF" align="center"><f:formatDate value="${antifreeze.r_date}" pattern="yyyy/MM/dd HH:mm"/></td>
											<td height="30" bgcolor="#FFFFFF" align="center"><f:formatDate value="${antifreeze.r_time}" pattern="yyyy/MM/dd HH:mm"/></td>
											<td height="30" bgcolor="#FFFFFF" align="center"> <c:out value="${antifreeze.r_qmtp}" /></td>
											<td height="30" bgcolor="#FFFFFF" align="center"> <c:out value="${antifreeze.r_qmtd}" /></td>
											<td height="30" bgcolor="#FFFFFF" align="center"> <c:out value="${antifreeze.r_qmdr}" /></td>
											<td height="30" bgcolor="#FFFFFF" align="center"> <c:out value="${antifreeze.r_tqtp}" /></td>
											<td height="30" bgcolor="#FFFFFF" align="center"> <c:out value="${antifreeze.r_tqtd}" /></td>
											<td height="30" bgcolor="#FFFFFF" align="center"> <c:out value="${antifreeze.r_tqdr}" /></td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="11" height="30" bgcolor="#ffffff" align="center">暂无数据</td>
									</tr>
								</c:otherwise>
							</c:choose>
						</table>
						<jsp:include page="/WEB-INF/jsp/pub/page.jsp"></jsp:include>
					</div> <br /> <br />
				</td>
			</tr>
		</table>

		<br /> <br />
		<!-- 长安铃木的查询内容结束 -->
	</div>
	<!--中部内容定义结束-->

	<div class="clearbox"></div>
	<jsp:include page="/WEB-INF/jsp/pub/footer.jsp"></jsp:include>
</body>
</html>
