package edu.chaohu.hgl.service;


import edu.chaohu.hgl.entity.Record;

import java.util.List;


public interface RecordService {
	/**
	 * 入库出库
	 * 判断 type 区分入库出库
	 * 过程中更新库存表中现有库存
	 * @param record
	 * @return
	 */
	int addRecord(Record record);

	/**
	 * 查询所有入库出库信息
	 * 判断type 区分入库出库
	 * @param type
	 * @return
	 */
	List<Record> queryAll(String type);
}
