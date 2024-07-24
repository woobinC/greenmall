package dto;

public class Review {
	private int boardKey;
	private String mId;
	private int pNo;
	private String rKind;
	private String rTitle;
	private String rRdate;
	private String rContent;
	private int scope;
	
	
	public int getBoardKey() {
		return boardKey;
	}
	public void setBoardKey(int boardKey) {
		this.boardKey = boardKey;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public String getrKind() {
		return rKind;
	}
	public void setrKind(String rKind) {
		this.rKind = rKind;
	}
	public String getrTitle() {
		return rTitle;
	}
	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}
	public String getrRdate() {
		return rRdate;
	}
	public void setrRdate(String rRdate) {
		this.rRdate = rRdate;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public int getScope() {
		return scope;
	}
	public void setScope(int scope) {
		this.scope = scope;
	}

}
