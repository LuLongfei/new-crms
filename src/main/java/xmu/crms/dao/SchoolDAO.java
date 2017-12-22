package xmu.crms.dao;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xmu.crms.entity.School;
import xmu.crms.mapper.SchoolMapper;

@Repository
public class SchoolDAO {
	@Autowired
	private SchoolMapper schoolMapper;
	
	public List<School> getSchoolListByCity(String city) {
		List<School> schoolList = new ArrayList<School>();
		schoolList = schoolMapper.getSchoolListByCity(city);
		return schoolList;
	}
	
	public void insertSchool(School school) {
		try {
			schoolMapper.insertSchool(school);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 学校查重
	 * @param school
	 * @return
	 */
	public int rechecking(School school) {
		return schoolMapper.rechecking(school);
	}

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
