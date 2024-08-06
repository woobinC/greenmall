package dto;

public class DetailOrder {
	private int orderDetKey;
	private int bNum;
	private int pNo;
	private int price;
	private int dCnt;
	// 조인용
	private String pName;
	
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getOrderDetKey() {
		return orderDetKey;
	}
	public void setOrderDetKey(int orderDetKey) {
		this.orderDetKey = orderDetKey;
	}
	public int getbNum() {
		return bNum;
	}
	public void setbNum(int bNum) {
		this.bNum = bNum;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getdCnt() {
		return dCnt;
	}
	public void setdCnt(int dCnt) {
		this.dCnt = dCnt;
	}
	
	@Override
	public String toString() {
		return "DetailOrder [orderDetKey=" + orderDetKey + ", bNum=" + bNum + ", pNo=" + pNo + ", price=" + price
				+ ", dCnt=" + dCnt + ", pName=" + pName + "]";
	}

}
