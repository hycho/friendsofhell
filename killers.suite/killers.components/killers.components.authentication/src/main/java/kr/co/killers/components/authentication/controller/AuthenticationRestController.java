package kr.co.killers.components.authentication.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import kr.co.killers.components.user.service.UserService;
import kr.co.killers.support.utils.CommonUtil;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/rest/authentication")
public class AuthenticationRestController {
	static final Logger log = LoggerFactory.getLogger(AuthenticationRestController.class);
	
	@Resource(name = "userService")
	private UserService userService;
	
	/**
	 * 유저를 저장한다.
	 * @param request
	 * @return 성공 1 실패 0
	 * @throws Exception
	 */
	@RequestMapping("/regist")
	public @ResponseBody int insertUser(HttpServletRequest request)throws Exception {
		Map<String, Object> params = CommonUtil.transDataMap(request);
		return userService.insertUser(params);
    }
}