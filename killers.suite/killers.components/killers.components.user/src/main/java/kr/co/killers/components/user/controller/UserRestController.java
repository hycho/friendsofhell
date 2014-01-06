package kr.co.killers.components.user.controller;

import java.util.HashMap;
import java.util.List;
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

/**
 * 일반회원관련 요청을  비지니스 클래스로 전달하고 처리된결과를  해당   웹 화면으로 전달하는  API를 정의 한다.
 * @author 조호영.
 * @since 2013.11.28
 * @version 0.1
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2013.11.28  조호영          최초 생성
 *
 * </pre>
 */

@Controller
@RequestMapping("/rest/user")
public class UserRestController {

	static final Logger log = LoggerFactory.getLogger(UserRestController.class);
  
	@Resource(name = "userService")
  private UserService userService;
    
	/**
	 * 검색조건에 따른 유저들의 정보를 List로 받아온다. (현재 Json 형태로만 가능)
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/selectUserList")
	public @ResponseBody Map<String, Object> selectUserList(HttpServletRequest request)throws Exception {
		Map<String, Object> params = CommonUtil.transDataMap(request);
		params.put((String) params.get("searchType"), params.get("searchValue"));
		params.put("recordCountPerPage",Integer.parseInt((String) params.get("recordCountPerPage")));
		params.put("pageIndex",Integer.parseInt((String) params.get("pageIndex")));
		
		Map<String, Object> result = new HashMap<String, Object>();
		List<Map<String, Object>> dataList = userService.selectUserList(params);
		int totalCount = userService.selectUserListTotCnt(params);
		
		result.put("data", dataList);
		result.put("totalCount", totalCount);
		
		return result;
    } 
  
	/**
	 * 유저를 저장한다.
	 * @param request
	 * @return 성공 1 실패 0
	 * @throws Exception
	 */
	@RequestMapping("/userInsert")
	public @ResponseBody int insertUser(HttpServletRequest request)throws Exception {
		Map<String, Object> params = CommonUtil.transDataMap(request);
		return userService.insertUser(params);
    }
   
	/**
	 * 검색조건에 따른 유저의 정보를 List로 받아온다. (현재 Json 형태로만 가능)
	 * @param request
	 * @return
	 * @throws Exception
	 */
  @RequestMapping("/userInfo")
  public @ResponseBody List<Map<String, Object>> userInfo(HttpServletRequest request)throws Exception {
	  Map<String, Object> params = CommonUtil.transDataMap(request);
    return userService.selectUser(params);
    }
    
  	/**
  	 * 유저의 정보를 수정한다.
  	 * @param request
  	 * @return
  	 * @throws Exception
  	 */
  @RequestMapping("/userUpdate")
	public @ResponseBody int updateMber(HttpServletRequest request)throws Exception {
		Map<String, Object> params = CommonUtil.transDataMap(request);
		return userService.updateUser(params);
    }
  
  	/**
  	 * 검색조건에 따른 유저를 삭제한다.
  	 * @param request
  	 * @return
  	 * @throws Exception
  	 */
	@RequestMapping("/userDelete")
	public @ResponseBody int deleteUser(HttpServletRequest request)throws Exception {
		Map<String, Object> params = CommonUtil.transDataMap(request);
		return userService.deleteUser(params);
    }
    
	/**
	 * 중복된 UserID가 존재하는지 확인한다.
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="/chkUserId")
	public @ResponseBody int chkUserId(HttpServletRequest request) throws Exception {
		Map<String, Object> params = CommonUtil.transDataMap(request);
		return userService.chkUserId(params);
    }
        
}