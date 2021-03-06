package com.gura.spring03.users;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gura.spring03.users.UsersDto;

@Controller
public class UsersController {
	//회원 가입 폼 요청 처리
	@RequestMapping("/users/signup_form")
	public String signupForm() {
		//수행할 비즈니스 로직은 형재 없다.
		
		//view 페이지의 정보만 리턴해준다.
		return "users/signup_form";
	}
	@RequestMapping("/users/signup")
	public String signup(HttpServletRequest request) {
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		System.out.println(id+"|"+pwd);
		return "users/signup";
	}
	
	@RequestMapping("/users/signup2")
	public String signup2(@RequestParam String id,@RequestParam String pwd) {
		/*
		 *  @RequestParam 어노테이션과
		 *  요청 파라미터가 자동 추출되어서 전달된다.
		 *  @RequestParam 은 생략가능.
		 *  
		 *  name= "id" :string id
		 *  name="pwd" :string pwd
		 *  
		 *  GET방식 파라미터라면
		 *  
		 *  ?name=xxx : String name
		 *  ?addr=xxx : String name
		 *  ?pageNum=xxx : String String pageNum
		 *  ?pagNum=xxx : int pageNum 
		 */
		System.out.println(id+"|"+pwd);
		
		return "users/signup";
	}
	
	@RequestMapping("/users/signup3")
	public String signup3(@ModelAttribute UsersDto dto) {
		
		/*
		 * @ModelAttribute 어노테이션과 함께 dto를 선언해 놓으면
		 * 전송된 파라미터가 추출되고 dto에 담겨서 전달된다.
		 * @ModelAttribute는 생략가능
		 * form요소의 name 속성의 value와 dto 의 필드명이 같아야 한다ㅣ
		 * GET방식 전송이라면 파라미터명과 dto의 필드명이 같아야 한다.
		 */
		
		System.out.println(dto.getId()+"|"+dto.getPwd());
		return "uesrs/signup";
	}
}
