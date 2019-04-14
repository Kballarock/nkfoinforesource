package by.nkfoinforesource.controller;


import by.nkfoinforesource.model.User;
import by.nkfoinforesource.security.SecurityService;
import by.nkfoinforesource.service.UserService;
import by.nkfoinforesource.util.UserValidator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@Controller
public class UserController {
    @Resource(name = "userServiceImpl")
    private UserService userService;

    @Resource(name = "securityServiceImpl")
    private SecurityService securityService;

    @Resource(name = "userValidator")
    private UserValidator userValidator;

    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public String welcome(Model model) {
        return "welcome";
    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String home(Model model) {
        return "home";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(@ModelAttribute("userLogin") User userLogin, Model model, String error, String logout) {
        if (error != null) {
            model.addAttribute("error", "Имя пользователя или пароль введены неверно.");
        }

        if (logout != null) {
            model.addAttribute("message", "Выход выполнен успешно.");
        }

        return "login";
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(Model model) {
        return "admin";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUserName(), userForm.getUserConfirmPassword());

        return "redirect:/home";
    }
}