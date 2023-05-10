package com.entity.model;

import com.entity.CanpinxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 餐品信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-02-24 16:08:20
 */
public class CanpinxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 餐品分类
	 */
	
	private String canpinfenlei;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 规格
	 */
	
	private String guige;
		
	/**
	 * 价格
	 */
	
	private Float jiage;
		
	/**
	 * 餐品详情
	 */
	
	private String canpinxiangqing;
				
	
	/**
	 * 设置：餐品分类
	 */
	 
	public void setCanpinfenlei(String canpinfenlei) {
		this.canpinfenlei = canpinfenlei;
	}
	
	/**
	 * 获取：餐品分类
	 */
	public String getCanpinfenlei() {
		return canpinfenlei;
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
	 * 设置：规格
	 */
	 
	public void setGuige(String guige) {
		this.guige = guige;
	}
	
	/**
	 * 获取：规格
	 */
	public String getGuige() {
		return guige;
	}
				
	
	/**
	 * 设置：价格
	 */
	 
	public void setJiage(Float jiage) {
		this.jiage = jiage;
	}
	
	/**
	 * 获取：价格
	 */
	public Float getJiage() {
		return jiage;
	}
				
	
	/**
	 * 设置：餐品详情
	 */
	 
	public void setCanpinxiangqing(String canpinxiangqing) {
		this.canpinxiangqing = canpinxiangqing;
	}
	
	/**
	 * 获取：餐品详情
	 */
	public String getCanpinxiangqing() {
		return canpinxiangqing;
	}
			
}
