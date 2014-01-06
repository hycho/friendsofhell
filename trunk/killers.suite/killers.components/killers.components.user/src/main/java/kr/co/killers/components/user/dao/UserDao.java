package kr.co.killers.components.user.dao;

import java.util.List;
import java.util.Map;

import kr.co.killers.support.spring.database.mybatis3.BaseSqlSessionDaoSupport;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class UserDao extends BaseSqlSessionDaoSupport{

	static final Logger log = LoggerFactory.getLogger(UserDao.class);
	
	/**
	 * 검색조건에 따른 등록된 사용자의 리스트를 가져온다.
	 * @param params 검색조건에 사용될 파라메터.
	 * @return 사용자 리스트.
	 */
  public List<Map<String, Object>> selectUserList(Map<String, Object> params){
	  return getSqlSession().selectList("selectUserList", params);
    }
    
  /**
   * 검색조건에 따른 등록된 사용자의 카운터를 구한다.
   * @param params 검색조건에 사용될 파라메터.
   * @return 카운트 갯수 ex)100
   */
  public int selectUserListTotCnt(Map<String, Object> params) {
	  return (Integer)getSqlSession().selectOne("selectUserListTotCnt", params);
    }
    
    /**
     * 검색조건에 따른 사용자를 삭제. status를 통해서 update를 할까 말까 했는데, 우선 그냥 삭제.
     * @param params userid만을 사용 함.
     * @return 성공유무 확인.
     */
  public int deleteUser(Map<String, Object> params){
	  return getSqlSession().delete("deleteUser", params);
    }

    /**
     * 유저를 등록한다.
     * @param 
     * @return 성공 유무 확인.
     */
  public int insertUser(Map<String, Object> params){
	  return getSqlSession().insert("insertUser", params);
    }
    
    /**
     * 검색조건에 따른 1명의 유저의 상세정보를 가져온다.
     * @param params userid만을 사용한다.
     * @return 유저의 상세정보를 가져온다.
     */
  public List<Map<String, Object>> selectUser(Map<String, Object> params){
	  return getSqlSession().selectList("selectUser", params);
    }

    /**
     * 유저의 정보를 수정한다. 
     * @param params
     * @return
     */
  public int updateUser(Map<String, Object> params){
	  return getSqlSession().update("updateUser",params);
    }
    
  	/**
  	 	  * 중복된 유저의 ID가 있는지 확인한다.
  	 * @param params
  	 * @return 1:존재 0: 존재하지 않음
  	 */
  public int chkUserId(Map<String, Object> params){
	  return (Integer) getSqlSession().selectOne("chkUserId", params);
    }

}