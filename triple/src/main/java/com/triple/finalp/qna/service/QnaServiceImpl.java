package com.triple.finalp.qna.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.triple.finalp.qna.dao.QnaDao;
import com.triple.finalp.qna.vo.NoticeVo;
import com.triple.finalp.qna.vo.QnaRepVo;
import com.triple.finalp.qna.vo.QnaVo;

@Service
public class QnaServiceImpl implements QnaService{

   @Autowired
   QnaDao qnaDao;
   
   @Override //나의 문의 목록
   public void getAllMyQna(String mem_id ,Model model) {
      ArrayList<QnaVo> qList = qnaDao.getAllMyQna(mem_id);
      model.addAttribute("qList",qList);
   }

   @Override
   public void writeQna(QnaVo qvo) {
      qnaDao.writeQna(qvo);
   }

   @Override
   public void noticeList(Model model) {
      ArrayList<NoticeVo> nList = qnaDao.noticeList();
      model.addAttribute("nList",nList);
   }
   
   @Override
   public void writeNotice(NoticeVo nvo) {
      qnaDao.writeNotice(nvo);
   }

   @Override
   public void noticeList_5(Model model) {
      ArrayList<NoticeVo> nList = qnaDao.noticeList_5();
      model.addAttribute("nList",nList);
   }

   @Override 
   public void showAllQna(Model model) {
      ArrayList<QnaVo> qList = qnaDao.showAllQna(); 
      model.addAttribute("qList",qList);
   }

   @Override
   public void qnaShow(int q_id, Model model) { 
      QnaVo qvo = qnaDao.qnaShow(q_id); 
      model.addAttribute("qvo",qvo);
      ArrayList<QnaRepVo> qrVoList = qnaDao.qnaRepShow(q_id);
      model.addAttribute("qrVoList",qrVoList);
   }

   @Override
   public void qnaRep(QnaRepVo qrvo,String q_id) { //댓글쓰기
      qnaDao.writeRep(qrvo);
      qnaDao.qnaCheck(q_id);
   }

   @Override
   public void qnaRepShow(int q_id,Model model) {//댓글보여줌
      ArrayList<QnaRepVo> qrList = qnaDao.qnaRepShow(q_id);
      model.addAttribute("qrList",qrList);
   }

	@Override
	public void noticeShow(Model model, String n_id) {
		// TODO Auto-generated method stub
		NoticeVo nVo = qnaDao.noticeShow(n_id);
		model.addAttribute("nvo",nVo);
	}

	@Override
	public void deln(String n_id) {
		// TODO Auto-generated method stub
		qnaDao.deln(n_id);
	}

	@Override
	public void qnawork(Model model) {
		// TODO Auto-generated method stub
		ArrayList<QnaVo> qList = qnaDao.qnawork();
		model.addAttribute("qList",qList);
	}

	@Override
	public void upno(NoticeVo nvo) {
		// TODO Auto-generated method stub
		qnaDao.upno(nvo);
	}


}