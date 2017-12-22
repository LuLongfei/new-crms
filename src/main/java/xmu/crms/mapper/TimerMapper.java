package xmu.crms.mapper;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.HashMap;

@Component
public interface TimerMapper {

    public void insertEvent(Date time, String beanName, String paramMap);

    public void scheduled();
}
