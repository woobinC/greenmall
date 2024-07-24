package dto;

import java.sql.Date;

public class Reply {
	private int replyKey;
	private int boardKey;
	private String mId;
	private int reLevel;
	private int reStep;
	private String reContent;
	private String reDel;
	private Date reRdate;
	
	
	public int getReplyKey() {
		return replyKey;
	}
	public void setReplyKey(int replyKey) {
		this.replyKey = replyKey;
	}
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
	public int getReLevel() {
		return reLevel;
	}
	public void setReLevel(int reLevel) {
		this.reLevel = reLevel;
	}
	public int getReStep() {
		return reStep;
	}
	public void setReStep(int reStep) {
		this.reStep = reStep;
	}
	public String getReContent() {
		return reContent;
	}
	public void setReContent(String reContent) {
		this.reContent = reContent;
	}
	public String getReDel() {
		return reDel;
	}
	public void setReDel(String reDel) {
		this.reDel = reDel;
	}
	public Date getReRdate() {
		return reRdate;
	}
	public void setReRdate(Date reRdate) {
		this.reRdate = reRdate;
	}
	

}
