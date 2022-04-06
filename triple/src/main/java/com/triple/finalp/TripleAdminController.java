package com.triple.finalp;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.triple.finalp.pro.service.ProductService;
import com.triple.finalp.tag.service.TagService;


@Controller
@RequestMapping("/admin")
public class TripleAdminController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	TagService tagService;
	
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
}
