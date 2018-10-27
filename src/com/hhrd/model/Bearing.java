package com.hhrd.model;

import java.math.BigDecimal;

/**
 * Created by chengtong on 2017/5/8.
 */
public class Bearing {
    private String bear_type;  //'型号'
    private String old_code;// '原代号'
    private String storage_code;//  '库存代码',
    private BigDecimal jiu5_price;//'95价格',
    private BigDecimal unit_weight;// '单重',
    private String pack ;// '包装/内径X外径X高'

    public String getBear_type() {
        return bear_type;
    }

    public void setBear_type(String bear_type) {
        this.bear_type = bear_type;
    }

    public String getOld_code() {
        return old_code;
    }

    public void setOld_code(String old_code) {
        this.old_code = old_code;
    }

    public String getStorage_code() {
        return storage_code;
    }

    public void setStorage_code(String storage_code) {
        this.storage_code = storage_code;
    }

    public BigDecimal getJiu5_price() {
        return jiu5_price;
    }

    public void setJiu5_price(BigDecimal jiu5_price) {
        this.jiu5_price = jiu5_price;
    }

    public BigDecimal getUnit_weight() {
        return unit_weight;
    }

    public void setUnit_weight(BigDecimal unit_weight) {
        this.unit_weight = unit_weight;
    }

    public String getPack() {
        return pack;
    }

    public void setPack(String pack) {
        this.pack = pack;
    }
}
