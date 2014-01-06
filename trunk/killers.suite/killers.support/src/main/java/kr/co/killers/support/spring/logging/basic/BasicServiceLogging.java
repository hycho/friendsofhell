package kr.co.killers.support.spring.logging.basic;

import java.util.Map;

import kr.co.killers.support.utils.DateUtil;
import kr.co.killers.support.utils.SecurityUtil;
import kr.co.killers.tools.flume.client.KillersRpcClientService;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Aspect
public class BasicServiceLogging {
	static final Logger log = LoggerFactory.getLogger(BasicServiceLogging.class);
	
	@Before("execution(* kr.co.killers.components.*.controller.*.*(..))")
	public void doBeforeLog(JoinPoint joinPoint) {
	}
	
	@After("execution(* kr.co.killers.components.*.controller.*.*(..))")
	public void doAfterLog(JoinPoint joinPoint) {
	}
	
	@Around("execution(* kr.co.killers.components.*.controller.*.*(..))")
	public Object invoke(final ProceedingJoinPoint pjp) throws Throwable {
	  Object[] args = pjp.getArgs();
	  Long startTime = System.nanoTime();
	  Long startCTime = System.currentTimeMillis();
	  
	  Object proceed = pjp.proceed(args);
	  
	  Long endTime = System.nanoTime();
	  Long endCTime = System.currentTimeMillis();
	  Long ime = endTime - startTime;
	  	
	  Map<String, Object> data = SecurityUtil.getLoginDetailMap();
		if(data != null){
			StringBuffer logBuf = new StringBuffer();
			logBuf.append(DateUtil.format("yyyy"));
			logBuf.append(" ");
			logBuf.append(DateUtil.format("MM"));
			logBuf.append(" ");
			logBuf.append(DateUtil.format("dd"));
			logBuf.append(" ");
			logBuf.append(startCTime);
			logBuf.append(" ");
			logBuf.append(endCTime);
			logBuf.append(" ");
			logBuf.append(ime);
			logBuf.append(" ");
			logBuf.append(pjp.getTarget().getClass().getName());
			logBuf.append(" ");
			logBuf.append(pjp.getSignature().getName());
			logBuf.append(" ");
			logBuf.append(data.get("id"));
			logBuf.append(" ");
			logBuf.append(data.get("birthyear"));
			logBuf.append(" ");
			logBuf.append(data.get("birthmonth"));
			logBuf.append(" ");
			logBuf.append(data.get("birthday"));
			logBuf.append(" ");
			logBuf.append(data.get("sex"));
			logBuf.append(" ");
			logBuf.append(data.get("contrycode"));
			logBuf.append(" ");
			logBuf.append(data.get("emaillast"));
						
			log.info(logBuf.toString());
			KillersRpcClientService.getInstance().sendDataToFlume(logBuf.toString());
		}
	   
	  return proceed;
	 }
}