package kr.co.killers.support.spring.database.mybatis3;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * 
 * @author hycho
 * Spring-mybatis 1.2.0 issue, get out @autowired...
 * So create BaseSqlSessionDaoSupport class extends SqlSessionDaoSupport
 * You use Mybatis for use SqlSessionDaoSupport class 
 */

public abstract class BaseSqlSessionDaoSupport extends SqlSessionDaoSupport{
	
	@Resource(name="phoenixSqlSession")
	protected SqlSession phoenixSqlSession;
	
	@Resource(name="mySqlSession")
  public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		super.setSqlSessionTemplate(sqlSessionTemplate);
	}
}
