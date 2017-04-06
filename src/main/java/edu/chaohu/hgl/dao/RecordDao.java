package edu.chaohu.hgl.dao;


import edu.chaohu.hgl.entity.Record;

import java.util.List;

public interface RecordDao {
    int addOne(Record record);
    List<Record> queryAll(String type);
}
