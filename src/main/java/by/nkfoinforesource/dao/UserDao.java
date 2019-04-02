package by.nkfoinforesource.dao;

import by.nkfoinforesource.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<User, Long> {

    User findByUserName(String userName);
}
