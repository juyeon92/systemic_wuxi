package com.systemic.controller;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

/**
 * Created by 9111665 on 2020-11-17.
 * Description:
 */
@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.systemic.config.RootConfig.class, com.systemic.config.ServletConfig.class})
@WebAppConfiguration
public class TestController {
    @Setter(onMethod = @__({@Autowired}))
    private WebApplicationContext ctx;

    private MockMvc mockMvc;

    @Before
    public void setup() {
        this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
    }

    @Test
    public void testHolidayList() throws Exception {
        log.info(
                mockMvc.perform(MockMvcRequestBuilders.get("/")).andReturn().getModelAndView().getModelMap());


    }

}
