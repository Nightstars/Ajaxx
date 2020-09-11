package com.christ.ajax_json.servlet;

import com.christ.ajax_json.entity.User;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/jsonDemoServlet")
public class JsonDemoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        //out.println("json test");
        ObjectMapper mapper=new ObjectMapper();
        //String[] arr={"Json","Jack","Java"};
       // out.println(mapper.writeValueAsString(arr));
        //User user=new User(1,"Tom",20);
        List<User> users=new ArrayList<User>();
        users.add(new User(1,"Tom",20));
        users.add(new User(2,"Jack",20));
        users.add(new User(3,"John",20));
        out.println(mapper.writeValueAsString(users));
        out.close();
    }
}
