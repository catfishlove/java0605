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

@WebServlet("/dinner/list")
public class DinnerList extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<String> dinners = new ArrayList<>();
		dinners.add("아구찜");
		dinners.add("버섯 카레");
		dinners.add("멸치 국수");
		
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
		pw.println("<title>저녁 메뉴 목록</title>");
		pw.println("</head>");
		pw.println("<body>");
			pw.println("<h3>저녁 메뉴 목록입니다</h3>");
		pw.println("<ul>");
			pw.println("<li>"+dinners.get(0)+"</li>");
			pw.println("<li>"+dinners.get(1)+"</li>");
			pw.println("<li>"+dinners.get(2)+"</li>");
		pw.println("</ul>");
		
		pw.println("<ul>");
		for(int i=0; i<dinners.size(); i++) {
			//names 리스트의 i 번째 아이템(String) 을 읽어와서 
			String tmp=dinners.get(i);
			//li 요소 가운데 끼워서 출력하기
			pw.println("<li>"+tmp+"</li>");
		}
		pw.println("</ul>");
		
		//for (int i = 0; i <= nums; i++) { // i가 0부터 다른 결과값까지 변화하면서 반복
		//    System.out.println(i);
		//}
		//dinners = tmp

		pw.println("</body>");
		pw.println("</html>");
		pw.close();
		
	}

}
