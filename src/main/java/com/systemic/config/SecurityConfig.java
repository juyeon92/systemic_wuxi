package com.systemic.config;

import com.systemic.security.CustomLoginSuccessHandler;
import com.systemic.security.CustomUserDetailService;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.csrf.CookieCsrfTokenRepository;
import org.springframework.security.web.csrf.CsrfFilter;
import org.springframework.web.filter.CharacterEncodingFilter;

/**
 * Created by 9111665 on 2020-11-17.
 * Description:
 */
@Configuration
@EnableWebSecurity
@Log4j
@ComponentScan("com.systemic.security")
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Setter(onMethod = @__({@Autowired}))
    private CustomUserDetailService customUserDetailService;

    /* * 스프링 시큐리티 룰을 무시하게 하는 Url 규칙(여기 등록하면 규칙 적용하지 않음) */

    /* * 스프링 시큐리티 규칙 */
    @Override
    protected void configure(HttpSecurity http) throws Exception
    {
        CharacterEncodingFilter filter = new CharacterEncodingFilter();
        filter.setEncoding("UTF-8");
        filter.setForceEncoding(true);

        http.addFilterBefore(filter, CsrfFilter.class);

        http.authorizeRequests()
                .antMatchers("/admin/**").authenticated()
                .antMatchers("/admin/**").hasRole("ADMIN")
                //.antMatchers("/admin/login").permitAll()
                .antMatchers("/**").permitAll()
                .and()
                .formLogin()
                .loginPage("/admin/login")
                .loginProcessingUrl("/login")
                .defaultSuccessUrl("/admin/main")
                .successHandler(successHandler())
                .failureUrl("/admin/login")
                .and()
                .logout()
                .permitAll()
                .logoutUrl("/logout")
                .logoutSuccessUrl("/admin/login")
                .and()
                .exceptionHandling()
                .accessDeniedPage("/exception/error_access");

        http.sessionManagement().invalidSessionUrl("/admin/login")
                .and()
                .sessionManagement().maximumSessions(1)
                .expiredUrl("/admin/login");
    }

    @Bean
    public AuthenticationSuccessHandler successHandler() {
        return new CustomLoginSuccessHandler("/admin/main");//default로 이동할 url
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .withUser("admin").password("1").roles("ADMIN");
        //auth.userDetailsService(customUserDetailService).passwordEncoder(passwordEncoder());
    }
}
