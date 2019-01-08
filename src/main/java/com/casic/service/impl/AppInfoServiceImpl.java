package com.casic.service.impl;

import com.casic.mapper.AppinfoMapper;
import com.casic.model.Appinfo;
import com.casic.service.AppInfoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.casic.model.Appinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AppInfoServiceImpl implements AppInfoService {
    @Autowired
    AppinfoMapper appinfoMapper;
    @Override
    public PageInfo<Appinfo> queryByDevUserId(Long id, PageInfo pageInfo) {
        PageHelper.startPage(pageInfo.getPageNum(),pageInfo.getSize());
        List<Appinfo> list=appinfoMapper.queryByDevUserId(id);
        PageInfo<Appinfo>page =new PageInfo<Appinfo>(list);
        return page;
    }
}
