package edu.chaohu.hgl.service;


import edu.chaohu.hgl.entity.Record;



public interface RecordService {
	/**
	 * 入库出库
	 * 判断 type 区分入库出库
	 * 过程中更新库存表中现有库存
	 * @param record
	 * @return
	 */
	int addRecord(Record record);
}
