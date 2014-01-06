package kr.co.killers.components.user.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import kr.co.killers.components.user.dao.UserDao;
import kr.co.killers.components.user.service.UserService;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 일반회원관리에 관한비지니스클래스를 정의한다.
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
@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Resource(name="userDao")
	private UserDao userDao;

	@Transactional(rollbackFor=Exception.class)
	public int insertUser(Map<String, Object> params) throws Exception {
		return userDao.insertUser(params);
	}

	@Transactional(rollbackFor=Exception.class)
	public List<Map<String, Object>> selectUser(Map<String, Object> params)	throws Exception {
		return userDao.selectUser(params);
	}

	@Transactional(rollbackFor=Exception.class)
	public List<Map<String, Object>> selectUserList(Map<String, Object> params)	throws Exception {
		return userDao.selectUserList(params);
	}

	@Transactional(rollbackFor=Exception.class)
	public int selectUserListTotCnt(Map<String, Object> params) throws Exception {
		return userDao.selectUserListTotCnt(params);
	}

	@Transactional(rollbackFor=Exception.class)
	public int updateUser(Map<String, Object> params) throws Exception {
		return userDao.updateUser(params);
	}

	@Transactional(rollbackFor=Exception.class)
	public int deleteUser(Map<String, Object> params) throws Exception {
		return userDao.deleteUser(params);
	}

	@Transactional(rollbackFor=Exception.class)
	public int chkUserId(Map<String, Object> params) throws Exception {
		return userDao.chkUserId(params);
	}
	
}