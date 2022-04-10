package com.triple.finalp.qna.service;

import org.springframework.ui.Model;

import com.triple.finalp.qna.vo.NoticeVo;
import com.triple.finalp.qna.vo.QnaRepVo;
import com.triple.finalp.qna.vo.QnaVo;

public interface QnaService {

	void getAllMyQna(String mem_id, Model model); // 나의 qna리스트

	void writeQna(QnaVo qvo); // 문의글 작성

	void noticeList(Model model); // 공지사항목록

	void writeNotice(NoticeVo nvo); // 공지사항등록

	void noticeList_5(Model model); // 상위 5개 노출

	void showAllQna(Model model); // 고객들의 모든 문의사항

	void qnaShow(int q_id, Model model);

	void qnaRep(QnaRepVo qrvo, String q_id); // 댓글달기

	void qnaRepShow(int q_id, Model model); // 댓글 보여줌

	void noticeShow(Model model, String n_id);

	void deln(String n_id);

	void qnawork(Model model);

	void upno(NoticeVo nvo);

}