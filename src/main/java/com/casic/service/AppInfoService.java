package com.casic.service;

import com.casic.model.Appinfo;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface AppInfoService {
    public PageInfo<Appinfo> queryByDevUserId(Long id, PageInfo pageInfo);
}
