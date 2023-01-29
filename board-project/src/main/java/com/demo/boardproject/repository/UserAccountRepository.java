package com.demo.boardproject.repository;

import com.demo.boardproject.domain.UserAccount;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserAccountRepository extends JpaRepository<UserAccount, String> {
    // 구현체가 없는데 어떻게 동작? Spring Data JPA가 인터페이스에 대해서 프록시 구현체를 만든 뒤 DI 받기 때문에 사용할 수 있음
    // @Repository 생략 가능
    // 공통 인터페이스 : save(), delete("ID"), findById("ID"), getOne("ID"), findAll(), count() ...
}
