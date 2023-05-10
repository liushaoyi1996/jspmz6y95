package com.entity.view;

import com.entity.CanpinxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 餐品信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-02-24 16:08:20
 */
@TableName("canpinxinxi")
public class CanpinxinxiView  extends CanpinxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public CanpinxinxiView(){
	}
 
 	public CanpinxinxiView(CanpinxinxiEntity canpinxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, canpinxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
