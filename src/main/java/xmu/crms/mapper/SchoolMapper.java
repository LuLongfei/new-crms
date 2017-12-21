package xmu.crms.mapper;

import org.springframework.stereotype.Component;
import xmu.crms.entity.School;

import java.math.BigInteger;
import java.util.List;

/**
 * @author Su Xiaorui
 * @date 2017-12-21
 */
@Component
public interface SchoolMapper {

    /**
     * 显示省份
     * @return
     */
    List<String> listProvince();

    /**
     * 通过省份查找城市
     * @param province
     * @return
     */
    List<String> listCity(String province);

    /**
     * 通过学校的id获取学校信息
     * @param SchoolId
     * @return
     */
    School getSchoolBySchoolId(BigInteger SchoolId);
}
