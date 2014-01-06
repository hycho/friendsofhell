package kr.co.killers.components.analysis.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import kr.co.killers.components.analysis.service.AnalysisService;
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
@RequestMapping("/rest/analysis")
public class AnalysisRestController {

	static final Logger log = LoggerFactory.getLogger(AnalysisRestController.class);
  
	@Resource(name = "analysisService")
  private AnalysisService analysisService;
    
	@RequestMapping(value="/selectAnalysisSexForServiceList")
	public @ResponseBody List<Map<String, Object>> selectAnalysisSexForServiceList(HttpServletRequest request)throws Exception {
		Map<String, Object> params = CommonUtil.transDataMap(request);
		
		return analysisService.selectAnalysisSexForServiceList(params);
    }
	
	@RequestMapping(value="/selectAnalysisAgeForServiceList")
	public @ResponseBody List<Map<String, Object>> selectAnalysisAgeForServiceList(HttpServletRequest request)throws Exception {
		Map<String, Object> params = CommonUtil.transDataMap(request);
		
		return analysisService.selectAnalysisAgeForServiceList(params);
    }
	
	@RequestMapping(value="/selectAnalysisTop5IdForServiceList")
	public @ResponseBody List<Map<String, Object>> selectAnalysisTop5IdForServiceList(HttpServletRequest request)throws Exception {
		Map<String, Object> params = CommonUtil.transDataMap(request);
		
		return analysisService.selectAnalysisTop5IdForServiceList(params);
    }
	
	@RequestMapping(value="/selectAnalysisCountForServiceList")
	public @ResponseBody List<Map<String, Object>> selectAnalysisCountForServiceList(HttpServletRequest request)throws Exception {
		Map<String, Object> params = CommonUtil.transDataMap(request);
		
		return analysisService.selectAnalysisCountForServiceList(params);
    }
	  
}