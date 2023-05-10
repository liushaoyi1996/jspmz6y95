package com.entity.model;

import com.entity.DiancandingdanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 点餐订单
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-02-24 16:08:20
 */
public class DiancandingdanModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 餐品名称
	 */
	
	private String canpinmingcheng;
		
	/**
	 * 餐品分类
	 */
	
	private String canpinfenlei;
		
	/**
	 * 价格
	 */
	
	private Float jiage;
		
	/**
	 * 数量
	 */
	
	private Integer shuliang;
		
	/**
	 * 会员折扣
	 */
	
	private Float huiyuanzhekou;
		
	/**
	 * 折扣价格
	 */
	
	private Float zhekoujiage;
		
	/**
	 * 用户账号
	 */
	
	private String yonghuzhanghao;
		
	/**
	 * 用户姓名
	 */
	
	private String yonghuxingming;
		
	/**
	 * 用户手机
	 */
	
	private String yonghushouji;
		
	/**
	 * 会员等级
	 */
	
	private String huiyuandengji;
		
	/**
	 * 包间号
	 */
	
	private String baojianhao;
		
	/**
	 * 订餐备注
	 */
	
	private String dingcanbeizhu;
		
	/**
	 * 下单时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date xiadanshijian;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
		
	/**
	 * 是否支付
	 */
	
	private String ispay;
				
	
	/**
	 * 设置：餐品名称
	 */
	 
	public void setCanpinmingcheng(String canpinmingcheng) {
		this.canpinmingcheng = canpinmingcheng;
	}
	
	/**
	 * 获取：餐品名称
	 */
	public String getCanpinmingcheng() {
		return canpinmingcheng;
	}
				
	
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
	 * 设置：数量
	 */
	 
	public void setShuliang(Integer shuliang) {
		this.shuliang = shuliang;
	}
	
	/**
	 * 获取：数量
	 */
	public Integer getShuliang() {
		return shuliang;
	}
				
	
	/**
	 * 设置：会员折扣
	 */
	 
	public void setHuiyuanzhekou(Float huiyuanzhekou) {
		this.huiyuanzhekou = huiyuanzhekou;
	}
	
	/**
	 * 获取：会员折扣
	 */
	public Float getHuiyuanzhekou() {
		return huiyuanzhekou;
	}
				
	
	/**
	 * 设置：折扣价格
	 */
	 
	public void setZhekoujiage(Float zhekoujiage) {
		this.zhekoujiage = zhekoujiage;
	}
	
	/**
	 * 获取：折扣价格
	 */
	public Float getZhekoujiage() {
		return zhekoujiage;
	}
				
	
	/**
	 * 设置：用户账号
	 */
	 
	public void setYonghuzhanghao(String yonghuzhanghao) {
		this.yonghuzhanghao = yonghuzhanghao;
	}
	
	/**
	 * 获取：用户账号
	 */
	public String getYonghuzhanghao() {
		return yonghuzhanghao;
	}
				
	
	/**
	 * 设置：用户姓名
	 */
	 
	public void setYonghuxingming(String yonghuxingming) {
		this.yonghuxingming = yonghuxingming;
	}
	
	/**
	 * 获取：用户姓名
	 */
	public String getYonghuxingming() {
		return yonghuxingming;
	}
				
	
	/**
	 * 设置：用户手机
	 */
	 
	public void setYonghushouji(String yonghushouji) {
		this.yonghushouji = yonghushouji;
	}
	
	/**
	 * 获取：用户手机
	 */
	public String getYonghushouji() {
		return yonghushouji;
	}
				
	
	/**
	 * 设置：会员等级
	 */
	 
	public void setHuiyuandengji(String huiyuandengji) {
		this.huiyuandengji = huiyuandengji;
	}
	
	/**
	 * 获取：会员等级
	 */
	public String getHuiyuandengji() {
		return huiyuandengji;
	}
				
	
	/**
	 * 设置：包间号
	 */
	 
	public void setBaojianhao(String baojianhao) {
		this.baojianhao = baojianhao;
	}
	
	/**
	 * 获取：包间号
	 */
	public String getBaojianhao() {
		return baojianhao;
	}
				
	
	/**
	 * 设置：订餐备注
	 */
	 
	public void setDingcanbeizhu(String dingcanbeizhu) {
		this.dingcanbeizhu = dingcanbeizhu;
	}
	
	/**
	 * 获取：订餐备注
	 */
	public String getDingcanbeizhu() {
		return dingcanbeizhu;
	}
				
	
	/**
	 * 设置：下单时间
	 */
	 
	public void setXiadanshijian(Date xiadanshijian) {
		this.xiadanshijian = xiadanshijian;
	}
	
	/**
	 * 获取：下单时间
	 */
	public Date getXiadanshijian() {
		return xiadanshijian;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
				
	
	/**
	 * 设置：是否支付
	 */
	 
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	
	/**
	 * 获取：是否支付
	 */
	public String getIspay() {
		return ispay;
	}
			
}
