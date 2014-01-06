package kr.co.killers.support.spring.exception.resolver;

import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;

public class SimpleMappingExceptionResolver extends	org.springframework.web.servlet.handler.SimpleMappingExceptionResolver {

	public SimpleMappingExceptionResolver() {
	}

	@Override
	public String buildLogMessage(Exception e, HttpServletRequest req) {
		return "MVC exception: " + e.getLocalizedMessage();
	}

	@Override
	protected ModelAndView doResolveException(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception exception) {

		ModelAndView mav = super.doResolveException(request, response, handler,
				exception);

		mav.addObject("url", request.getRequestURL());
		mav.addObject("timestamp", new Date());
		mav.addObject("status", 500);
		return mav;
	}
}
