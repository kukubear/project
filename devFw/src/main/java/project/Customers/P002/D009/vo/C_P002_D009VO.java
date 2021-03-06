package project.Customers.P002.D009.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component("C_P002_D009VO")
public class C_P002_D009VO {
	
	private String memberid;
	private String pw;
	private String email;
	private String name;
	private String birth;
	private String address; //postcode
	private String roadAddress; // 도로명
	private String jibunAddress; //지번
	private String detailAddress; // 상세주소
	private String extraAddress;
	private String nickname;
	private String phonenumber;
	private String approval_status;
	private String verify;
	private String seller_group;
	private String flea_seller_group;
	
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRoadAddress() {
		return roadAddress;
	}
	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}
	public String getJibunAddress() {
		return jibunAddress;
	}
	public void setJibunAddress(String jibunAddress) {
		this.jibunAddress = jibunAddress;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	public String getExtraAddress() {
		return extraAddress;
	}
	public void setExtraAddress(String extraAddress) {
		this.extraAddress = extraAddress;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getApproval_status() {
		return approval_status;
	}
	public void setApproval_status(String approval_status) {
		this.approval_status = approval_status;
	}
	public String getVerify() {
		return verify;
	}
	public void setVerify(String verify) {
		this.verify = verify;
	}
	public String getSeller_group() {
		return seller_group;
	}
	public void setSeller_group(String seller_group) {
		this.seller_group = seller_group;
	}
	public String getFlea_seller_group() {
		return flea_seller_group;
	}
	public void setFlea_seller_group(String flea_seller_group) {
		this.flea_seller_group = flea_seller_group;
	}
	

}
