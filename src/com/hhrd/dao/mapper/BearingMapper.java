package com.hhrd.dao.mapper;

import com.hhrd.model.Bearing;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by chengtong on 2017/5/8.
 */
@Repository
public interface BearingMapper {
    public List<Bearing> selectByType(@Param("bear_type") String bear_type);
}
