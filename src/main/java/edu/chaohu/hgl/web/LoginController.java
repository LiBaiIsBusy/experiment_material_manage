package edu.chaohu.hgl.web;


import com.sun.xml.internal.ws.util.StringUtils;
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


@Controller
@RequestMapping("/main")
public class LoginController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	private String index(Model model,HttpServletRequest request) {
		model.addAttribute("userId",request.getParameter("userId"));
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
		User user = userService.queryByUserName(userName);
		if (user!=null){
			if (password.equals(user.getPassword())){
				return new Result(true,user);
			}else {
				return new Result(false,"密码错误");
			}
		}else {
			return new Result(false,"用户不存在");
		}
	}

	@RequestMapping(value = "/toModifyPassword", method = RequestMethod.GET)
	private String toModifyPassword(HttpServletRequest request, Model model) {
		model.addAttribute("userId",request.getParameter("userId"));
		return "modify_password";
	}

	@RequestMapping(value = "/modifyPassword", method = RequestMethod.POST)
	@ResponseBody
	private Result modifyPassword(HttpServletRequest request) {
		String newPassword = request.getParameter("newPassword");
		long id = Long.parseLong(request.getParameter("userId"));
		int result = userService.updatePassword(newPassword,id);
		if (result==1){
			return new Result(true,"修改成功");
		}else {
			return new Result(false,"修改失败");
		}
	}
}
