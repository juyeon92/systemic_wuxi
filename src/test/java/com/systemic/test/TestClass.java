package com.systemic.test;

import com.systemic.util.AESHelper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by 9111665 on 2020-11-18.
 * Description:
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.systemic.config.RootConfig.class,com.systemic.config.SecurityConfig.class})
@Log4j
public class TestClass {

    @Test
    public void test() throws Exception {
        AESHelper.decrypt("aTH+mK8yyIuV/mBcd2S/NQ==");
        log.info("================================ "+AESHelper.decrypt("2u/ogCdCexD+nthrStIOCGbsnW32xcDPY4OYYmwfcIE="));
        //skhk/admin/mng/contents_player
    }
}
