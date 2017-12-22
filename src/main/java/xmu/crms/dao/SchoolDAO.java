package xmu.crms.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import xmu.crms.entity.School;
import xmu.crms.mapper.SchoolMapper;

import javax.validation.constraints.Null;
import java.math.BigInteger;
import java.util.List;

/**
 * @author 3-4
 */

@Repository
public class SchoolDAO {

    @Autowired
    private SchoolMapper schoolMapper;

    public List<String> listProvince(){
        return null;
    }

    public List<String> listCity(String province){
        return null;
    }

    public School getSchoolBySchoolId(BigInteger SchoolId){
        School school ;
        school = schoolMapper.getSchoolBySchoolId(SchoolId);
        return school;
    }
}
