package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.BaojianxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.BaojianxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.BaojianxinxiView;


/**
 * 包间信息
 *
 * @author 
 * @email 
 * @date 2023-02-24 16:08:20
 */
public interface BaojianxinxiService extends IService<BaojianxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<BaojianxinxiVO> selectListVO(Wrapper<BaojianxinxiEntity> wrapper);
   	
   	BaojianxinxiVO selectVO(@Param("ew") Wrapper<BaojianxinxiEntity> wrapper);
   	
   	List<BaojianxinxiView> selectListView(Wrapper<BaojianxinxiEntity> wrapper);
   	
   	BaojianxinxiView selectView(@Param("ew") Wrapper<BaojianxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<BaojianxinxiEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<BaojianxinxiEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<BaojianxinxiEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<BaojianxinxiEntity> wrapper);



}

