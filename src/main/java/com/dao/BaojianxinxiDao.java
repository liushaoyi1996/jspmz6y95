package com.dao;

import com.entity.BaojianxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.BaojianxinxiVO;
import com.entity.view.BaojianxinxiView;


/**
 * 包间信息
 * 
 * @author 
 * @email 
 * @date 2023-02-24 16:08:20
 */
public interface BaojianxinxiDao extends BaseMapper<BaojianxinxiEntity> {
	
	List<BaojianxinxiVO> selectListVO(@Param("ew") Wrapper<BaojianxinxiEntity> wrapper);
	
	BaojianxinxiVO selectVO(@Param("ew") Wrapper<BaojianxinxiEntity> wrapper);
	
	List<BaojianxinxiView> selectListView(@Param("ew") Wrapper<BaojianxinxiEntity> wrapper);

	List<BaojianxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<BaojianxinxiEntity> wrapper);
	
	BaojianxinxiView selectView(@Param("ew") Wrapper<BaojianxinxiEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<BaojianxinxiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<BaojianxinxiEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<BaojianxinxiEntity> wrapper);



}
