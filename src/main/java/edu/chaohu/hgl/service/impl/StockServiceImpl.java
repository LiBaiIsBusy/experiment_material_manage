package edu.chaohu.hgl.service.impl;


import edu.chaohu.hgl.dao.StockDao;
import edu.chaohu.hgl.entity.Stock;
import edu.chaohu.hgl.service.StockService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class StockServiceImpl implements StockService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private StockDao stockDao;

    @Override
    public List<Stock> queryAllStock() {
        return stockDao.queryAll();
    }

    @Override
    public Stock queryOne(String productCode) {
        return stockDao.queryOne(productCode);
    }

    @Override
    public int addStock(Stock stock) {
        return stockDao.addOne(stock);
    }

    @Override
    public int updateStock(Stock stock) {
        return stockDao.updateOne(stock);
    }

    @Override
    public int deleteStock(Stock stock) {
        return stockDao.deleteOne(stock);
    }
}
