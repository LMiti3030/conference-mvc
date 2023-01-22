package mititelu.laura.conference.controller;

import mititelu.laura.conference.model.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @GetMapping("/user")
    public User getUser(@RequestParam(value="firstname", defaultValue = "Laura") String firstname,
                        @RequestParam(value="lastname", defaultValue = "Mititelu") String lastname,
                        @RequestParam(value="age", defaultValue = "22") int age){

        //usually call to service or model tier
        User user = new User();

        user.setFirstname(firstname);
        user.setLastname(lastname);
        user.setAge(age);

        return user;
    }

    // /user?firstname=Ana&lastname=Popescu&age=3
//    {"firstname":"Ana","lastname":"Popescu","age":3}

    // /user
//    {"firstname":"Laura","lastname":"Mititelu","age":22}

    @PostMapping("/user")
    public User postUser(User user){

        System.out.println("User firstname: "+ user.getFirstname());

        return user;
    }

}
