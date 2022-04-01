package com.triple.finalp.data.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

import org.json.JSONObject;
import org.json.XML;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.triple.finalp.data.vo.TrainVo;

@Service
public class DataServiceImpl implements DataService{

	@Override
	public String train(TrainVo trainVo) throws IOException {
		StringBuilder urlBuilder = new StringBuilder("http://openapi.tago.go.kr/openapi/service/TrainInfoService/getStrtpntAlocFndTrainInfo"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=50kpvF4A6C3KKNrHUp%2BQYGPE8qlyf8mDIe2IICEh5eJDVivH5O%2F2mjOVnSYhDOP%2B5gekbjk9iWeryiVMciLd4g%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
        urlBuilder.append("&" + URLEncoder.encode("depPlaceId","UTF-8") + "=" + URLEncoder.encode(trainVo.getDepPlaceId(), "UTF-8")); /*출발기차역ID*/
        urlBuilder.append("&" + URLEncoder.encode("arrPlaceId","UTF-8") + "=" + URLEncoder.encode(trainVo.getArrPlaceId(), "UTF-8")); /*도착기차역ID*/
        urlBuilder.append("&" + URLEncoder.encode("depPlandTime","UTF-8") + "=" + URLEncoder.encode(trainVo.getDepPlandTime(), "UTF-8")); /*출발일*/
        urlBuilder.append("&" + URLEncoder.encode("trainGradeCode","UTF-8") + "=" + URLEncoder.encode("00", "UTF-8")); /*차량종류코드*/
        //urlBuilder.append("&" + URLEncoder.encode("trainGradeCode","UTF-8") + "=" + URLEncoder.encode(trainVo.getTrainGradeCode(), "UTF-8")); /*차량종류코드*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
			/* sb.append(line+System.getProperty("line.separator")); */
        	sb.append(line);
        }
        rd.close();
        conn.disconnect();
		/* System.out.println(sb.toString()); */
        
        String a = sb.toString();
        JSONObject json = XML.toJSONObject(a);
        String jsonStr = json.toString(4);
        System.out.println(jsonStr);
      
        return jsonStr;
	}

}
