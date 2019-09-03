package com.test.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SeoulController {
//페이지 이동만 담당	
	
	//의존 객체, 멤버구현 : 의존객체에 어노테이션 + 의존 주입 대상객체에도 어노테이션
	//seoul 객체 - 서비스객체 + 주업무 객체
	@Autowired
	private ISeoulService seoul;
	

//--------------------------------------------------------------------
	
	@RequestMapping(value="/main.seoul", method= {RequestMethod.GET})
	public String main(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {		
		//주업무 실행[메인화면]
		return "seoulmain";	
	}
	
	
	@RequestMapping(value="/openmap.seoul", method= {RequestMethod.GET})
	public String openmap(HttpServletResponse resp, HttpServletRequest req, HttpSession session) {
	     
		//지도열기-[이동하려는 구 선택]
		return "openmap";
		
	}
	
	
	@RequestMapping(value = "/eatingplace.seoul", method= {RequestMethod.GET})
	public String eatingplace(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		//먹을거리
		return "eatingplace";
	}
	
	
	@RequestMapping(value="/see.seoul", method= {RequestMethod.GET})
	public String see(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		//볼거리
		return "see";
	}
	
	
	@RequestMapping(value="/enjoy.seoul", method= {RequestMethod.GET})
	public String enjoy(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		//즐길거리
		return "enjoy";
	}
	
	
	@RequestMapping(value="/course.seoul", method={RequestMethod.GET})
	public String course(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		//코스추천
		return "course";
	}
	
	
	//-------------------------------------------------------------------------------------------
	
	// Open-Map > 구 이동

	@RequestMapping(value="/selectedgu.seoul", method= {RequestMethod.GET})
	public String selectedgu(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		//선택한 구에 해당하는 데이터 가진 페이지 열기
		// - 페이지 1개 + 데이터베이스 연동
		// - 단, 데이터베이스 연동 + 매개변수추가(어떤 구를 선택했는지 알 수 있는 데이터 같이 넘길 것)
		
		
		return "selectedgu";
	}
 
	
	

}
