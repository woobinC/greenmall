package dto;

import java.sql.Date;

public class Goods {
	private int p_No;
	private int c_Num;
	private String p_Name;
	private int p_Price;
	private int p_Sale;
	private String p_Img1;
	private String p_Img2;
	private int p_Cnt;
	private Date p_Date;
	// join용
	private String c_Name;
	
	public int getP_No() {
		return p_No;
	}
	public void setP_No(int p_No) {
		this.p_No = p_No;
	}
	public int getC_Num() {
		return c_Num;
	}
	public void setC_Num(int c_Num) {
		this.c_Num = c_Num;
	}
	public String getP_Name() {
		return p_Name;
	}
	public void setP_Name(String p_Name) {
		this.p_Name = p_Name;
	}
	public int getP_Price() {
		return p_Price;
	}
	public void setP_Price(int p_Price) {
		this.p_Price = p_Price;
	}
	public int getP_Sale() {
		return p_Sale;
	}
	public void setP_Sale(int p_Sale) {
		this.p_Sale = p_Sale;
	}
	public String getP_Img1() {
		return p_Img1;
	}
	public void setP_Img1(String p_Img1) {
		this.p_Img1 = p_Img1;
	}
	public String getP_Img2() {
		return p_Img2;
	}
	public void setP_Img2(String p_Img2) {
		this.p_Img2 = p_Img2;
	}
	public int getP_Cnt() {
		return p_Cnt;
	}
	public void setP_Cnt(int p_Cnt) {
		this.p_Cnt = p_Cnt;
	}
	public Date getP_Date() {
		return p_Date;
	}
	public void setP_Date(Date p_Date) {
		this.p_Date = p_Date;
	}
	public String getC_Name() {
		return c_Name;
	}
	public void setC_Name(String c_Name) {
		this.c_Name = c_Name;
	}
	@Override
	public String toString() {
		return "Goods [p_No=" + p_No + ", c_Num=" + c_Num + ", p_Name=" + p_Name + ", p_Price=" + p_Price + ", p_Sale="
				+ p_Sale + ", p_Img1=" + p_Img1 + ", p_Img2=" + p_Img2 + ", p_Cnt=" + p_Cnt + ", p_Date=" + p_Date
				+ ", c_Name=" + c_Name + "]";
	}


}
