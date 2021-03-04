package com.systemic.config;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;

/**
 * Created by 9111665 on 2020-11-17.
 * Description:
 */
@Configuration
@EnableAspectJAutoProxy
@EnableScheduling
@EnableTransactionManagement
@PropertySource( value = {"classpath:properties/config.properties" , "classpath:properties/common.properties"})
@MapperScan(basePackages = {"com.systemic.mapper"})
public class RootConfig {
    @Value("${db.driverName}")
    private String driverName;

    @Value("${db.jdbcUrl}")
    private String jdbcUrl;

    @Value("${db.username}")
    private String username;

    @Value("${db.password}")
    private String password;


    @Bean
    public DataSource dataSource() {
        HikariConfig hikariConfig = new HikariConfig();
        hikariConfig.setDriverClassName(driverName);
        hikariConfig.setJdbcUrl(jdbcUrl);

        hikariConfig.setUsername(username);
        hikariConfig.setPassword(password);

        hikariConfig.setMinimumIdle(5);
        // test Query
        hikariConfig.setConnectionTestQuery("SELECT sysdate FROM dual");
        hikariConfig.setPoolName("springHikariCP");

        hikariConfig.addDataSourceProperty("dataSource.cachePrepStmts", "true");
        hikariConfig.addDataSourceProperty("dataSource.prepStmtCacheSize", "200");
        hikariConfig.addDataSourceProperty("dataSource.prepStmtCacheSqlLimit", "2048");
        hikariConfig.addDataSourceProperty("dataSource.useServerPrepStmts", "true");

        HikariDataSource dataSource = new HikariDataSource(hikariConfig);

        return dataSource;
    }

    @Bean
    public SqlSessionFactory sqlSessionFactory() throws Exception {
        SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
        sqlSessionFactory.setDataSource(dataSource());
        return sqlSessionFactory.getObject();
    }

    @Bean
    public DataSourceTransactionManager txManager() {
        return new DataSourceTransactionManager(dataSource());
    }
}
