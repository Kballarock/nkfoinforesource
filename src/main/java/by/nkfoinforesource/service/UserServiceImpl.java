package by.nkfoinforesource.service;

import by.nkfoinforesource.dao.RoleDao;
import by.nkfoinforesource.dao.UserDao;
import by.nkfoinforesource.model.Role;
import by.nkfoinforesource.model.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.Set;

@Service
public class UserServiceImpl implements UserService {

    @Resource(name = "userDao")
    private UserDao userDao;

    @Resource(name = "roleDao")
    private RoleDao roleDao;

    @Resource(name = "passwordEncoder")
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        user.setUserPassword(bCryptPasswordEncoder.encode(user.getUserPassword()));
        Set<Role> roles = new HashSet<>();
        roles.add(roleDao.getOne(1L));
        user.setRoles(roles);
        userDao.save(user);
    }

    @Override
    public User findByUsername(String userName) {
        return userDao.findByUserName(userName);
    }
}
