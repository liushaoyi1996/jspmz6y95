package com.entity.model;

import com.entity.BaojianxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 包间信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-02-24 16:08:20
 */
public class BaojianxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
