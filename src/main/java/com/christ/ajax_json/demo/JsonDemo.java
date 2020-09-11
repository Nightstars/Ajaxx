package com.christ.ajax_json.demo;

import com.christ.ajax_json.entity.User;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class JsonDemo {
    public static void main(String[] args) throws IOException {
        ObjectMapper objectMapper=new ObjectMapper();
        String [] arr={"Ajax","Java","Jsp"};
        String str=objectMapper.writeValueAsString(arr);
        System.out.println("str="+str);
        String str1="[ \"Ajax\" ,\"Java\",\"Jsp\"]";
        String[] arr1=objectMapper.readValue(str,String[].class);
        System.out.println(Arrays.toString(arr1));
        User user=new User(1,"tom",20);
        str=objectMapper.writeValueAsString(user);
        System.out.println("str="+str);
        str="{ \"id\" :1, \"name\" :\"Alice\", \"age\" :22}";
        User user2=objectMapper.readValue(str,User.class);
        System.out.println(user2.toString());
        List<User> users=new ArrayList<User>();
        users.add(new User(1,"Tom",20));
        users.add(new User(2,"Jack",20));
        users.add(new User(3,"John",20));
        str=objectMapper.writeValueAsString(users);
        System.out.println("str="+str);
        str="[{ \"id\" :1, \"name\" :\"Alice\", \"age\" :22},{ \"id\" :2, \"name\" :\"Alice\", \"age\" :22},{ \"id\" :3, \"name\" :\"Alice\", \"age\" :22}]";
        List<User> user3=objectMapper.readValue(str,new TypeReference<List<User>>(){});
        System.out.println(user3);
    }
}
