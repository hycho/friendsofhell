package kr.co.killers.support.listner;

import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Set;

import javax.naming.InitialContext;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.sql.DataSource;

import org.reflections.Reflections;
import org.reflections.scanners.ResourcesScanner;
import org.reflections.scanners.SubTypesScanner;
import org.reflections.util.ClasspathHelper;
import org.reflections.util.ConfigurationBuilder;
import org.reflections.util.FilterBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PackageClassRegisterListener implements ServletContextListener{
	static final Logger log = LoggerFactory.getLogger(PackageClassRegisterListener.class);

	public void contextDestroyed(ServletContextEvent arg0) {
	}

	public void contextInitialized(ServletContextEvent event) {
		ServletContext servletContext = event.getServletContext();
		String packagePath = servletContext.getInitParameter("packagePath");
		String packageLoaderJNDI = servletContext.getInitParameter("packageLoaderJNDI");
		String packageLoaderStart = servletContext.getInitParameter("packageLoaderStart");
		
		Connection conn = null;
		PreparedStatement psmtCreateTable = null;
		PreparedStatement psmtInsertData = null;
		
		StringBuffer sb_createTable = new StringBuffer();
		sb_createTable.append("CREATE TABLE IF NOT EXISTS TB_PACKAGE_SERVICE ");
		sb_createTable.append("( ");
		sb_createTable.append("PACKAGEID varchar(255) NOT NULL, ");
		sb_createTable.append("SERVICEID varchar(255) NOT NULL, ");
		sb_createTable.append("PACKAGENAME varchar(255), ");
		sb_createTable.append("SERVICENAME varchar(255), ");
		sb_createTable.append("UPDATEDDATE timestamp(255), ");
		sb_createTable.append("CONSTRAINT PRIMARY KEY (PACKAGEID, SERVICEID) ");
		sb_createTable.append(") ");
		
		StringBuffer sb_insertData = new StringBuffer();
		sb_insertData.append("INSERT INTO TB_PACKAGE_SERVICE (PACKAGEID,SERVICEID,PACKAGENAME,SERVICENAME) ");
		sb_insertData.append("VALUES (?,?,'','') ");
		sb_insertData.append("ON DUPLICATE KEY ");
		sb_insertData.append("UPDATE UPDATEDDATE = now() ");
		
		if(!packageLoaderStart.equals("false")){
			return;
		}
		
		try {
			InitialContext context = new InitialContext();
			DataSource datasource = (DataSource) context.lookup(packageLoaderJNDI);  
			conn = datasource.getConnection();
			
			if(conn != null){
				psmtCreateTable = conn.prepareStatement(sb_createTable.toString());
				psmtCreateTable.execute();
				psmtInsertData = conn.prepareStatement(sb_insertData.toString());
				
				Reflections reflections = new Reflections(new ConfigurationBuilder().setScanners(new SubTypesScanner(false), new ResourcesScanner())
		                .setUrls(ClasspathHelper.forClassLoader(ClasspathHelper.classLoaders(new ClassLoader[0])))
		                .filterInputsBy(new FilterBuilder().includePackage(packagePath)));

				Set<Class<? extends Object>> clazzSet = reflections.getSubTypesOf(Object.class);
		    for (Class<? extends Object> clazz : clazzSet) {
	       	Method[] methods = clazz.getMethods();
	       	for (int j = 0; j < methods.length; j++) {
	       		if(methods[j].isAnnotationPresent(org.springframework.web.bind.annotation.RequestMapping.class)){
	   					psmtInsertData.setString(1, clazz.getName());
	   					psmtInsertData.setString(2, methods[j].getName());
	   					psmtInsertData.executeUpdate();
	   					psmtInsertData.clearParameters();
	       				}
	       			}
	    		}
			}
			log.info("Success Regist between package and service in package to MysqlDB");
		} catch (Exception e) {
			e.printStackTrace();
			
			try {
				psmtCreateTable.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
			try {
				psmtInsertData.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}

			try {
				conn.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} finally{
			try {
				psmtCreateTable.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
			try {
				psmtInsertData.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}

			try {
				conn.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
	}
}
