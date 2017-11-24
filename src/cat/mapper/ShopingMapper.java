package cat.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cat.beans.Shoping;

public interface ShopingMapper {
	public List<Shoping> getShopingAll(Map<String,Object> map);

	public List<String> getShopingAll_date(Map<String,Object> map);

	public List<HashMap<String, String>> getShopingAll_we(Map<String,Object> map);

	public List<HashMap<String, String>> getShopingAll_ye(Map<String,Object> map);
}
