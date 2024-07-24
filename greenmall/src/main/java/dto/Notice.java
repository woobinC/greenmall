package dto;

import java.sql.Date;

public class Notice {
	private int noticeKey;
	private String adminId;
	private String nTitle;
	private String nContent;
	private int hit;
	private Date nRdate;
	
	
	public int getNoticeKey() {
		return noticeKey;
	}
	public void setNoticeKey(int noticeKey) {
		this.noticeKey = noticeKey;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getnTitle() {
		return nTitle;
	}
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	public String getnContent() {
		return nContent;
	}
	public void setnContent(String nContent) {
		this.nContent = nContent;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public Date getnRdate() {
		return nRdate;
	}
	public void setnRdate(Date nRdate) {
		this.nRdate = nRdate;
	}

}
