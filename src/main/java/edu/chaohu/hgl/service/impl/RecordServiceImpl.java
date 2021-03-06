package edu.chaohu.hgl.service.impl;


import edu.chaohu.hgl.dao.RecordDao;
import edu.chaohu.hgl.dao.StockDao;
import edu.chaohu.hgl.entity.Record;
import edu.chaohu.hgl.entity.Stock;
import edu.chaohu.hgl.service.RecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class RecordServiceImpl implements RecordService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private RecordDao recordDao;

    @Autowired
    private StockDao stockDao;


    @Override
    public int addRecord(Record record) {
        int updateNumber=0;
        if ("RK".equals(record.getType())){
            updateNumber = record.getUpdateNumber();
        }else {
            updateNumber = 0-record.getUpdateNumber();
        }
        record.setUpdateNumber(updateNumber);
        int res = stockDao.updateCurrntNumber(record.getUpdateNumber(),record.getProductCode());
        if (res==1){
            record.setUpdateNumber(Math.abs(updateNumber));
            return recordDao.addOne(record);
        }else {
            return 0;
        }

    }

    @Override
    public List<Record> queryAll(String type) {
        return recordDao.queryAll(type);
    }
}
