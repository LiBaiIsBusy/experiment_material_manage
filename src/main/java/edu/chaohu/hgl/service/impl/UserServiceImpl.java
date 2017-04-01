package edu.chaohu.hgl.service.impl;


import edu.chaohu.hgl.dao.UserDao;
import edu.chaohu.hgl.dto.Result;
import edu.chaohu.hgl.entity.User;
import edu.chaohu.hgl.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class UserServiceImpl implements UserService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired
	private UserDao userDao;

	@Override
	public Result login(String userName,String password) {
		User user = userDao.queryByUserName(userName);
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

	@Override
	public int updatePassword(String password, long id) {
		return userDao.updatePassword(password,id);
	}
}
