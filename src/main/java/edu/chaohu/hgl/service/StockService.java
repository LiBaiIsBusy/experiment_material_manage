package edu.chaohu.hgl.service;


import edu.chaohu.hgl.entity.Stock;

import java.util.List;


public interface StockService {

	/**
	 * 库存管理
	 * 
	 * @return
	 */
	List<Stock> queryAllStock();
	Stock queryOne(String productCode);
	int addStock(Stock stock);
	int updateStock(Stock stock);
	int deleteStock(Stock stock);
}
