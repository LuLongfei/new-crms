package xmu.crms.service.impl;

import java.math.BigInteger;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xmu.crms.dao.SchoolDAO;
import xmu.crms.entity.School;
import xmu.crms.service.SchoolService;

/**
 * @author 3-4
 */
@Service
public class SchoolServiceImpl implements SchoolService {

    @Autowired
    private SchoolDAO schoolDAO;

    @Override
    public List<School> listSchoolByCity(String city) {
        return schoolDAO.getSchoolListByCity(city);
    }

    @Override
    public Boolean insertSchool(School school) {

        if(schoolDAO.rechecking(school) > 0) {
            // 学校已存在
            return false;
        } else {
            schoolDAO.insertSchool(school);
            return true;
        }
    }

    @Override
    public List<String> listProvince() {
        return null;
    }

    @Override
    public List<String> listCity(String province) {
        return null;
    }

    @Override
    public School getSchoolBySchoolId(BigInteger schoolId) {
        School school;
        school = schoolDAO.getSchoolBySchoolId(schoolId);
        return school;
    }
}
