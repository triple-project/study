package com.triple.finalp.data.service;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;

import com.triple.finalp.data.vo.FlightVo;
import com.triple.finalp.data.vo.TrainVo;

public interface DataService {

	public String train(TrainVo trainVo) throws IOException;
	
	public String flight(FlightVo flightVo) throws IOException;

}
