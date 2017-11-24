package cat.util;

public class FenYe {
	private int count;//总共多少条数据
	private int  pagecount;//总共多少页
	private int  nowpage;//当前第几页
	private int pagetotal;//每页多少条
	private int nowcount ; //从第几条开始
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPagecount() {
		return pagecount;
	}
	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}
	public int getNowpage() {
		return nowpage;
	}
	public void setNowpage(int nowpage) {
		this.nowpage = nowpage;
	}
	public int getPagetotal() {
		return pagetotal;
	}
	public void setPagetotal(int pagetotal) {
		this.pagetotal = pagetotal;
	}
	public int getNowcount() {
		return nowcount;
	}
	public void setNowcount(int nowcount) {
		this.nowcount = nowcount;
	}
	
	

}
