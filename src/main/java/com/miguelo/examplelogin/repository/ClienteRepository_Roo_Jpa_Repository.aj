// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.miguelo.examplelogin.repository;

import com.miguelo.examplelogin.repository.ClienteRepository;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ClienteRepository_Roo_Jpa_Repository {
    
    declare @type: ClienteRepository: @Transactional(readOnly = true);
    
}