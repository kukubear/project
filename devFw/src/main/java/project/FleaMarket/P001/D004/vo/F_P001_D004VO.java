package project.FleaMarket.P001.D004.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component("F_P001_D004VO")
public class F_P001_D004VO {
	private String join_code = "";
	private String join_group = "";
	private String join_name = "";
	private String join_phonenumber = "";
	private String join_email = "";
	private String join_companynumber = "";
	private String join_product = "";
	private String join_sns = "";
	private String join_etc = "";
	private Date join_date;
	private String join_status = "";
	
	public F_P001_D004VO() {
		System.out.println("MemberVO ������ ȣ��");
	}

	public String getJoin_code() {
		return join_code;
	}

	public void setJoin_code(String join_code) {
		this.join_code = join_code;
	}

	public String getJoin_name() {
		return join_name;
	}

	public void setJoin_name(String join_name) {
		this.join_name = join_name;
	}

	public String getJoin_phonenumber() {
		return join_phonenumber;
	}

	public void setJoin_phonenumber(String join_phonenumber) {
		this.join_phonenumber = join_phonenumber;
	}

	public String getJoin_email() {
		return join_email;
	}

	public void setJoin_email(String join_email) {
		this.join_email = join_email;
	}

	public String getJoin_companynumber() {
		return join_companynumber;
	}

	public void setJoin_companynumber(String join_companynumber) {
		this.join_companynumber = join_companynumber;
	}

	public String getJoin_product() {
		return join_product;
	}

	public void setJoin_product(String join_product) {
		this.join_product = join_product;
	}

	public String getJoin_sns() {
		return join_sns;
	}

	public void setJoin_sns(String join_sns) {
		this.join_sns = join_sns;
	}

	public String getJoin_etc() {
		return join_etc;
	}

	public void setJoin_etc(String join_etc) {
		this.join_etc = join_etc;
	}

	public Date getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}

	public String getJoin_group() {
		return join_group;
	}

	public void setJoin_group(String join_group) {
		this.join_group = join_group;
	}

	public String getJoin_status() {
		return join_status;
	}

	public void setJoin_status(String join_status) {
		this.join_status = join_status;
	}

	

	
	

	
}
