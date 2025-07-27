package com.amzApp.repository;

import com.amzApp.dto.UserDTO;
import com.amzApp.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<UserDTO, String> {
	Optional<User> findByEmail(String email);

}