/**
 * @Package Name   : com.mwstory.streamingmonitor.Controller
 * @FileName  : HomeController.java
 * @작성일       : 2017. 6. 14. 
 * @작성자       : 김진수
 * @프로그램 설명 : 
 */

package com.mwstory.streamingmonitor.Controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.mwstory.streamingmonitor.Dao.UserDaoImpl;
import com.mwstory.streamingmonitor.Vo.Osp_Monitoring_InfoVO;
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Resource(name = "userDaoImpl")
	// 위의 xml에서
	// <bean id="userDaoImpl" class="com.fureun.mybatis.UserDaoImpl"> 와 같이 설정한
	// 곳의 ID 이렇게 리소스를 주면 자동으로 객체가 주입이 된다.
	private UserDaoImpl userDaoImpl;
	
	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login(Locale locale, Model model, HttpSession session) {
		logger.info("시작화면, 로그인.do 페이지 연결 성공!!", locale);
		session.invalidate();
		return "login";
	}
	
	
	@RequestMapping(value="login_check.do", method = RequestMethod.POST)
	public ModelAndView login(
			Locale locale, Model model, HttpSession session, 
			@RequestParam("email_id") String email_id,
		@RequestParam("password") String password) throws Exception {
		/*ModelAndView mav = new ModelAndView("login");*/
		// mav.setViewName("login"); //jsp파일

		System.out.println("로그인정보");
		System.out.println("email : " + email_id);
		System.out.println("password : " + password);

		Map<String, String> loginmap = new HashMap<String, String>();
		loginmap.put("email_id", email_id);
		loginmap.put("password", password);

		if (userDaoImpl.getLoginResult(loginmap) == 1) {
			System.out.println("---------로그인성공--------");

			session.setAttribute("email_id", email_id);
			
			return new ModelAndView("redirect:dashboard.do");
		
		} else {
			System.out.println("---------로그인실패--------");
			
			return new ModelAndView("redirect:login_fail.do");
		}
		//return mav;
	}
	

	@RequestMapping(value = "login_fail.do")
	public String login_fail(Locale locale, Model model) {
		logger.info("로그인 실패!", locale);
		return "login_fail";
	}
	
	
	@RequestMapping(value="logout.do")
	public ModelAndView login(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:login.do");
		session.invalidate();
		return mv;
	}
	
	
	
/*	
	@RequestMapping(value = "dashboard.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("인덱스.do 페이지 연결 성공!!", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		return "index";
	}*/
	
	@RequestMapping(value = "dashboard.do")
	public String home1(Locale locale, Model model) {
		logger.info("인덱스.do 페이지 연결 성공!!", locale);
	    List<Osp_Monitoring_InfoVO> monitor_list = userDaoImpl.getMonitoringList(); 
        model.addAttribute("monitor_list", monitor_list);
		return "index";
	}
	
	@RequestMapping(value = "crawerstatus.do", method = RequestMethod.GET)
	public String crawerStatus(Locale locale, Model model) {
		logger.info("crawerStatus.do 페이지 연결 성공!!", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		return "crawerStatus";
	}
	
}
