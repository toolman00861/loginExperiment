package service;

import JavaBean.User;

import java.util.ArrayList;
import java.util.List;

public class userService {
    private static List<User> userList = new ArrayList<>() ;
    public boolean validateUser(String user) {
        for (User u : userList) {
            if (u.getUsername().equals(user)) {
                return true;
            }
        }
        return false;
    }
    public boolean login(String name, String pwd){
        for (User u : userList) {
            if (u.getUsername().equals(name) && u.getPassword().equals(pwd)) {
                return true;
            }
        }
        return false;
    }
    public void addUser(String username, String password, String email, String phone){
        User user = new User(username, password, email, phone);
        userList.add(user);
    }
    public List<User> getUserList(){
        return userList;
    }
    public User findUser(String username){
        for (User u : userList) {
            if (u.getUsername().equals(username)) {
                return u;
            }
        }
        return null;
    }
}
