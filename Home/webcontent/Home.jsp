<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="sit.sns.system.ScheduleModel"%>
<%@ page import="java.util.List"%>


<%
	List<ScheduleModel> schedule = (List<ScheduleModel>) request.getAttribute("scheduleList");
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table.tableroriginalclass{
	border-collapse: collapse;}

th.throriginalclass{
	border: 2px solid #999999;
	background-color: #bbddff;
	height:25px;
	width:100px;}

td.tdoriginalclass{
	border: 2px solid #999999;
	background-color: #FFFFFF;
	height:25px;
	width:100px;
	text-align:center;}
	</style>
</head>
<body>

	<input type="button" value="logout">

	<table class="tableroriginalclass"><tbody>

	<tr>
		<th class=throriginalclass></th>
		<th class=throriginalclass>月</th>
		<th class=throriginalclass>火</th>
		<th class=throriginalclass>水</th>
		<th class=throriginalclass>木</th>
		<th class=throriginalclass>金</th>
		<th class=throriginalclass>土</th>
	</tr>
 	<tr>
		<td class=tdoriginalclass>1</td>
		<% for(int i =0;i<6;i++){ %>
		<%if(schedule.get(i).getFirst().equals("0")){ %>
		<td class=tdoriginalclass></td>
		<%}else{ %>
		<td class=tdoriginalclass><%=schedule.get(i).getFirst() %></td>
<%			}
		} %>
	</tr>

	<tr>
		<td class=tdoriginalclass>2</td>
		<% for(int i =0;i<6;i++){ %>
		<%if(schedule.get(i).getSecond().equals("0")){ %>
		<td class=tdoriginalclass></td>
		<%}else{ %>
		<td class=tdoriginalclass><%=schedule.get(i).getSecond() %></td>
<%			}
		} %>
	</tr>
 	<tr>
		<td class=tdoriginalclass>3</td>
		<% for(int i =0;i<6;i++){ %>
		<%if(schedule.get(i).getThird().equals("0")){ %>
		<td class=tdoriginalclass></td>
		<%}else{ %>
		<td class=tdoriginalclass><%=schedule.get(i).getThird() %></td>
		<%}
		} %>
	</tr>
 	<tr>
		<td class=tdoriginalclass>4</td>
		<% for(int i =0;i<6;i++){ %>
		<%if(schedule.get(i).getFourth().equals("0")){ %>
		<td class=tdoriginalclass></td>
		<%}else{ %>
		<td class=tdoriginalclass><%= schedule.get(i).getFourth() %></td>
		<%}
		} %>
	</tr>
 	<tr>
		<td class=tdoriginalclass>5</td>
		<% for(int i =0;i<6;i++){ %>
		<%if(schedule.get(i).getFifth().equals("0")){ %>
		<td class=tdoriginalclass></td>
		<%}else{ %>
		<td class=tdoriginalclass><%= schedule.get(i).getFifth() %></td>
		<%}
		} %>

	</tr>
	<tr>
		<td class=tdoriginalclass>6</td>
		<% for(int i =0;i<6;i++){ %>
		<%if(schedule.get(i).getSixth().equals("0")){ %>
		<td class=tdoriginalclass></td>
		<%}else{ %>
		<td class=tdoriginalclass><%= schedule.get(i).getSeventh() %></td>
		<%}
		} %>
	</tr>
	<tr>
		<td class=tdoriginalclass>7</td>
		<% for(int i =0;i<6;i++){ %>
		<%if(schedule.get(i).getSeventh().equals("0")){ %>
		<td class=tdoriginalclass></td>
		<%}else{ %>
		<td class=tdoriginalclass><%= schedule.get(i).getSeventh() %></td>
		<%}
		} %>
	</tr>
</tbody>
</table>
<ul>
	<li><a href="/Home">教科書</a></li>
	<li><a href="/Home">設定</a></li>
	<li><a href="/Home">その他</a></li>
</ul>

</body>
</html>