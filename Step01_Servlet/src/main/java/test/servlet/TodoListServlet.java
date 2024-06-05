package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/*
 *  /todo/list 요청을 처리할 TodoListServlet 을 만들어 보세요.
 *  
 *  List<String> 에 할 일을 3개 담아서 할일을 ul li를 활용해서 클라이언트에게 출력해 보세요.
 *  
 *  할 일은 참고로 "html 공부하기", "css 공부하기", "javascript 공부하기"
 *  
 */

@WebServlet("/todo/list")
public class TodoListServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		List<String> todos = new ArrayList<>();
		todos.add("html 공부하기");
		todos.add("css 공부하기");
		todos.add("javascript 공부하기");
		
		//응답 인코딩 설정
		resp.setCharacterEncoding("utf-8");
		//응답 컨텐트 설정
		resp.setContentType("text/html; charset=utf-8");
		//요청을 한 클라이언트에게 문자열을 출력할수 있는 객체의 참조값 얻어내기
		PrintWriter pw = resp.getWriter();
		pw.println("<!doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'>");
		pw.println("<title>할일 페이</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<ul>");
		//확장 for 문을 활용하면?
		for(String tmp:todos) {
			pw.println("<li>"+tmp+"</li>");
		}
		pw.println("</ul>");

		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}

}
