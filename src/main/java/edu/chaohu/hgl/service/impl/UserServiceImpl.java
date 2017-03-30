package edu.chaohu.hgl.service.impl;


import edu.chaohu.hgl.dao.UserDao;
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
	public User queryByUserName(String userName) {
		return userDao.queryByUserName(userName);
	}

	@Override
	public int updatePassword(String password, long id) {
		return userDao.updatePassword(password,id);
	}
}
