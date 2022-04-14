package com.triple.finalp;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.triple.finalp.mag.service.FileService;
import com.triple.finalp.pro.vo.ProductVo;
import com.triple.finalp.qna.service.QnaService;
import com.triple.finalp.qna.vo.NoticeVo;
import com.triple.finalp.qna.vo.QnaRepVo;
import com.triple.finalp.qna.vo.QnaVo;

@Controller
@RequestMapping("/qna")
public class TripleQnaContoller {

   @Autowired
   QnaService qnaService;
   
   @Autowired
   FileService fileService;

   @RequestMapping(value="/",method=RequestMethod.GET)// qna 메인페이지
   public String qnaMain(Model model) {
      qnaService.noticeList_5(model); 
      return "qna/qnaMain";
   }

   @RequestMapping(value = "/myQna",method = RequestMethod.GET) //나의 qna 목록
   public String myQna(Model model,Principal principal) {
	   String mem_id = principal.getName();
      qnaService.getAllMyQna(mem_id,model);
      return "qna/myQna";
   }

   @RequestMapping(value = "/qnaWrite", method = RequestMethod.GET)      // 문의작성하기 이동
   public String goqnaWrite() { 
      return "qna/qnaWrite";
   }

   @RequestMapping(value = "/qnaWrite", method = RequestMethod.POST) // 문의작성하기
   public String writeQna(@RequestParam("qimage_file_name_h")String qimage_file_name_h,QnaVo qvo,Model model,Principal principal,MultipartHttpServletRequest mhsr) throws IllegalStateException, IOException {
	  qvo.setMem_id(principal.getName());
      qnaService.writeQna(qvo);
      fileService.join(mhsr, qimage_file_name_h);
      ////System.out.println(qvo);
      return "redirect:/qna/myQna";
   }

   @RequestMapping(value =  "/noticeList" , method = RequestMethod.GET) //공지사항목록
   public String noticeList(Model model) { 
      qnaService.noticeList(model); 
      return "qna/noticeList";
   }
   
   @RequestMapping(value =  "/work" , method = RequestMethod.GET) //처리중목록
   public String qnawork(Model model) { 
      qnaService.qnawork(model); 
      return "qna/qnawork";
   }

   
   @RequestMapping(value = "/noticeWrite", method = RequestMethod.GET) //admin 공지사항작성이동
   public String writeQna() { 
      return "qna/noticeWrite";
   }
   
   @RequestMapping(value = "/noticeWrite", method = RequestMethod.POST) // admin공지사항작성
   public String writeQna(@RequestParam("nimage_file_name_h")String nimage_file_name_h,NoticeVo nvo,Model model,MultipartHttpServletRequest mhsr) throws IllegalStateException, IOException { 
      qnaService.writeNotice(nvo);
      fileService.join(mhsr, nimage_file_name_h);
      return "redirect:/qna/noticeList";
   }
   
   @RequestMapping(value = "/upno", method = RequestMethod.POST) // admin공지사항작성
   public String upno(@RequestParam("unimage_file_name_h")String unimage_file_name_h,NoticeVo nvo,Model model,MultipartHttpServletRequest mhsr) throws IllegalStateException, IOException { 
      qnaService.upno(nvo);
      fileService.join(mhsr, unimage_file_name_h);
      return "redirect:/qna/noticeList";
   }
   
   @RequestMapping("/showAllQna") // 고객들의 qna목록들 -admin
   public String showAllQna(Model model) {
      qnaService.showAllQna(model);
      return "qna/qnaShowAll";
   }
   
   @RequestMapping(value = "/list/{q_id}", method = RequestMethod.GET) // qna 제목클릭시 보이는 글
   public String showqna( @PathVariable("q_id") int q_id,Model model) {
      model.addAttribute("q_id",q_id);
      qnaService.qnaShow(q_id,model);      
      qnaService.qnaRepShow(q_id, model);      
      
      return "qna/qnaShow";
   }
   
   @RequestMapping(value = "/nlist/{n_id}", method = RequestMethod.GET) // qna 제목클릭시 보이는 글
   public String noticeShow( @PathVariable("n_id") String n_id,Model model) {
	   qnaService.noticeShow(model,n_id);
      return "qna/noticeShow";
   }
   
   @RequestMapping(value = "/deln/{n_id}", method = RequestMethod.GET) // qna 제목클릭시 보이는 글
   public String deln( @PathVariable("n_id") String n_id) {
	   qnaService.deln(n_id);
      return "redirect:/qna/noticeList";
   }


   @RequestMapping(value = "/qnaShow", method = RequestMethod.POST) // 댓글
   public String qnaRep(@RequestParam("q_id") String q_id, QnaRepVo qrvo,Model model) { 
      qnaService.qnaRep(qrvo,q_id);
      return "redirect:/qna/list/"+q_id;
   }
   
   
   
}