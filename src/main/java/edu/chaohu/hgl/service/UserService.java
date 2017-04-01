package edu.chaohu.hgl.service;

import edu.chaohu.hgl.dto.Result;
import edu.chaohu.hgl.entity.User;


/**
 * 业务接口：站在"使用者"角度设计接口 三个方面：方法定义粒度，参数，返回类型（return 类型/异常）
 */
public interface UserService {

	/**
	 * 通过用户名查找用户
	 * 
	 * @param userName
	 * @return
	 */
	Result login(String userName,String password);
	/**
	 * 修改密码
	 * @param password
	 * @param id
	 * @return
	 */
	int updatePassword(String password,long id);



}
