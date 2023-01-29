package com.demo.boardproject.config;

import com.demo.boardproject.dto.security.BoardPrincipal;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.domain.AuditorAware;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.Optional;

@EnableJpaAuditing // Auditing 기능 활성화
@Configuration
public class JpaConfig {

    @Bean
    public AuditorAware<String> auditorAware() { // 유저 정보를 JPA 에서 인식하도록 AuditorAware 를 구현
        return () -> Optional.ofNullable(SecurityContextHolder.getContext())
                .map(SecurityContext::getAuthentication)
                .filter(Authentication::isAuthenticated)
                .map(Authentication::getPrincipal)
                .map(BoardPrincipal.class::cast)
                .map(BoardPrincipal::getUsername); // (@CreatedBy, @ModifiedBy 어노테이션으로 로그인한 사용자의 이름을 등록자와 수정자로 지정)
    }
}
