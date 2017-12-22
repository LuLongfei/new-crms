package xmu.crms.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Repository;
import xmu.crms.mapper.TimerMapper;

import java.util.Collection;
import java.util.Date;
import java.util.HashMap;

@Repository
public class TimerDAO {
//    @Autowired
//    private TimerMapper timerMapper;

    public void insertEvent(Date time, Bean beanName, HashMap<Integer, String> paramMap){
        String name = beanName.toString();
        Collection temp = paramMap.values();
        String str = "";
        for(Object o: temp){
            str += o+",";
        }
//        timerMapper.insertEvent(time,name,str);
    }
}
