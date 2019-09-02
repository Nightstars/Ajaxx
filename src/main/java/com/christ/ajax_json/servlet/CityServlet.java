package com.christ.ajax_json.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/cityServlet")
public class CityServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String id=request.getParameter("id");
        String [][] arr =
                {{"南京","苏州","无锡","南通","盐城"},
                {"宝山","徐汇","松江"},
                {"杭江","宁波","温州","台州","湖州","绍兴"},
                {"济南","青岛市","淄博市","东营"},
                {"太原","大同","长治市","吕梁"}};
        ObjectMapper mapper=new ObjectMapper();
        PrintWriter out=response.getWriter();
        String str=mapper.writeValueAsString(arr[Integer.parseInt(id)]);
        out.println(str);
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }
}
