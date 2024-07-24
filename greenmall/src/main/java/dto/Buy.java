package dto;

import java.sql.Date;

public class Buy {
	private int bNum;
	private String bId;
	private int totalPrice;
	private Date bRdate;
	private String bSatus;
	private String bName;
	private String bAddr;
	private String bAddrDe;
	private String bTel;
	private String bRequest;
	private int bCnt;
	
	
	public int getbNum() {
		return bNum;
	}
	public void setbNum(int bNum) {
		this.bNum = bNum;
	}
	public String getbId() {
		return bId;
	}
	public void setbId(String bId) {
		this.bId = bId;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public Date getbRdate() {
		return bRdate;
	}
	public void setbRdate(Date bRdate) {
		this.bRdate = bRdate;
	}
	public String getbSatus() {
		return bSatus;
	}
	public void setbSatus(String bSatus) {
		this.bSatus = bSatus;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getbAddr() {
		return bAddr;
	}
	public void setbAddr(String bAddr) {
		this.bAddr = bAddr;
	}
	public String getbAddrDe() {
		return bAddrDe;
	}
	public void setbAddrDe(String bAddrDe) {
		this.bAddrDe = bAddrDe;
	}
	public String getbTel() {
		return bTel;
	}
	public void setbTel(String bTel) {
		this.bTel = bTel;
	}
	public String getbRequest() {
		return bRequest;
	}
	public void setbRequest(String bRequest) {
		this.bRequest = bRequest;
	}
	public int getbCnt() {
		return bCnt;
	}
	public void setbCnt(int bCnt) {
		this.bCnt = bCnt;
	}
	
}
