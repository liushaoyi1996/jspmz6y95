package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 包间信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-02-24 16:08:20
 */
@TableName("baojianxinxi")
public class BaojianxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public BaojianxinxiEntity() {
		
	}
	
	public BaojianxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 房间号
	 */
					
	private String fangjianhao;
	
	/**
	 * 包间类型
	 */
					
	private String baojianleixing;
	
	/**
	 * 图片
	 */
					
	private String tupian;
	
	/**
	 * 容纳人数
	 */
					
	private Integer rongnarenshu;
	
	/**
	 * 包间状态
	 */
					
	private String baojianzhuangtai;
	
	/**
	 * 使用时长
	 */
					
	private Integer shiyongshizhang;
	
	/**
	 * 包间详情
	 */
					
	private String baojianxiangqing;
	
	/**
	 * 费用
	 */
					
	private Float feiyong;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：房间号
	 */
	public void setFangjianhao(String fangjianhao) {
		this.fangjianhao = fangjianhao;
	}
	/**
	 * 获取：房间号
	 */
	public String getFangjianhao() {
		return fangjianhao;
	}
	/**
	 * 设置：包间类型
	 */
	public void setBaojianleixing(String baojianleixing) {
		this.baojianleixing = baojianleixing;
	}
	/**
	 * 获取：包间类型
	 */
	public String getBaojianleixing() {
		return baojianleixing;
	}
	/**
	 * 设置：图片
	 */
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
	/**
	 * 设置：容纳人数
	 */
	public void setRongnarenshu(Integer rongnarenshu) {
		this.rongnarenshu = rongnarenshu;
	}
	/**
	 * 获取：容纳人数
	 */
	public Integer getRongnarenshu() {
		return rongnarenshu;
	}
	/**
	 * 设置：包间状态
	 */
	public void setBaojianzhuangtai(String baojianzhuangtai) {
		this.baojianzhuangtai = baojianzhuangtai;
	}
	/**
	 * 获取：包间状态
	 */
	public String getBaojianzhuangtai() {
		return baojianzhuangtai;
	}
	/**
	 * 设置：使用时长
	 */
	public void setShiyongshizhang(Integer shiyongshizhang) {
		this.shiyongshizhang = shiyongshizhang;
	}
	/**
	 * 获取：使用时长
	 */
	public Integer getShiyongshizhang() {
		return shiyongshizhang;
	}
	/**
	 * 设置：包间详情
	 */
	public void setBaojianxiangqing(String baojianxiangqing) {
		this.baojianxiangqing = baojianxiangqing;
	}
	/**
	 * 获取：包间详情
	 */
	public String getBaojianxiangqing() {
		return baojianxiangqing;
	}
	/**
	 * 设置：费用
	 */
	public void setFeiyong(Float feiyong) {
		this.feiyong = feiyong;
	}
	/**
	 * 获取：费用
	 */
	public Float getFeiyong() {
		return feiyong;
	}

}
