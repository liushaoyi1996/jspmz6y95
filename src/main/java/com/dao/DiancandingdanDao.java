package com.dao;

import com.entity.DiancandingdanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiancandingdanVO;
import com.entity.view.DiancandingdanView;


/**
 * 点餐订单
 * 
 * @author 
 * @email 
 * @date 2023-02-24 16:08:20
 */
public interface DiancandingdanDao extends BaseMapper<DiancandingdanEntity> {
	
	List<DiancandingdanVO> selectListVO(@Param("ew") Wrapper<DiancandingdanEntity> wrapper);
	
	DiancandingdanVO selectVO(@Param("ew") Wrapper<DiancandingdanEntity> wrapper);
	
	List<DiancandingdanView> selectListView(@Param("ew") Wrapper<DiancandingdanEntity> wrapper);

	List<DiancandingdanView> selectListView(Pagination page,@Param("ew") Wrapper<DiancandingdanEntity> wrapper);
	
	DiancandingdanView selectView(@Param("ew") Wrapper<DiancandingdanEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<DiancandingdanEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<DiancandingdanEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<DiancandingdanEntity> wrapper);



}
