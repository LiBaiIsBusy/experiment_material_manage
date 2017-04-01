package edu.chaohu.hgl.web;


import edu.chaohu.hgl.dto.Result;
import edu.chaohu.hgl.entity.User;
import edu.chaohu.hgl.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Controller
@RequestMapping("/main")
public class LoginController{

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
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

	@RequestMapping(value = "/toLogin", method = RequestMethod.GET)
	private String toLogin() {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	private Result login(HttpServletRequest request) {
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		Result result = userService.login(userName,password);
		if (result.isSuccess()){
			request.getSession().setAttribute("user",result.getData());
		}
		return result;
	}

	@RequestMapping(value = "/toModifyPassword", method = RequestMethod.GET)
	private String toModifyPassword(HttpServletRequest request, Model model,HttpServletResponse response) {
		try {
			User user = (User) request.getSession().getAttribute("user");
			if (user==null){
				response.sendRedirect(request.getContextPath()+"/main/toLogin");
			}
		} catch (IOException e) {
			logger.error(e.getMessage(),e);
		}
		return "modify_password";
	}

	@RequestMapping(value = "/modifyPassword", method = RequestMethod.POST)
	@ResponseBody
	private Result modifyPassword(HttpServletRequest request,HttpServletResponse response) {
		try {
			User user = (User) request.getSession().getAttribute("user");
			if (user==null){
				response.sendRedirect(request.getContextPath()+"/main/toLogin");
			}
			String newPassword = request.getParameter("newPassword");
			int result = userService.updatePassword(newPassword,user.getId());
			if (result==1){
				return new Result(true,"修改成功");
			}
		} catch (IOException e) {
			logger.error(e.getMessage(),e);
		}
		return new Result(false,"修改失败");
	}
}
