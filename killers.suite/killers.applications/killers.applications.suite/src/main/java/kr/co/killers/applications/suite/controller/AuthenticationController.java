package kr.co.killers.applications.suite.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/authentication")
public class AuthenticationController {
	static final Logger log = LoggerFactory.getLogger(AuthenticationController.class);
	
  @RequestMapping(value = "/loginView")
	public String home() {
    return "components/authentication/login";
	}
  
  /**
	 * 유저 등록 화면으로 이동한다.
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/registView")
	public String registUserView(HttpServletRequest request)throws Exception {
		return "components/authentication/regist";
	}
}