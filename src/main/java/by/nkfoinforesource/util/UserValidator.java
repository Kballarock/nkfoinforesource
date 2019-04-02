package by.nkfoinforesource.util;

import by.nkfoinforesource.model.User;
import by.nkfoinforesource.service.UserService;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import javax.annotation.Resource;

@Component
public class UserValidator implements Validator {

    @Resource(name = "userServiceImpl")
    private UserService userService;

    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        User user = (User) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "Required");
        if (user.getUserName().length() < 8 || user.getUserName().length() > 32) {
            errors.rejectValue("userName", "Size.userForm.username");
        }

        if (userService.findByUsername(user.getUserName()) != null) {
            errors.rejectValue("userName", "Duplicate.userForm.username");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userPassword", "Required");
        if (user.getUserPassword().length() < 8 || user.getUserPassword().length() > 32) {
            errors.rejectValue("userPassword", "Size.userForm.password");
        }

        if (!user.getUserConfirmPassword().equals(user.getUserPassword())) {
            errors.rejectValue("userConfirmPassword", "Different.userForm.password");
        }
    }
}
