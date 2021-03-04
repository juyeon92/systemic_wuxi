package com.systemic.vo;

import lombok.Data;

import java.util.Date;

/**
 * Created by 9111665 on 2020-11-17.
 * Description:
 */
@Data
public class AuthVO {
    private String id;
    private String userid;
    private String auth;
    private Date regdate;
}
