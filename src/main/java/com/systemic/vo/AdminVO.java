package com.systemic.vo;

import lombok.Data;

import java.util.List;

/**
 * Created by 9111665 on 2020-11-17.
 * Description:
 */
@Data
public class AdminVO {
    private String userid;
    private String userpw;
    private String username;
    private String useremail;

    private char enabled; //이거 뭐 있었는데 뭐더라

    private List<AuthVO> authList;
}
