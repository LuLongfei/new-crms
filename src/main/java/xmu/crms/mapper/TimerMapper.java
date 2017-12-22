package xmu.crms.mapper;


import org.springframework.stereotype.Component;

import java.util.Date;


@Component
public interface TimerMapper {

    public void insertEvent(Date time, String beanName, String paramMap);

    public void scheduled();
}
