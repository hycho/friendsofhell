package kr.co.killers.components.analysis.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import kr.co.killers.components.analysis.dao.AnalysisDaoImpl;
import kr.co.killers.components.analysis.service.AnalysisService;

import org.springframework.stereotype.Service;

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
@Service("analysisService")
public class AnalysisServiceImpl implements AnalysisService {
	
	@Resource(name="analysisDao")
	private AnalysisDaoImpl analysisDao;

	public List<Map<String, Object>> selectAnalysisSexForServiceList(Map<String, Object> params)
			throws Exception {

		return analysisDao.selectAnalysisSexForServiceList(params);
	}

	public List<Map<String, Object>> selectAnalysisAgeForServiceList(
			Map<String, Object> params) throws Exception {
		
		return analysisDao.selectAnalysisAgeForServiceList(params);
	}

	public List<Map<String, Object>> selectAnalysisTop5IdForServiceList(
			Map<String, Object> params) throws Exception {
		
		return analysisDao.selectAnalysisTop5IdForServiceList(params);
	}
	
	public List<Map<String, Object>> selectAnalysisCountForServiceList(
			Map<String, Object> params) throws Exception {
		
		return analysisDao.selectAnalysisCountForServiceList(params);
	}
		
}