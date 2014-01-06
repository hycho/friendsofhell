package kr.co.killers.components.packagemanager.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import kr.co.killers.components.packagemanager.dao.PackageManagerDao;
import kr.co.killers.components.packagemanager.service.PackageManagerService;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("packageManagerService")
public class PackageManagerServiceImpl implements PackageManagerService {
	
	@Resource(name="packageManagerDao")
	private PackageManagerDao packageManagerDao;

	@Transactional(rollbackFor=Exception.class)
	public int updatePackageManager(Map<String, Object> params) throws Exception {
		return packageManagerDao.updatePackageManager(params);
	}

	@Transactional(rollbackFor=Exception.class)
	public List<Map<String, Object>> selectPackageManagerList(Map<String, Object> params)	throws Exception {
		return packageManagerDao.selectPackageManagerList(params);
	}
	
	@Transactional(rollbackFor=Exception.class)
	public List<Map<String, Object>> selectPackageList(Map<String, Object> params)	throws Exception {
		return packageManagerDao.selectPackageList(params);
	}
	
	@Transactional(rollbackFor=Exception.class)
	public List<Map<String, Object>> selectServiceToPackageList(Map<String, Object> params)	throws Exception {
		return packageManagerDao.selectServiceToPackageList(params);
	}

	@Transactional(rollbackFor=Exception.class)
	public int selectPackageManagerListTotCnt(Map<String, Object> params) throws Exception {
		return packageManagerDao.selectPackageManagerListTotCnt(params);
	}
	
}