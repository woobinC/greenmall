package dto;

import java.sql.Date;

public class Goods {
	private int pNo;
	private int cNum;
	private String pName;
	private int pPrice;
	private int pSale;
	private String pImg1;
	private String pImg2;
	private int pCnt;
	private Date pDate;
	
	
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public int getcNum() {
		return cNum;
	}
	public void setcNum(int cNum) {
		this.cNum = cNum;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getpPrice() {
		return pPrice;
	}
	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
	public int getpSale() {
		return pSale;
	}
	public void setpSale(int pSale) {
		this.pSale = pSale;
	}
	public String getpImg1() {
		return pImg1;
	}
	public void setpImg1(String pImg1) {
		this.pImg1 = pImg1;
	}
	public String getpImg2() {
		return pImg2;
	}
	public void setpImg2(String pImg2) {
		this.pImg2 = pImg2;
	}
	public int getpCnt() {
		return pCnt;
	}
	public void setpCnt(int pCnt) {
		this.pCnt = pCnt;
	}
	public Date getpDate() {
		return pDate;
	}
	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}
	

}
