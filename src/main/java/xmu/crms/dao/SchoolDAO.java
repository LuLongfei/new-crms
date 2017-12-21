package xmu.crms.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import xmu.crms.entity.School;
import xmu.crms.mapper.SchoolMapper;

import javax.validation.constraints.Null;
import java.math.BigInteger;
import java.util.List;

/**
 * @author Su Xiaorui
 */

@Repository
public class SchoolDAO {

    @Autowired
    private SchoolMapper schoolMapper;

    List<String> listProvince(){
        return null;
    }

    List<String> listCity(String province){
        return null;
    }

    School getSchoolBySchoolId(BigInteger SchoolId){
        School school ;
        school = schoolMapper.getSchoolBySchoolId(SchoolId);
        return school;
    }
}
