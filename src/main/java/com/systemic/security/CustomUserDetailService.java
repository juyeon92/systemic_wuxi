package com.systemic.security;

import com.systemic.mapper.AdminMapper;
import com.systemic.vo.AdminVO;
import com.systemic.vo.CustomUserDetails;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * Created by 9111665 on 2020-11-17.
 * Description:
 */
@Log4j
@Service
public class CustomUserDetailService implements UserDetailsService {

    @Setter(onMethod = @__({@Autowired}))
    AdminMapper mapper;

    @Override
    public UserDetails loadUserByUsername(String userid) throws UsernameNotFoundException {
        AdminVO user = mapper.getUser(userid);

        if(user == null){
            throw new UsernameNotFoundException(userid);
        }

        return user == null ? new CustomUserDetails(user) : (UserDetails) user;
    }
}