package com.classnet.entity.suzuki;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@SuppressWarnings("serial")
@Entity
@Table(name="T_WASHINGS")
public class WashingsEntity implements Serializable{
	private Integer id;
	private String vin_code;
	private String car_type;
	private String mobile_unit;
	private String filling_result;
	private Date data_time;
	private String filling_volume;
	private String filling_volume_time;
	private String process_cycle_time;
	private String col1;
	private String col2;
	private String col3;
	private String col4;
	private String col5;
	private String col6;
	
	@Id
	@GeneratedValue
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="vin_code")
	public String getVin_code() {
		return vin_code;
	}
	public void setVin_code(String vin_code) {
		this.vin_code = vin_code;
	}
	@Column(name="car_type")
	public String getCar_type() {
		return car_type;
	}
	public void setCar_type(String car_type) {
		this.car_type = car_type;
	}
	@Column(name="mobile_unit")
	public String getMobile_unit() {
		return mobile_unit;
	}
	public void setMobile_unit(String mobile_unit) {
		this.mobile_unit = mobile_unit;
	}
	@Column(name="filling_result")
	public String getFilling_result() {
		return filling_result;
	}
	public void setFilling_result(String filling_result) {
		this.filling_result = filling_result;
	}
	@Column(name="data_time")
	public Date getData_time() {
		return data_time;
	}
	public void setData_time(Date data_time) {
		this.data_time = data_time;
	}
	@Column(name="filling_volume")
	public String getFilling_volume() {
		return filling_volume;
	}
	public void setFilling_volume(String filling_volume) {
		this.filling_volume = filling_volume;
	}
	@Column(name="filling_volume_time")
	public String getFilling_volume_time() {
		return filling_volume_time;
	}
	public void setFilling_volume_time(String filling_volume_time) {
		this.filling_volume_time = filling_volume_time;
	}
	@Column(name="process_cycle_time")
	public String getProcess_cycle_time() {
		return process_cycle_time;
	}
	public void setProcess_cycle_time(String process_cycle_time) {
		this.process_cycle_time = process_cycle_time;
	}
	@Column(name="col1")
	public String getCol1() {
		return col1;
	}
	public void setCol1(String col1) {
		this.col1 = col1;
	}
	@Column(name="col2")
	public String getCol2() {
		return col2;
	}
	public void setCol2(String col2) {
		this.col2 = col2;
	}
	@Column(name="col3")
	public String getCol3() {
		return col3;
	}
	public void setCol3(String col3) {
		this.col3 = col3;
	}
	@Column(name="col4")
	public String getCol4() {
		return col4;
	}
	public void setCol4(String col4) {
		this.col4 = col4;
	}
	@Column(name="col5")
	public String getCol5() {
		return col5;
	}
	public void setCol5(String col5) {
		this.col5 = col5;
	}
	@Column(name="col6")
	public String getCol6() {
		return col6;
	}
	public void setCol6(String col6) {
		this.col6 = col6;
	}
}
