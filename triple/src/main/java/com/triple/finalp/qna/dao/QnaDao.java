package com.triple.finalp.qna.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.triple.finalp.pro.vo.ProductDetailVo;
import com.triple.finalp.qna.vo.NoticeVo;
import com.triple.finalp.qna.vo.QnaRepVo;
import com.triple.finalp.qna.vo.QnaVo;

@Mapper
public interface QnaDao {

	ArrayList<QnaVo> getAllMyQna(String mem_id); // 나의 qna 목록

	void writeQna(QnaVo qvo); // 문의글작성

	ArrayList<NoticeVo> noticeList(); // 공지사항목록

	void writeNotice(NoticeVo nvo);

	ArrayList<NoticeVo> noticeList_5(); // 공지사항목록

	ArrayList<QnaVo> showAllQna(); // 고객들의 문의사항 전체보기- admin

	QnaVo qnaShow(int q_id);

	void writeRep(QnaRepVo qrvo);// 댓글달기

	ArrayList<QnaRepVo> qnaRepShow(int q_id); // 댓글보여줌

	void qnaCheck(String q_id);

	NoticeVo noticeShow(String n_id);

	void deln(String n_id);

	ArrayList<QnaVo> qnawork();

	void upno(NoticeVo nvo);
}