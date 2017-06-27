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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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

	@RequestMapping(value = "login_check.do", method = RequestMethod.POST)
	public ModelAndView login(Locale locale, Model model, HttpSession session,
			@RequestParam("email_id") String email_id, @RequestParam("password") String password) throws Exception {
		/* ModelAndView mav = new ModelAndView("login"); */
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
		// return mav;
	}

	@RequestMapping(value = "login_fail.do")
	public String login_fail(Locale locale, Model model) {
		logger.info("로그인 실패!", locale);
		return "login_fail";
	}

	@RequestMapping(value = "logout.do")
	public ModelAndView login(HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:login.do");
		session.invalidate();
		return mv;
	}

	/*
	 * @RequestMapping(value = "dashboard.do", method = RequestMethod.GET)
	 * public String home(Locale locale, Model model) {
	 * logger.info("인덱스.do 페이지 연결 성공!!", locale); Date date = new Date();
	 * DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
	 * DateFormat.LONG, locale); String formattedDate = dateFormat.format(date);
	 * model.addAttribute("serverTime", formattedDate ); return "index"; }
	 */

	@RequestMapping(value = "dashboard.do")
	public String home1(Locale locale, Model model) {
		logger.info("인덱스.do 페이지 연결 성공!!", locale);
		
		//수집 현황 리스트
		List<Osp_Monitoring_InfoVO> monitor_list = userDaoImpl.getMonitoringList();
		model.addAttribute("monitor_list", monitor_list);

		//사이트별 총 수집 수
		
		List<Osp_Monitoring_InfoVO> monitor_SiteTotal = userDaoImpl.getMonitoringSiteTotal();
		model.addAttribute("mstotal", monitor_SiteTotal);
		System.out.println("-------------사이트별 총 수집 수--------------------");
		int all_total = 0;
		for(int i=0; i<monitor_SiteTotal.size(); i++){
			Osp_Monitoring_InfoVO out = monitor_SiteTotal.get(i);
			System.out.println("사이트명 : " + out.getSite_name());
			System.out.println("총      합 : " + out.getTot_sitesum());
			System.out.println("----------------------------------------");
			all_total += out.getTot_sitesum();
		}
		
		System.out.println("-------------사이트별 총 수집 수 끝 ----------------");
		System.out.println(" 전체 수집 수 : " + all_total);
		
		
		
		//하단 6개 아이콘------------------------------------------
		
		//총 클라이언트
		
		//평균 작동 시간
		
		//작동 중인 클라이언트
        
		//중지된 클라이언트
		
		//확인한 게시물 수
		
		//전체 수집 정보
		model.addAttribute("_total", all_total);
        //int all_total = userDaoImpl.getAllSum();
		//System.out.println("전체 수집 정보 " + all_total);
	    //model.addAttribute("all_total", all_total);
		
		
		
		return "index";
	}
	

	@RequestMapping(value = "crawerstatus.do", method = RequestMethod.GET)
	public String crawerStatus(Locale locale, Model model) {
		logger.info("crawerStatus.do 페이지 연결 성공!!", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);
		return "crawerStatus";
	}
	
	// 03. 게시글 상세내용 조회, 게시글 조회수 증가 처리
    // @RequestParam : get/post방식으로 전달된 변수 1개
    // HttpSession 세션객체
    @RequestMapping(value="view.do", method=RequestMethod.GET)
    public ModelAndView view(@RequestParam int id, HttpSession session) throws Exception{
        
    	// 모델(데이터)+뷰(화면)를 함께 전달하는 객체
        ModelAndView mav = new ModelAndView();
        
        // 뷰의 이름
        mav.setViewName("details");
        
        // 뷰에 전달할 데이터
        mav.addObject("details", userDaoImpl.getMtDetails(id));
        
        return mav;
    }

}
