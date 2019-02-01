// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.miguelo.examplelogin.config;

import com.miguelo.examplelogin.ExampleloginApplication;
import com.miguelo.examplelogin.config.SpringDataJpaDetachableRepositoryConfiguration;
import io.springlets.data.jpa.repository.support.DetachableJpaRepositoryImpl;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

privileged aspect SpringDataJpaDetachableRepositoryConfiguration_Roo_Jpa_Repository_Configuration {
    
    declare @type: SpringDataJpaDetachableRepositoryConfiguration: @Configuration;
    
    declare @type: SpringDataJpaDetachableRepositoryConfiguration: @EnableJpaRepositories(repositoryBaseClass = DetachableJpaRepositoryImpl.class, basePackageClasses = ExampleloginApplication.class);
    
    declare @type: SpringDataJpaDetachableRepositoryConfiguration: @EntityScan(basePackageClasses = ExampleloginApplication.class);
    
}
