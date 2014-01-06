package kr.co.killers.components.packagemanager.service;

import java.util.List;
import java.util.Map;

public interface PackageManagerService {
	public int updatePackageManager(Map<String, Object> params) throws Exception;
	public List<Map<String, Object>> selectPackageManagerList(Map<String, Object> params) throws Exception;
	public List<Map<String, Object>> selectPackageList(Map<String, Object> params) throws Exception;
	public List<Map<String, Object>> selectServiceToPackageList(Map<String, Object> params) throws Exception;
	public int selectPackageManagerListTotCnt(Map<String, Object> params) throws Exception;
}
