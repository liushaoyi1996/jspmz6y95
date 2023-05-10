package com.dao;

import com.entity.BaojianyudingEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.BaojianyudingVO;
import com.entity.view.BaojianyudingView;


/**
 * 包间预订
 * 
 * @author 
 * @email 
 * @date 2023-02-24 16:08:20
 */
public interface BaojianyudingDao extends BaseMapper<BaojianyudingEntity> {
	
	List<BaojianyudingVO> selectListVO(@Param("ew") Wrapper<BaojianyudingEntity> wrapper);
	
	BaojianyudingVO selectVO(@Param("ew") Wrapper<BaojianyudingEntity> wrapper);
	
	List<BaojianyudingView> selectListView(@Param("ew") Wrapper<BaojianyudingEntity> wrapper);

	List<BaojianyudingView> selectListView(Pagination page,@Param("ew") Wrapper<BaojianyudingEntity> wrapper);
	
	BaojianyudingView selectView(@Param("ew") Wrapper<BaojianyudingEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<BaojianyudingEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<BaojianyudingEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<BaojianyudingEntity> wrapper);



}
