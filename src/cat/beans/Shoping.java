package  cat.beans;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * (SHOPING)
 * 
 * @author bianj
 * @version 1.0.0 2017-11-23
 */
public class Shoping implements Serializable{
    /** 版本号 */
    private static final long serialVersionUID = 1352109770231867379L;
    
    /** id */
    private Integer id;
    
    /** 用户id */
    private Integer adminId;
    
    /** 钱数 */
    private Double money;
    
    /** 花钱时间 */
    private Date money_time;
    
    /** 花钱项目 */
    private String money_so;
    
    /**
     * 获取id
     * 
     * @return id
     */
    public Integer getId() {
        return this.id;
    }
     
    /**
     * 设置id
     * 
     * @param id
     *          id
     */
    public void setId(Integer id) {
        this.id = id;
    }
    
    /**
     * 获取用户id
     * 
     * @return 用户id
     */
    public Integer getAdminId() {
        return this.adminId;
    }
     
    /**
     * 设置用户id
     * 
     * @param adminId
     *          用户id
     */
    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }
    
    /**
     * 获取钱数
     * 
     * @return 钱数
     */
    public Double getMoney() {
        return this.money;
    }
     
    /**
     * 设置钱数
     * 
     * @param money
     *          钱数
     */
    public void setMoney(Double money) {
        this.money = money;
    }
    
    /**
     * 获取花钱时间
     * 
     * @return 花钱时间
     */
    public String getMoney_time() {
    	 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
    	  String dateString = formatter.format(this.money_time);
        return dateString;
    }
     
    /**
     * 设置花钱时间
     * 
     * @param money_time
     *          花钱时间
     */
    public void setMoney_time(Date money_time) {
        this.money_time = money_time;
    }
    
    /**
     * 获取花钱项目
     * 
     * @return 花钱项目
     */
    public String getMoney_so() {
        return this.money_so;
    }
     
    /**
     * 设置花钱项目
     * 
     * @param money_so
     *          花钱项目
     */
    public void setMoney_so(String money_so) {
        this.money_so = money_so;
    }
}