package com.example.rentcar.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.rentcar.dao.MemberDAO;
import com.example.rentcar.model.Member;

import jakarta.servlet.http.HttpSession;

@Controller
public class AuthController {

    @Autowired
    private MemberDAO memberDAO;

    @RequestMapping("/login")
    @ResponseBody
    public String login(@RequestParam("account") String account, @RequestParam("password") String password,
            HttpSession session, Model model) {

        Member member = memberDAO.findByAccount(account);

        if (member == null) {

            return "沒有這個帳號!";

        }

        if (member.getPassword().equals(password)) {
            session.setAttribute("user", member);
            return "登入成功";
        } else {

            return "密碼輸入錯誤!";
        }

    }

    @RequestMapping("/sign")
    @ResponseBody
    public String sign(@RequestParam("signAccount") String account, @RequestParam("signPhone") String phone,
            @RequestParam("signEmail") String email, @RequestParam("signPassword") String password,
            @RequestParam("signPassword2") String password2, Model model) {

        System.out.println(account);
        System.out.println(phone);
        System.out.println(email);
        System.out.println(password);
        System.out.println(password2);
        Member member = new Member(account, password, "", email, phone, "", "", "", "user");

        memberDAO.insert(member);

        System.out.println("註冊成功");

        return "密碼輸入錯誤!";

    }

    @RequestMapping("/infSave")
    @ResponseBody
    public String infSave(@RequestParam("name") String name, @RequestParam("gender") String gender,
            @RequestParam("birthday") LocalDate birthday, HttpSession session, Model model) {

        // Member member =(Member)session.getAttribute("user");
        Member member = memberDAO.findByAccount("a123");

        member.setName(name);
        member.setGender(gender);
        member.setBirthday(birthday);

        memberDAO.update(member);

        return "修改成功";
    }

    @RequestMapping("/conSave")
    @ResponseBody
    public String conSave(@RequestParam("phone") String phone, @RequestParam("email") String email,
            @RequestParam("address") String address, HttpSession session, Model model) {

        // Member member =(Member)session.getAttribute("user");
        Member member = memberDAO.findByAccount("a123");

        member.setPhone(phone);
        member.setAddress(address);
        member.setEmail(email);

        memberDAO.update(member);

        return "修改成功";
    }

    @RequestMapping("/secSave")
    @ResponseBody
    public String secSave(@RequestParam("editOldPassword") String oldPassword, @RequestParam("editNewPassword") String newPassword,
            @RequestParam("editNewPassword2") String newPassword2, HttpSession session, Model model) {

        // Member member =(Member)session.getAttribute("user");
        Member member = memberDAO.findByAccount("a123");
                System.out.println(oldPassword);
                System.out.println(member.getPassword());
                if (!oldPassword.equals(member.getPassword())) {

                    return "舊密碼輸入錯誤";
                }
                else  {
                    if(newPassword.equals(newPassword2)){
                        member.setPassword(newPassword);
                        memberDAO.update(member);

                    return "修改成功";}
                    else{
                        return "新密碼不一樣";
                    }
                }
                

        
    }

    

}
