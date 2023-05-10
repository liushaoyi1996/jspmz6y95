package com.dao;

import com.entity.CanpinxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.CanpinxinxiVO;
import com.entity.view.CanpinxinxiView;


/**
 * 餐品信息
 * 
 * @author 
 * @email 
 * @date 2023-02-24 16:08:20
 */
public interface CanpinxinxiDao extends BaseMapper<CanpinxinxiEntity> {
	
	List<CanpinxinxiVO> selectListVO(@Param("ew") Wrapper<CanpinxinxiEntity> wrapper);
	
	CanpinxinxiVO selectVO(@Param("ew") Wrapper<CanpinxinxiEntity> wrapper);
	
	List<CanpinxinxiView> selectListView(@Param("ew") Wrapper<CanpinxinxiEntity> wrapper);

	List<CanpinxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<CanpinxinxiEntity> wrapper);
	
	CanpinxinxiView selectView(@Param("ew") Wrapper<CanpinxinxiEntity> wrapper);
	

}
