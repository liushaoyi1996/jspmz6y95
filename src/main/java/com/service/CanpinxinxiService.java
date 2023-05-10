package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.CanpinxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.CanpinxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.CanpinxinxiView;


/**
 * 餐品信息
 *
 * @author 
 * @email 
 * @date 2023-02-24 16:08:20
 */
public interface CanpinxinxiService extends IService<CanpinxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<CanpinxinxiVO> selectListVO(Wrapper<CanpinxinxiEntity> wrapper);
   	
   	CanpinxinxiVO selectVO(@Param("ew") Wrapper<CanpinxinxiEntity> wrapper);
   	
   	List<CanpinxinxiView> selectListView(Wrapper<CanpinxinxiEntity> wrapper);
   	
   	CanpinxinxiView selectView(@Param("ew") Wrapper<CanpinxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<CanpinxinxiEntity> wrapper);
   	

}

