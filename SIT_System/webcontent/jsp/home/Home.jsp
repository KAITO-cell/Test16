<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="beans.ScheduleModel"%>
<%@ page import="java.util.List"%>
<%
	List<ScheduleModel> schedule = (List<ScheduleModel>) session.getAttribute("scheduleList");
%>

<!DOCTYPE html>
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ex.css">
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
<script type="text/javascript" charset="UTF-8" src="${pageContext.request.contextPath}/js/departSubject.js"></script>
	<form method="post" action="/SIT_System/Home">
		<input type="submit" value="ログアウト">
		<input type="hidden" name="act" value="logout">
	</form>

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
		<%if(schedule.get(i).getFirst() != null){ %>
		<td class=tdoriginalclass><%=schedule.get(i).getFirst() %></td>
		<%}else{ %>
		<td class=tdoriginalclass></td>
<%			}
		} %>
	</tr>

	<tr>
		<td class=tdoriginalclass>2</td>
		<% for(int i =0;i<6;i++){ %>
		<%if(schedule.get(i).getSecond() != null){ %>
		<td class=tdoriginalclass><%=schedule.get(i).getSecond() %></td>
		<%}else{ %>
		<td class=tdoriginalclass></td>
<%			}
		} %>
	</tr>
 	<tr>
		<td class=tdoriginalclass>3</td>
		<% for(int i =0;i<6;i++){ %>
		<%if(schedule.get(i).getThird()!=null){ %>
		<td class=tdoriginalclass><%=schedule.get(i).getThird() %></td>
		<%}else{ %>
		<td class=tdoriginalclass></td>
		<%}
		} %>
	</tr>
 	<tr>
		<td class=tdoriginalclass>4</td>
		<% for(int i =0;i<6;i++){ %>
		<%if(schedule.get(i).getFourth() !=null){ %>
		<td class=tdoriginalclass><%= schedule.get(i).getFourth() %></td>
		<%}else{ %>
		<td class=tdoriginalclass></td>
		<%}
		} %>
	</tr>
 	<tr>
		<td class=tdoriginalclass>5</td>
		<% for(int i =0;i<6;i++){ %>
		<%if(schedule.get(i).getFifth()!=null){ %>
		<td class=tdoriginalclass><%= schedule.get(i).getFifth() %></td>
		<%}else{ %>
		<td class=tdoriginalclass></td>
		<%}
		} %>

	</tr>
	<tr>
		<td class=tdoriginalclass>6</td>
		<% for(int i =0;i<6;i++){ %>
		<%if(schedule.get(i).getSixth()!=null){ %>
		</td><td class=tdoriginalclass><%= schedule.get(i).getSixth() %></td>
		<%}else{ %>
		<td class=tdoriginalclass>
		<%}
		} %>
	</tr>
	<tr>
		<td class=tdoriginalclass>7</td>
		<% for(int i =0;i<6;i++){ %>
		<%if(schedule.get(i).getSeventh()!=null){ %>
		<td class=tdoriginalclass><%= schedule.get(i).getSeventh() %></td>
		<%}else{ %>
		<td class=tdoriginalclass></td>
		<%}
		} %>
	</tr>
</tbody>
</table>





	<form action="/SIT_System/RegisterList" method="get">
            <table style="margin:0 auto">

                <tr>
                    <td style="width:60">ニックネーム</td>
                    <td ><input type=text size="30" name="studentname"></input></td>
                </tr>
                <tr>
                    <td style="width:60">学部</td>
                    <td>
                        <select name="department" id="department">
                        	<option value="">選択してください</option>
                            <option value="工学部">工学部</option>
                            <option value="システム理工学部">システム理工学部</option>
                            <option value="デザイン工学部">デザイン工学部</option>
                            <option value="建築学部">建築学部</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td style="width:70">学科</td>
                    <td>
                    	<select name="subject" id="subject" onchange="submit(this.form)">

                    		<option value="">選択してください</option>
                    	</select>
                    </td>
                </tr>
        	</table>
        	<input type="hidden"  name="action" value="home">
    </form>


	<form method="post" action="/SIT_System/Home">
		<br>

		<!-- プルダウン -->
		<select name="act">
      	<option value="done">時間割</option>
      	<option value="name">名前の変更</option>
      	<option value="pass">パスワードの変更</option>
		</select>

		<!-- 選択ボタン -->
		<input type="submit" value="設定">
		<!-- <input type="hidden"  name="act" value="done">  -->
	</form>

	<form method="get" action="/SIT_System/Home">

		<input type="submit" name="act" value="chat">
	</form>

</body>
</html>