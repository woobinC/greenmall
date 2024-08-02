package dto;

public class Basket {
	private int cartKey;
	private int pNo;
	private String mId;
	private	int cPrice; 
	private int cCnt;
	
	public int getCartKey() {
		return cartKey;
	}
	public void setCartKey(int cartKey) {
		this.cartKey = cartKey;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public int getcCnt() {
		return cCnt;
	}
	public void setcCnt(int cCnt) {
		this.cCnt = cCnt;
	}
	public int getcPrice() {
		return cPrice;
	}
	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}
	@Override
	public String toString() {
		return "Basket [cartKey=" + cartKey + ", pNo=" + pNo + ", mId=" + mId + ", cPrice=" + cPrice + ", cCnt=" + cCnt
				+ ", getCartKey()=" + getCartKey() + ", getpNo()=" + getpNo() + ", getmId()=" + getmId()
				+ ", getcCnt()=" + getcCnt() + ", getcPrice()=" + getcPrice() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

}
