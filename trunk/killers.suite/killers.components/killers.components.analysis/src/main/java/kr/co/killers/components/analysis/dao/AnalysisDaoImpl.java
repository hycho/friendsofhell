package kr.co.killers.components.analysis.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import kr.co.killers.support.spring.database.mybatis3.BaseSqlSessionDaoSupport;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository("analysisDao")
public class AnalysisDaoImpl extends BaseSqlSessionDaoSupport{

	static final Logger log = LoggerFactory.getLogger(AnalysisDaoImpl.class);

  public List<Map<String, Object>> selectAnalysisSexForServiceList(Map<String, Object> params){
	  return phoenixSqlSession.selectList("selectAnalysisSexForServiceList", params);
	}
  
  public List<Map<String, Object>> selectAnalysisAgeForServiceList(Map<String, Object> params){
	  return phoenixSqlSession.selectList("selectAnalysisAgeForServiceList", params);
	}
  
  public List<Map<String, Object>> selectAnalysisTop5IdForServiceList(Map<String, Object> params){
	  return phoenixSqlSession.selectList("selectAnalysisTop5IdForServiceList", params);
	}
  
  public List<Map<String, Object>> selectAnalysisCountForServiceList(Map<String, Object> params){
	  return phoenixSqlSession.selectList("selectAnalysisCountForServiceList", params);
	}
}