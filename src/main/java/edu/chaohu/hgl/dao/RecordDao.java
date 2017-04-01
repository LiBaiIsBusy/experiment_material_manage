package edu.chaohu.hgl.dao;


import edu.chaohu.hgl.entity.Record;

public interface RecordDao {
    int addOne(Record record);
    int deleteOne(Record record);
}
