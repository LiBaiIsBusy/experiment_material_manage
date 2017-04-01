package edu.chaohu.hgl.web;


import edu.chaohu.hgl.entity.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Controller
@RequestMapping
public class BasicController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@RequestMapping
	private String index(Model model, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = (User) request.getSession().getAttribute("user");
			if (user==null){
				response.sendRedirect(request.getContextPath()+"/main/toLogin");
			}
		} catch (IOException e) {
			logger.error(e.getMessage(),e);
		}
		return "index";
	}
}
