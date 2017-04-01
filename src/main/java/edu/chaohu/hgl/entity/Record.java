package edu.chaohu.hgl.entity;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 出入库记录表
 */
public class Record {
    private long id; //ID
    private String productCode;//耗材编号
    private String productName;//耗材名称
    private String type;//类型 RK为入库 CK为出库
    private int updateNumber;//出入库数量
    private Date updateDate;//出入库时间
    private BigDecimal price;//入库价格

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getUpdateNumber() {
        return updateNumber;
    }

    public void setUpdateNumber(int updateNumber) {
        this.updateNumber = updateNumber;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }
}
