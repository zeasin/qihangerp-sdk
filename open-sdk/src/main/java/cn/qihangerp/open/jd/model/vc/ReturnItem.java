package cn.qihangerp.open.jd.model.vc;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class ReturnItem {
    /**
     * factNum
     */
    private int factNum;
    /**
     * brandName
     */
    private String brandName;
    /**
     * returnsNum
     */
    private int returnsNum;
    /**
     * wareId
     */
    private long wareId;
    /**
     * totalPrice
     */
    private double totalPrice;
    /**
     * bizCode
     */
    private String bizCode;
    /**
     * isbn
     */
    private String isbn;
    /**
     * returnsPrice
     */
    private double returnsPrice;
    /**
     * discount
     */
    private int discount;
    /**
     * wareName
     */
    private String wareName;
    /**
     * makePrice
     */
    private double makePrice;
    /***
     * {
     * 				"factNum": 1,
     * 				"brandName": "曲美家居（QM）",
     * 				"returnsNum": 1,
     * 				"wareId": 100058374484,
     * 				"totalPrice": 2944.0000,
     * 				"bizCode": "1740471823",
     * 				"isbn": "100058374484",
     * 				"returnsPrice": 2944.0000,
     * 				"discount": 0,
     * 				"wareName": "曲美家居（QM）双人床 皮床现代主卧皮艺床1.8*2m",
     * 				"makePrice": 0.00
     *                        }
     */

}
