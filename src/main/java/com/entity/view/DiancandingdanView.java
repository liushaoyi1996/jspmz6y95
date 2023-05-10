package com.entity.view;

import com.entity.DiancandingdanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 点餐订单
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-02-24 16:08:20
 */
@TableName("diancandingdan")
public class DiancandingdanView  extends DiancandingdanEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiancandingdanView(){
	}
 
 	public DiancandingdanView(DiancandingdanEntity diancandingdanEntity){
 	try {
			BeanUtils.copyProperties(this, diancandingdanEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
