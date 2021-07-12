/**************************************************************************************************
 ***  File Name      : Request.java
 ***  Version        : V2.0
 ***  Designer       : 奈良操樹
 ***  Date           : 2021.07.11
 ***  Purpose        : 教科書リスト画面で選択された教科書の情報をセッションに登録する
 ***
 **************************************************************************************************/
/*
 *** Revision :
 *** V1.0 : 奈良操樹,2021.06.28
 *** V1.1 : 奈良操樹,2021.07.02
 */
package servlet;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.StudentModel;
import dao.LoginDAO;

@WebServlet("/Login")

public class Login extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/login/UICertify.jsp");
		dispatcher.forward(req,  res);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res ) throws ServletException, IOException{

		//リクエストパラメータ所得
		req.setCharacterEncoding("UTF-8");
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");

		//学生情報の生成
		StudentModel student = new StudentModel(id,pass);

		//ログイン処理
		LoginDAO loginLogic = new LoginDAO();
		boolean isLogin = loginLogic.execute(student);

		//ログイン成功時
		if(isLogin==true) {
			//ユーザー情報をセッションスコープに保存
			HttpSession session = req.getSession();
			session.setAttribute("loginStudent", id);

			//ログイン結果画面にフォワード
			RequestDispatcher dispatcher = req.getRequestDispatcher("/Home");
			dispatcher.forward(req,  res);

		}else {
			//ログイン結果画面にフォワード
			RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/login/login_result.jsp");
			dispatcher.forward(req,  res);
			
		}
	}
}

