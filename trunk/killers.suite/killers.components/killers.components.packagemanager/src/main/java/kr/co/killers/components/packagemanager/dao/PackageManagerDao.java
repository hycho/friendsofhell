package kr.co.killers.components.packagemanager.dao;

import java.util.List;
import java.util.Map;

import kr.co.killers.support.spring.database.mybatis3.BaseSqlSessionDaoSupport;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository("packageManagerDao")
public class PackageManagerDao extends BaseSqlSessionDaoSupport{
	static final Logger log = LoggerFactory.getLogger(PackageManagerDao.class);
	
  public List<Map<String, Object>> selectPackageManagerList(Map<String, Object> params){
	  return getSqlSession().selectList("selectPackageManagerList", params);
    }
  
  public List<Map<String, Object>> selectServiceToPackageList(Map<String, Object> params){
	  return getSqlSession().selectList("selectServiceToPackageList", params);
    }
  
  public List<Map<String, Object>> selectPackageList(Map<String, Object> params){
	  return getSqlSession().selectList("selectPackageList", params);
    }
  
  public int selectPackageManagerListTotCnt(Map<String, Object> params) {
	  return (Integer)getSqlSession().selectOne("selectPackageManagerListTotCnt", params);
    }
    
  public int updatePackageManager(Map<String, Object> params){
	  return getSqlSession().insert("updatePackageManager", params);
    }
  
}