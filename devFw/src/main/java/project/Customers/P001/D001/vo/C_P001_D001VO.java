package project.Customers.P001.D001.vo;



import java.util.Date;

import org.springframework.stereotype.Component;

@Component("C_P001_D001VO")
public class C_P001_D001VO {
	private String memberid;
	private String pw;
	private String email;
	private String name;
	private String birth;
	private String address;
	private String roadAddress;
	private String jibunAddress;
	private String detailAddress;
	private String extraAddress;
	private String nickname;
	private String phonenumber;
	private Date reg_date;
	private Date log_date;
	private String approval_status;
	private String approval_key;
	private String verify;
	private int member_point_code;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getApproval_status() {
		return approval_status;
	}
	public void setApproval_status(String approval_status) {
		this.approval_status = approval_status;
	}
	public String getApproval_key() {
		return approval_key;
	}
	public void setApproval_key(String approval_key) {
		this.approval_key = approval_key;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getLog_date() {
		return log_date;
	}
	public void setLog_date(Date log_date) {
		this.log_date = log_date;
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
	public String getVerify() {
		return verify;
	}
	public void setVerify(String verify) {
		this.verify = verify;
	}
	public int getMember_point_code() {
		return member_point_code;
	}
	public void setMember_point_code(int member_point_code) {
		this.member_point_code = member_point_code;
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
