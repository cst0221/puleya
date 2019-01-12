package com.zhenxl.ui.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zhenxl.pojo.Product;
import com.zhenxl.pojo.ProductExample;
import com.zhenxl.pojo.ProductkuidView;
import com.zhenxl.ui.dao.JedisDao;
import com.zhenxl.ui.dao.impl.JedisDaoImpl;
import com.zhenxl.ui.service.ProductService;
import com.zhenxl.ui.service.ProductkuidService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	@Autowired
	private ProductkuidService productkuidService;
	
	/*
	 * condition: 
	 * 	1 :按金额排序
	 * 	2: 模糊查询
	 */
	@RequestMapping(value="productview")
	public String productView(Model model,@RequestParam(defaultValue="5") int cid,
			@RequestParam(defaultValue="0") int condition,HttpServletRequest request) {
		ProductExample example = new ProductExample();
		ProductExample.Criteria c = example.createCriteria();
		c.andCidEqualTo(cid);
		if(condition==1) {
			example.setOrderByClause("price asc");
		}
		if(condition==2) {
			String pname = request.getParameter("pname");
			c.andPnameLike(pname);
		}
		List<Product> productList = productService.selectByExample(example);
		model.addAttribute("products", productList);
		return "productlist";
	}
	@RequestMapping(value="prodetailView")
	public String prodetailView(Model model,int pid) {
		JedisDao jedisDao = new JedisDaoImpl();
		Product product = productService.selectByPrimaryKey(pid);
		List<ProductkuidView> kuidView = productkuidService.selectByProduct(product);
		model.addAttribute("product", product);
		model.addAttribute("kuidView", kuidView);
		return "productdetail";
	}
}
