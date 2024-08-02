package dto;

import java.sql.Date;

public class Member {
	private String mId;
	private String mPw;
	private String mEmail;
	private String mName;
	private String mTel;
	private String mPostCode;
	private String mAddr;
	private String mAddrDe;
	private int mileage;
	private String mDel = "n";
	private Date mRdate;
	private String compTitle;
	private String compNum;
	private String compName;
	private String compPostCode;
	private String compAddr;
	private String compAddrDe;
	
	
	
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



	public String getmTel() {
		return mTel;
	}



	public void setmTel(String mTel) {
		this.mTel = mTel;
	}



	public String getmPostCode() {
		return mPostCode;
	}



	public void setmPostCode(String mPostCode) {
		this.mPostCode = mPostCode;
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



	public String getCompTitle() {
		return compTitle;
	}



	public void setCompTitle(String compTitle) {
		this.compTitle = compTitle;
	}



	public String getCompNum() {
		return compNum;
	}



	public void setCompNum(String compNum) {
		this.compNum = compNum;
	}



	public String getCompName() {
		return compName;
	}



	public void setCompName(String compName) {
		this.compName = compName;
	}



	public String getCompPostCode() {
		return compPostCode;
	}



	public void setCompPostCode(String compPostCode) {
		this.compPostCode = compPostCode;
	}



	public String getCompAddr() {
		return compAddr;
	}



	public void setCompAddr(String compAddr) {
		this.compAddr = compAddr;
	}



	public String getCompAddrDe() {
		return compAddrDe;
	}



	public void setCompAddrDe(String compAddrDe) {
		this.compAddrDe = compAddrDe;
	}



	@Override
	public String toString() {
		return "Member [mId=" + mId + ", mPw=" + mPw + ", mEmail=" + mEmail + ", mName=" + mName + ", mTel=" + mTel
				+ ", mPostCode=" + mPostCode + ", mAddr=" + mAddr + ", mAddrDe=" + mAddrDe + ", mileage=" + mileage
				+ ", mDel=" + mDel + ", mRdate=" + mRdate + ", compTitle=" + compTitle + ", compNum=" + compNum
				+ ", compName=" + compName + ", compPostCode=" + compPostCode + ", compAddr=" + compAddr
				+ ", compAddrDe=" + compAddrDe + "]";
	}
	
	public String getMaskedEmail() {
        if (mEmail == null || mEmail.isEmpty()) {
            return "";
        }
        int atPosition = mEmail.indexOf('@');
        if (atPosition <= 1) {
            return mEmail; // email이 너무 짧아서 마스킹할 수 없는 경우
        }
        String domain = mEmail.substring(atPosition);
        String localPart = mEmail.substring(0, atPosition);
        String maskedLocalPart = localPart.charAt(0) + "***" + localPart.charAt(localPart.length() - 1);
        return maskedLocalPart + domain;
    }
}
