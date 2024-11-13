package Util;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

import java.sql.Connection;
import java.sql.SQLException;

public class DbUtil {

    private static HikariDataSource dataSource;

    static {
        try {
            // 配置数据源
            HikariConfig config = new HikariConfig();
            config.setJdbcUrl("jdbc:mysql://localhost:3306/JavaEE_DB"); // 数据库 URL
            config.setUsername("root"); // 数据库用户名
            config.setPassword("123456"); // 数据库密码
            config.setMaximumPoolSize(10); // 最大连接数
            config.setConnectionTimeout(30000); // 连接超时
            config.setIdleTimeout(600000); // 空闲超时
            config.setMaxLifetime(1800000); // 连接最大生命周期

            dataSource = new HikariDataSource(config);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

    public static void closeDataSource() {
        if (dataSource != null) {
            dataSource.close();
        }
    }
}