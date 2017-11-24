package cat.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cat.beans.AdminInfo;
import cat.beans.Shoping;
import cat.mapper.AdminMapper;
import cat.mapper.ShopingMapper;

@Controller
@Scope("singleton")
public class AdminAction {

	@Resource(name = "adminMapper")
	private AdminMapper mapper;

	@Resource(name = "shopingMapper")
	private ShopingMapper shop;

	 
	@RequestMapping("/index.do.jsp")
	public String  index(){
		
		return "index";
	}
	
	@RequestMapping("/login.do")
	public String getAllAdmin(HttpServletRequest request, 
			Model m) {
		AdminInfo admininfo=(AdminInfo) request.getSession().getAttribute("admininfo");
		if(null==admininfo){
			//重定向
		   return "redirect:/index.jsp"; 
		}
		m.addAttribute("admininfo", admininfo);
		

		Map map = new HashMap<String, Object>();
		map.put("id", admininfo.getId());
		map.put("all", 1);

		List<Shoping> shoping = shop.getShopingAll(map);
		m.addAttribute("shop", shoping);
		List<String> shopingdate = shop.getShopingAll_date(map);
		m.addAttribute("shopingdate", shopingdate);

		List<HashMap<String, String>> shopingwe = shop.getShopingAll_we(map);
		m.addAttribute("shopingwe", shopingwe);

		List<HashMap<String, String>> shopingye = shop.getShopingAll_ye(map);
		m.addAttribute("shopingye", shopingye);

		return "main/main";
	}
	@RequestMapping("/xq.do")
	public String getXQ(HttpServletRequest request, Model m, int xq) {

		AdminInfo admininfo = (AdminInfo) request.getSession().getAttribute(
				"admininfo");
		Map map = new HashMap<String, Object>();
		map.put("id", admininfo.getId());
		map.put("all", 2);

		if (xq == 1) {
			List<Shoping> shoping = shop.getShopingAll(map);
			m.addAttribute("shop", shoping);

		}
		if (xq == 2) {
			List<String> shopingdate = shop.getShopingAll_date(map);
			m.addAttribute("shopingdate", shopingdate);
		}
		if (xq == 3) {
			List<HashMap<String, String>> shopingwe = shop
					.getShopingAll_we(map);
			m.addAttribute("shopingwe", shopingwe);
		}
		if (xq == 4) {

			List<HashMap<String, String>> shopingye = shop
					.getShopingAll_ye(map);
			m.addAttribute("shopingye", shopingye);
		}

		return "main/xqmain";
	}

	@RequestMapping("/gologin.do")
	@ResponseBody
	public Object pdadmin(HttpServletRequest request, String name, String pass) {
		HttpSession session = request.getSession();
	
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("pass", pass);
		AdminInfo admininfo = mapper.get_loginAdmin(map);
		if (admininfo == null) {
			return new AdminInfo();
		}
		session.setAttribute("admininfo", admininfo);
		return admininfo;
	}
}
