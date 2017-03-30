package edu.chaohu.hgl.dao;


import edu.chaohu.hgl.entity.User;
import org.apache.ibatis.annotations.Param;


public interface UserDao {

	/**
	 * 通过用户名查询用户
	 * 
	 * @param userName
	 * @return
	 */
	User queryByUserName(String userName);

	/**
	 * 根据id修改密码
	 * @param password
	 * @param id
	 * @return
	 */
	int updatePassword(@Param("password")String password, @Param("id")long id);

}
