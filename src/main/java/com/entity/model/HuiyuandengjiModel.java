package com.entity.model;

import com.entity.HuiyuandengjiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 会员等级
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-02-24 16:08:21
 */
public class HuiyuandengjiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 会员折扣
	 */
	
	private String huiyuanzhekou;
				
	
	/**
	 * 设置：会员折扣
	 */
	 
	public void setHuiyuanzhekou(String huiyuanzhekou) {
		this.huiyuanzhekou = huiyuanzhekou;
	}
	
	/**
	 * 获取：会员折扣
	 */
	public String getHuiyuanzhekou() {
		return huiyuanzhekou;
	}
			
}
