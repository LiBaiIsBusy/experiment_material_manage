package edu.chaohu.hgl.entity;

/**
 * 库存实体类
 */
public class Stock {

	private long id;//ID
	private String productCode;//耗材编号
	private String productName;//耗材名称
	private int currentNumber;//当前库容
	private int maxNumber;//最大库容
	private int miniNumber;//最小库容

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

	public int getCurrentNumber() {
		return currentNumber;
	}

	public void setCurrentNumber(int currentNumber) {
		this.currentNumber = currentNumber;
	}

	public int getMaxNumber() {
		return maxNumber;
	}

	public void setMaxNumber(int maxNumber) {
		this.maxNumber = maxNumber;
	}

	public int getMiniNumber() {
		return miniNumber;
	}

	public void setMiniNumber(int miniNumber) {
		this.miniNumber = miniNumber;
	}
}
