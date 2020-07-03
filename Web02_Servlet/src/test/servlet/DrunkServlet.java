package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/drunk")
public class DrunkServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//응답 인코딩 설정
		resp.setCharacterEncoding("utf-8");
		//응답 컨텐트 type 설정
		resp.setContentType("text/html;charset=utf-8");
		
		 Random r = new Random();
		 int rd = Math.abs(r.nextInt()% 100);
		 String re="<p>오늘 취할 확률(0%~100%): "+ rd + "%<p>";
		//난수로 퍼센트(%)를 구합니다. 100으로 나눈 나머지의 양수값
		
		
		PrintWriter pw=resp.getWriter();
		pw.println("<!doctype mtml>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title>오늘 취할 확률</title>");
		pw.println("</head>");
		pw.println("<body>");
		//샘플 운세 5개를 미리 배열에 준비하기
//		String[] fortunes= {"동쪽으로 가면 귀인을 만나요",
//				"로또가 당첨 될거에요","금전운 상승","일복터짐","연애운상승"};
		//랜덤 객체 
//		int ranNum=r.nextInt(5);
//		pw.println("<P> 오늘의 운세: "+fortunes[ranNum]+"</P>");
		pw.println(re);
		pw.println("<img src='/Web02_Servlet/images/drunk.jpg'/>");
//		pw.println("<img src='/Web02_Servlet/images/diet success.jpg'/>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
