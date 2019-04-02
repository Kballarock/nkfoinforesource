package by.nkfoinforesource.service;

import by.nkfoinforesource.model.User;

public interface UserService {

    void save(User user);

    User findByUsername(String userName);
}
