package xmu.crms.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xmu.crms.dao.SchoolDAO;
import xmu.crms.entity.School;
import xmu.crms.service.SchoolService;

import java.math.BigInteger;
import java.util.List;

/**
 * @author 3-4
 */
@Service
public class SchoolServiceImpl implements SchoolService {
    @Autowired
    private SchoolDAO schoolDAO;

    @Override
    public List<School> listSchoolByCity(String city) {
        return null;
    }

    @Override
    public Boolean insertSchool(School school) {
        return null;
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
    public School getSchoolBySchoolId(BigInteger SchoolId) {
        School school;
        school = schoolDAO.getSchoolBySchoolId(SchoolId);
        return school;
    }


}
