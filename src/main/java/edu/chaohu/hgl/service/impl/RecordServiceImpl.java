package edu.chaohu.hgl.service.impl;


import edu.chaohu.hgl.dao.RecordDao;
import edu.chaohu.hgl.dao.StockDao;
import edu.chaohu.hgl.entity.Record;
import edu.chaohu.hgl.service.RecordService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


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
        int res = stockDao.updateCurrntNumber(record.getUpdateNumber());
        if (res==1){
            return recordDao.addOne(record);
        }else {
            return 0;
        }

    }
}
