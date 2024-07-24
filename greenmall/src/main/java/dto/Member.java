package dto;

import java.sql.Date;

public class Member {
	private String mId;
	private String mPw;
	private String mEmail;
	private String mName;
	private String gender;
	private String mTel;
	private String mAddr;
	private String mAddrDe;
	private int mileage;
	private String mDel;
	private Date mRdate;
	
	
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmPw() {
		return mPw;
	}
	public void setmPw(String mPw) {
		this.mPw = mPw;
	}
	public String getmEmail() {
		return mEmail;
	}
	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getmTel() {
		return mTel;
	}
	public void setmTel(String mTel) {
		this.mTel = mTel;
	}
	public String getmAddr() {
		return mAddr;
	}
	public void setmAddr(String mAddr) {
		this.mAddr = mAddr;
	}
	public String getmAddrDe() {
		return mAddrDe;
	}
	public void setmAddrDe(String mAddrDe) {
		this.mAddrDe = mAddrDe;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public String getmDel() {
		return mDel;
	}
	public void setmDel(String mDel) {
		this.mDel = mDel;
	}
	public Date getmRdate() {
		return mRdate;
	}
	public void setmRdate(Date mRdate) {
		this.mRdate = mRdate;
	}
	
}
