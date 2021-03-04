package com.systemic.vo;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 9111665 on 2020-11-17.
 * Description:
 */
public class CustomUserDetails extends User {

    public CustomUserDetails(AdminVO member) {
        super(member.getUserid(), member.getUserpw(), makeGrantedAuthority(member.getAuthList()));
    }

    private static List<GrantedAuthority> makeGrantedAuthority(List<AuthVO> roles){
        List<GrantedAuthority> list = new ArrayList<>();
        for (AuthVO auth: roles) {
            list.add(new SimpleGrantedAuthority("ROLE_" + auth.getAuth()));
        }
        return list;
    }
}