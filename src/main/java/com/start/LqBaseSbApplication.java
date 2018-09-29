package com.start;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.liquibase.LiquibaseAutoConfiguration;

@SpringBootApplication
// in case we don't want to update Liquibase at server startup , uncomment below
// @EnableAutoConfiguration(exclude={LiquibaseAutoConfiguration.class})
public class LqBaseSbApplication {
	public static void main(String[] args) {
		SpringApplication.run(LqBaseSbApplication.class, args);
	}
}
































/**
 * For manual liquibase run using maven after server startup, run "mvn
 * -Dliquibase.driver=org.h2.Driver -Dliquibase.url=jdbc:h2:~/test
 * -Dliquibase.username=sa -Dliquibase.password=sa
 * -Dliquibase.changeLogFile=db\changelog\db.changelog-master.xml
 * -Dliquibase.dropFirst=true liquibase:update"
 * 
 * generate changelog from existing database "mvn
 * -Dliquibase.driver=org.h2.Driver -Dliquibase.url=jdbc:h2:~/test
 * -Dliquibase.username=sa -Dliquibase.password=sa
 * -Dliquibase.outputChangeLogFile=db-changelog-generated.xml
 * liquibase:generateChangeLog"
 *
 */