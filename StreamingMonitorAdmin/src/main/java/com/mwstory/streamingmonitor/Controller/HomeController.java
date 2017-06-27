/**
 * @Package Name   : com.mwstory.streamingmonitor.Controller
 * @FileName  : HomeController.java
 * @�ۼ���       : 2017. 6. 14. 
 * @�ۼ���       : ������
 * @���α׷� ���� : 
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
	// ���� xml����
	// <bean id="userDaoImpl" class="com.fureun.mybatis.UserDaoImpl"> �� ���� ������
	// ���� ID �̷��� ���ҽ��� �ָ� �ڵ����� ��ü�� ������ �ȴ�.
	private UserDaoImpl userDaoImpl;

	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String login(Locale locale, Model model, HttpSession session) {
		logger.info("����ȭ��, �α���.do ������ ���� ����!!", locale);
		session.invalidate();
		return "login";
	}

	@RequestMapping(value = "login_check.do", method = RequestMethod.POST)
	public ModelAndView login(Locale locale, Model model, HttpSession session,
			@RequestParam("email_id") String email_id, @RequestParam("password") String password) throws Exception {
		/* ModelAndView mav = new ModelAndView("login"); */
		// mav.setViewName("login"); //jsp����

		System.out.println("�α�������");
		System.out.println("email : " + email_id);
		System.out.println("password : " + password);

		Map<String, String> loginmap = new HashMap<String, String>();
		loginmap.put("email_id", email_id);
		loginmap.put("password", password);

		if (userDaoImpl.getLoginResult(loginmap) == 1) {
			System.out.println("---------�α��μ���--------");

			session.setAttribute("email_id", email_id);

			return new ModelAndView("redirect:dashboard.do");

		} else {
			System.out.println("---------�α��ν���--------");

			return new ModelAndView("redirect:login_fail.do");
		}
		// return mav;
	}

	@RequestMapping(value = "login_fail.do")
	public String login_fail(Locale locale, Model model) {
		logger.info("�α��� ����!", locale);
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
	 * logger.info("�ε���.do ������ ���� ����!!", locale); Date date = new Date();
	 * DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
	 * DateFormat.LONG, locale); String formattedDate = dateFormat.format(date);
	 * model.addAttribute("serverTime", formattedDate ); return "index"; }
	 */

	@RequestMapping(value = "dashboard.do")
	public String home1(Locale locale, Model model) {
		logger.info("�ε���.do ������ ���� ����!!", locale);
		
		//���� ��Ȳ ����Ʈ
		List<Osp_Monitoring_InfoVO> monitor_list = userDaoImpl.getMonitoringList();
		model.addAttribute("monitor_list", monitor_list);

		//����Ʈ�� �� ���� ��
		
		List<Osp_Monitoring_InfoVO> monitor_SiteTotal = userDaoImpl.getMonitoringSiteTotal();
		model.addAttribute("mstotal", monitor_SiteTotal);
		System.out.println("-------------����Ʈ�� �� ���� ��--------------------");
		int all_total = 0;
		for(int i=0; i<monitor_SiteTotal.size(); i++){
			Osp_Monitoring_InfoVO out = monitor_SiteTotal.get(i);
			System.out.println("����Ʈ�� : " + out.getSite_name());
			System.out.println("��      �� : " + out.getTot_sitesum());
			System.out.println("----------------------------------------");
			all_total += out.getTot_sitesum();
		}
		
		System.out.println("-------------����Ʈ�� �� ���� �� �� ----------------");
		System.out.println(" ��ü ���� �� : " + all_total);
		
		
		
		//�ϴ� 6�� ������------------------------------------------
		
		//�� Ŭ���̾�Ʈ
		
		//��� �۵� �ð�
		
		//�۵� ���� Ŭ���̾�Ʈ
        
		//������ Ŭ���̾�Ʈ
		
		//Ȯ���� �Խù� ��
		
		//��ü ���� ����
		model.addAttribute("_total", all_total);
        //int all_total = userDaoImpl.getAllSum();
		//System.out.println("��ü ���� ���� " + all_total);
	    //model.addAttribute("all_total", all_total);
		
		
		
		return "index";
	}
	

	@RequestMapping(value = "crawerstatus.do", method = RequestMethod.GET)
	public String crawerStatus(Locale locale, Model model) {
		logger.info("crawerStatus.do ������ ���� ����!!", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);
		return "crawerStatus";
	}
	
	// 03. �Խñ� �󼼳��� ��ȸ, �Խñ� ��ȸ�� ���� ó��
    // @RequestParam : get/post������� ���޵� ���� 1��
    // HttpSession ���ǰ�ü
    @RequestMapping(value="view.do", method=RequestMethod.GET)
    public ModelAndView view(@RequestParam int id, HttpSession session) throws Exception{
        
    	// ��(������)+��(ȭ��)�� �Բ� �����ϴ� ��ü
        ModelAndView mav = new ModelAndView();
        
        // ���� �̸�
        mav.setViewName("details");
        
        // �信 ������ ������
        mav.addObject("details", userDaoImpl.getMtDetails(id));
        
        return mav;
    }

}
