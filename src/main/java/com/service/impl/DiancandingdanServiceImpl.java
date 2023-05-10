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


import com.dao.DiancandingdanDao;
import com.entity.DiancandingdanEntity;
import com.service.DiancandingdanService;
import com.entity.vo.DiancandingdanVO;
import com.entity.view.DiancandingdanView;

@Service("diancandingdanService")
public class DiancandingdanServiceImpl extends ServiceImpl<DiancandingdanDao, DiancandingdanEntity> implements DiancandingdanService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiancandingdanEntity> page = this.selectPage(
                new Query<DiancandingdanEntity>(params).getPage(),
                new EntityWrapper<DiancandingdanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiancandingdanEntity> wrapper) {
		  Page<DiancandingdanView> page =new Query<DiancandingdanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiancandingdanVO> selectListVO(Wrapper<DiancandingdanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiancandingdanVO selectVO(Wrapper<DiancandingdanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiancandingdanView> selectListView(Wrapper<DiancandingdanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiancandingdanView selectView(Wrapper<DiancandingdanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<DiancandingdanEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<DiancandingdanEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }
    
    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<DiancandingdanEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }




}
