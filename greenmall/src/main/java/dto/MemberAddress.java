package dto;

public class MemberAddress {
	private int addrNum;
	private String mId;
	private String aName;
	private String aPostCode;
	private String aAddr;
	private String aAddrDe;
	private String aRequest;
	private String basicAddr;
	
	
	public int getAddrNum() {
		return addrNum;
	}
	public void setAddrNum(int addrNum) {
		this.addrNum = addrNum;
	}
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getaName() {
		return aName;
	}
	public void setaName(String aName) {
		this.aName = aName;
	}
	public String getaAddr() {
		return aAddr;
	}
	public void setaAddr(String aAddr) {
		this.aAddr = aAddr;
	}
	public String getaPostCode() {
		return aPostCode;
	}
	public void setaPostCode(String aPostCode) {
		this.aPostCode = aPostCode;
	}
	public String getaAddrDe() {
		return aAddrDe;
	}
	public void setaAddrDe(String aAddrDe) {
		this.aAddrDe = aAddrDe;
	}
	public String getaRequest() {
		return aRequest;
	}
	public void setaRequest(String aRequest) {
		this.aRequest = aRequest;
	}
	public String getBasicAddr() {
		return basicAddr;
	}
	public void setBasicAddr(String basicAddr) {
		this.basicAddr = basicAddr;
	}
	@Override
	public String toString() {
		return "MemberAddress [addrNum=" + addrNum + ", mId=" + mId + ", aName=" + aName + ", aPostCode=" + aPostCode
				+ ", aAddr=" + aAddr + ", aAddrDe=" + aAddrDe + ", aRequest=" + aRequest + ", basicAddr=" + basicAddr
				+ "]";
	}
	
}
