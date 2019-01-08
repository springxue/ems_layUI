package com.casic.mapper;

import com.casic.model.Appinfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AppinfoMapper {
    public List<Appinfo> queryByDevUserId(@Param("id")Long id);
}