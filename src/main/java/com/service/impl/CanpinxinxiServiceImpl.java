package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.CanpinxinxiDao;
import com.entity.CanpinxinxiEntity;
import com.service.CanpinxinxiService;
import com.entity.vo.CanpinxinxiVO;
import com.entity.view.CanpinxinxiView;

@Service("canpinxinxiService")
public class CanpinxinxiServiceImpl extends ServiceImpl<CanpinxinxiDao, CanpinxinxiEntity> implements CanpinxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CanpinxinxiEntity> page = this.selectPage(
                new Query<CanpinxinxiEntity>(params).getPage(),
                new EntityWrapper<CanpinxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<CanpinxinxiEntity> wrapper) {
		  Page<CanpinxinxiView> page =new Query<CanpinxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<CanpinxinxiVO> selectListVO(Wrapper<CanpinxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public CanpinxinxiVO selectVO(Wrapper<CanpinxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<CanpinxinxiView> selectListView(Wrapper<CanpinxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public CanpinxinxiView selectView(Wrapper<CanpinxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
