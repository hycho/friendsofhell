package kr.co.killers.components.packagemanager.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import kr.co.killers.components.packagemanager.service.PackageManagerService;
import kr.co.killers.support.utils.CommonUtil;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/rest/packageManager")
public class PackageManagerRestController {
	static final Logger log = LoggerFactory.getLogger(PackageManagerRestController.class);
  
	@Resource(name = "packageManagerService")
  private PackageManagerService packageManagerService;
    
	@RequestMapping(value="/selectPackageManagerList")
	public @ResponseBody Map<String, Object> selectPackageManagerList(HttpServletRequest request)throws Exception {
		Map<String, Object> params = CommonUtil.transDataMap(request);
		Map<String, Object> result = new HashMap<String, Object>();
		List<Map<String, Object>> dataList = packageManagerService.selectPackageManagerList(params);
		int totalCount = packageManagerService.selectPackageManagerListTotCnt(params);
		int rows = Integer.parseInt((String)params.get("rows"));		
		result.put("page", "1");
		result.put("total", (int) Math.ceil((double)totalCount/rows));
		result.put("records", totalCount);
		result.put("rows", dataList);
		
		return result;
    }
	
	@RequestMapping(value="/selectPackageList")
	public @ResponseBody List<Map<String, Object>> selectPackageList(HttpServletRequest request)throws Exception {
		Map<String, Object> params = CommonUtil.transDataMap(request);
		List<Map<String, Object>> result = packageManagerService.selectPackageList(params);
		
		return result;
    }
	
	@RequestMapping(value="/selectServiceToPackageList")
	public @ResponseBody List<Map<String, Object>> selectServiceToPackageList(HttpServletRequest request)throws Exception {
		Map<String, Object> params = CommonUtil.transDataMap(request);
		List<Map<String, Object>> result = packageManagerService.selectServiceToPackageList(params);
		
		return result;
    }
  
	@RequestMapping("/updatePackageManager")
	public @ResponseBody int updatePackageManager(HttpServletRequest request)throws Exception {
		Map<String, Object> params = CommonUtil.transDataMap(request);
		return packageManagerService.updatePackageManager(params);
    }
        
}