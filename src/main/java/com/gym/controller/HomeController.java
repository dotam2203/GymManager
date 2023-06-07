package com.gym.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gym.entity.LoaiThietBi;
import com.gym.entity.NhanVien;
import com.gym.entity.TaiKhoan;
import com.gym.entity.TinTuc;
import com.gym.service.NhanVienService;
import com.gym.service.TaiKhoanService;
import com.gym.service.TinTucService;


@Controller
public class HomeController {
	@Autowired
	private NhanVienService nhanVienService;
	@Autowired
	private TaiKhoanService taiKhoanService;
	@Autowired
	private TinTucService tinTucService;
	
	@RequestMapping("home")
	public String Index() {
		return "introduce/index";
	}
	@RequestMapping("index")
	public String Trangchu() {
		return "introduce/index";
	}
	@RequestMapping("contact")
	public String Contact() {
		return "introduce/contact";
	}
	@RequestMapping("about")
	public String About() {
		return "introduce/about";
	}
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String ShowLogin(HttpSession session) {
		List<NhanVien> nhanViens= nhanVienService.listAll();
		for(NhanVien nhanVien:nhanViens) {
			try {
				if(session.getAttribute("username").equals(nhanVien.getTaiKhoan().getUserName()))
				return "redirect:manager/home";
			}catch(Exception e) {
				return "introduce/login";
			}
		}
		return "introduce/login";
		
	}
	
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String Login( ModelMap modelMap,@RequestParam("username") String username,@RequestParam("password") String password,HttpSession session) {
		List<TaiKhoan> taiKhoans = taiKhoanService.listAll();
		for(TaiKhoan item:taiKhoans){
	        //System.out.println(item.getUserName()+"---"+item.getPassWord()+"\n");
			if(username.equalsIgnoreCase(item.getUserName()) && checkPass(password, item.getPassWord()) && item.getTrangThai()==1 ) {
				session.setAttribute("username", username);
				session.setAttribute("password", password);
				
				session.setAttribute("manv", ""+item.getNhanVien().getMaNV());
				session.setAttribute("tennv", ""+item.getNhanVien().getTenNV());
				session.setAttribute("diachi", ""+item.getNhanVien().getDiaChi());				
				session.setAttribute("email", ""+item.getNhanVien().getEmail());
				session.setAttribute("sdt", ""+item.getNhanVien().getSdt());
				session.setAttribute("gioitinh", ""+item.getNhanVien().getGioiTinh());
				session.setAttribute("chucvu", ""+item.getPhanQuyen().getChucVu());
				session.setAttribute("maQuyen", ""+item.getPhanQuyen().getMaQuyen());
				return "redirect:manager/home";
			}
	    }
		
		modelMap.addAttribute("error", "Sai Username hoặc Password!");
		return "introduce/login";
		
	}
	
	
	
	
	@RequestMapping(value="blog",method = RequestMethod.GET)
	public String blog(ModelMap model) {
		
		List<TinTuc> listTinTuc = tinTucService.listAll();
		model.addAttribute("listTinTuc", listTinTuc);
		System.out.println(listTinTuc);
		return "introduce/blog";
	}
	//==================Xem chi tiết tin tức
	@RequestMapping(value = "blog", params = {"id"}, method = RequestMethod.GET)
	public ModelAndView ChiTietTinTuc( HttpSession session, HttpServletResponse response, @RequestParam("id") int maTinTuc) throws IOException {
		ModelAndView mw =new ModelAndView("introduce/chitietblog");
		TinTuc tinTuc = tinTucService.selectByMaTT(maTinTuc);
		mw.addObject("tinTuc", tinTuc);
		return mw;
	}
	public boolean checkPass(String pass, String encoderPass) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		boolean isCheck = encoder.matches(pass, encoderPass);
		if(!isCheck)
		 return false;
		return true;
		
	}
}