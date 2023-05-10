package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiancandingdanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiancandingdanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiancandingdanView;


/**
 * 点餐订单
 *
 * @author 
 * @email 
 * @date 2023-02-24 16:08:20
 */
public interface DiancandingdanService extends IService<DiancandingdanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiancandingdanVO> selectListVO(Wrapper<DiancandingdanEntity> wrapper);
   	
   	DiancandingdanVO selectVO(@Param("ew") Wrapper<DiancandingdanEntity> wrapper);
   	
   	List<DiancandingdanView> selectListView(Wrapper<DiancandingdanEntity> wrapper);
   	
   	DiancandingdanView selectView(@Param("ew") Wrapper<DiancandingdanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiancandingdanEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<DiancandingdanEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<DiancandingdanEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<DiancandingdanEntity> wrapper);



}

