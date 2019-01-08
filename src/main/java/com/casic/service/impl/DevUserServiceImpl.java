package com.casic.service.impl;

import com.casic.mapper.DevUserMapper;
import com.casic.model.DevUser;
import com.casic.service.DevUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DevUserServiceImpl implements DevUserService {
   @Autowired
    DevUserMapper devUserMapper;
    @Override
//    查找数据库中是否存在该开发者用户
    public DevUser findDevUser(DevUser devUser) {
        return devUserMapper.findDevUser(devUser);
    }
}
