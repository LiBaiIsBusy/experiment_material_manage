package edu.chaohu.hgl.dao;


import edu.chaohu.hgl.entity.Stock;

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
	 * 删除耗材
	 * @param stock
	 * @return
	 */
	int deleteOne(Stock stock);

	int updateCurrntNumber(int addNumber);

}
