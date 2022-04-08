package com.triple.finalp;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.triple.finalp.mag.service.FileService;
import com.triple.finalp.pro.service.ProductService;
import com.triple.finalp.pro.vo.ProductDetailVo;
import com.triple.finalp.pro.vo.ProductVo;
import com.triple.finalp.tag.service.TagService;


@Controller
@RequestMapping("/admin")
public class TripleAdminController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	TagService tagService;
	
	@Autowired
	FileService fileService;
	
	@RequestMapping(value = "/oL", method = RequestMethod.GET)
	public String oL(Model model,Principal principal) {
		String aid = principal.getName();
		productService.getProId(aid,model);
		return "owner/ownerList";
	}
	
	@RequestMapping(value = "/oL/{page}", method = RequestMethod.GET)
	public String oLp(@PathVariable("page") int page,Model model,Principal principal) {
		String aid = principal.getName();
		productService.getProId2(aid,model,page);
		return "owner/ownerList";
	}

	@RequestMapping(value = "/oRm/{product_id}", method = RequestMethod.GET)
	public String oRm(@PathVariable("product_id")String product_id,Model model,Principal principal) {
		String admin_id = principal.getName();
		Boolean a = productService.mypro(product_id,admin_id,model);
		if (a) {
			return "owner/ownerRoom";
		}
		return "owner/ownerList";
	}

	@RequestMapping(value = "/oR", method = RequestMethod.GET)
	public String oR() {
		// owner/ownerReg

		return "owner/ownerReg";
	}
	
	// 상품수정경로
    @RequestMapping(value = "/updatePro/{product_id}", method = RequestMethod.GET)
    public String updatePro(@PathVariable("product_id") String product_id, Model model,Principal principal) {
       String aid = principal.getName();
       productService.showPro(product_id,model);
       return "/owner/updatePro";   //.jsp경로      
    }
    
    @RequestMapping(value = "/updatePro", method = RequestMethod.POST)
    public String updateProduct(@RequestParam("img_name_up") List<String> img_name_up,ProductVo pvo,MultipartHttpServletRequest mhsr) throws IllegalStateException, IOException {
       System.out.println(pvo);
       System.out.println(img_name_up);
       productService.updateProduct(pvo);       
       fileService.save(mhsr, img_name_up);
       return "redirect:/admin/oL";
    }
    
 // 상품수정경로
    @RequestMapping(value = "/updateProD/{pd_id}", method = RequestMethod.GET)
    public String updateProD(@PathVariable("pd_id") String pd_id, Model model,Principal principal) {
       String aid = principal.getName();
       productService.getdetail(pd_id,model);
       return "/owner/updateDetail";   //.jsp경로      
    }
    
    @RequestMapping(value = "/updateProD", method = RequestMethod.POST)
    public String updateProductD(@RequestParam("img_name_upd") List<String> img_name_upd,ProductDetailVo pdvo,MultipartHttpServletRequest mhsr) throws IllegalStateException, IOException {
       System.out.println(pdvo);
       productService.updateProductD(pdvo);
       fileService.save(mhsr, img_name_upd);
       return "redirect:/admin/oL";
    }
    
    @RequestMapping(value = "/updatetag", method = RequestMethod.POST)
    public String updatetag(@RequestParam("utag") List<String> utag,@RequestParam("tpid") String tpid,Principal principal) {
    	System.out.println(utag);
    	tagService.updatet(utag,tpid);
    	return "redirect:/admin/oL";   //.jsp경로      
    }

}
