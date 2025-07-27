package com.amzApp.repository;

import com.amzApp.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
<<<<<<< Updated upstream
<<<<<<< Updated upstream
<<<<<<< Updated upstream
public interface UserRepository extends JpaRepository<User, String> {}
=======
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
public interface UserRepository extends JpaRepository<User, String> {
	Optional<User> findByEmail(String email);

}
>>>>>>> Stashed changes
