package com.djy.diary.repository;

import com.djy.diary.pojo.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Integer> {
}
