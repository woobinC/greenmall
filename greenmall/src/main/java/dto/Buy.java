package dto;

import java.sql.Date;

public class Buy {
	private int bNum;
	private String mId;
	private int totalPrice;
	private Date bRdate;
	private String bSatus;
	private String bName;
	private String bPostCode;
	private String bAddr;
	private String bAddrDe;
	private String bTel;
	private String bRequest;
	private int bCnt;

	public String getbPostCode() {
		return bPostCode;
	}

	public void setbPostCode(String bPostCode) {
		this.bPostCode = bPostCode;
	}

	public int getbNum() {
		return bNum;
	}

	public void setbNum(int bNum) {
		this.bNum = bNum;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
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

	@Override
	public String toString() {
		return "Buy [bNum=" + bNum + ", mId=" + mId + ", totalPrice=" + totalPrice + ", bRdate=" + bRdate + ", bSatus="
				+ bSatus + ", bName=" + bName + ", bPostCode=" + bPostCode + ", bAddr=" + bAddr + ", bAddrDe=" + bAddrDe
				+ ", bTel=" + bTel + ", bRequest=" + bRequest + ", bCnt=" + bCnt + "]";
	}
	
}
