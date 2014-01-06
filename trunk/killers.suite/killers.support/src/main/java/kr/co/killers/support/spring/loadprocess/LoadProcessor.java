package kr.co.killers.support.spring.loadprocess;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import kr.co.killers.core.constants.ConfigurationConstant;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.core.env.Environment;

/**
* <PRE>
* 
* 
* </PRE>
* @author hycho
* @version 1.0
* @since 13/10/2013
* @modified
* @modifier
*/
@Configuration
@PropertySources(value={
		@PropertySource({"classpath:/config/service.datasource.properties"})
})

public class LoadProcessor {
	static final Logger log = LoggerFactory.getLogger(LoadProcessor.class);
	
	@Autowired Environment env;
		
	@PostConstruct
	public void propertyCon(){
		ConfigurationConstant.env = env;
	}
	
	@Bean
	public static PropertySourcesPlaceholderConfigurer placeholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}
}