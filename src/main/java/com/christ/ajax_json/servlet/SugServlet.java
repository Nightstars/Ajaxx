package com.christ.ajax_json.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/sugServlet")
public class SugServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        String name=request.getParameter("name");
        String[] arr = {
                "Anna","Brittany","Cinderella","Diana",
                "Eva","Fiona","Gunda","Hege","Inga","Johanna",
                "Kitty","Linda","Nina","Ophelia","Petunia","Amanda",
                "Raquel","Cindy","Doris","Eve","Evita","Sunniva",
                "Tove","Unni","Violet","Liza","Elizabeth","Ellen",
                "Wenche","Vicky"
        };
        String result=" ";
        for(String names : arr){
            if(names.contains(name)){
                result+=names+",";
            }
        }
        if(result.length()>1)
        result=result.substring(0,result.length()-2);
        out.println(result);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
