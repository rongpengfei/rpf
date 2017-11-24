package cat.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cat.beans.AdminInfo;

public interface AdminMapper {
	public AdminInfo getadmin_byid();
	
	public int add_admin(AdminInfo admin);
	public AdminInfo get_loginAdmin(Map map );
	
	
	public AdminInfo get_login(Map map);
	
	public AdminInfo get_login1(Map map);
	
	public List<AdminInfo> get_adminlist(AdminInfo admin);
	
	public List<AdminInfo> foreachtest(List<Integer> adminId);
	public List<AdminInfo> maptest(Map map);

}
