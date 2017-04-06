package edu.chaohu.hgl.dao;


import edu.chaohu.hgl.entity.Stock;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface StockDao {

	/**
	 * 查询所有耗材库存
	 * @return
	 */
	List<Stock> queryAll();
	/**
	 * 通过编号查耗材
	 * @return
	 */
	Stock queryOne(String productCode);

	Stock queryOneByName(String productName);

	/**
	 * 增加耗材
	 * @param stock
	 * @return
	 */
	int addOne(Stock stock);

	/**
	 * 更新耗材
	 * @param stock
	 * @return
	 */
	int updateOne(Stock stock);

	/**
	 * 更新库存表现有库存
	 * @param addNumber
	 * @param productCode
	 * @return
	 */
	int updateCurrntNumber(@Param("addNumber")int addNumber,@Param("productCode")String productCode);

}
