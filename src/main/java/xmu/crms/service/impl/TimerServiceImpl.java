package xmu.crms.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import xmu.crms.dao.TimerDAO;
import xmu.crms.service.TimerService;

import java.util.Date;
import java.util.HashMap;

@Service
public class TimerServiceImpl implements TimerService {
    @Autowired
    private TimerDAO timerDAO;

    @Override
    public void insertEvent(Date time, Bean beanName, HashMap<Integer, String> paramMap) {
        timerDAO.insertEvent(time,beanName,paramMap);
    }

    @Override
    public void scheduled() {

    }
}
