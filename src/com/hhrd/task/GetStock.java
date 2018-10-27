package com.hhrd.task;

import com.alibaba.dubbo.common.json.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.discrawler.framework.client.CrackClient;
import com.discrawler.framework.spi.resource.Result;
import com.google.common.collect.Maps;
import com.hhrd.utils.DateUtil;
import org.apache.commons.lang.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.io.*;
import java.math.BigDecimal;
import java.sql.*;
import java.util.*;
import java.util.Date;

/**
 * Created by chengtong on 2017/8/30.
 */
@Component
public class GetStock {
    private static final String priceUrl = "http://d.10jqka.com.cn/v2/realhead/hs_STOCK/last.js";
    private static final String fenshuCookieUrl = "http://q.10jqka.com.cn/index/index/board/all/field/zdf/order/desc/page/1/ajax/1/";
    private static final String goalUrl = "http://stockpage.10jqka.com.cn/STOCK/";
    private static final  String fileUrl = "/Users/chengtong/Desktop/stock/stock.csv";
//    private static final String fileUrl = "/root/data/service/stock/stock.csv";
    private static final  String OutResultFileUrl = "/Users/chengtong/Desktop/stock/";
    private static final String zijinUrl = "http://stockpage.10jqka.com.cn/spService/STOCK/Funds/realFunds";

    private static HashMap<String,Stock> stockMap = Maps.newHashMap();

    public static void main(String[] args) throws IOException {
        try {
            int batchNo = 3;

            getStock(fileUrl,batchNo);
//            getTrade(batchNo);
//            getHuge(fileUrl,batchNo);

//            getConcept(batchNo);


        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Scheduled(cron = "0 0 17 * * ?")
    void getStock(){
        int batchNo = 3;
        try {
            getStock(fileUrl,batchNo);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Scheduled(cron = "0 0 17 * * ?")
    void getTrade(){
        int batchNo = 3;
        try {
            getTrade(batchNo);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @Scheduled(cron = "0 0 17 * * ?")
    void getHuge(){
        int batchNo = 3;
        getHuge(fileUrl,batchNo);
    }
    @Scheduled(cron = "0 0 17 * * ?")
    void getConceptTash(){
        try {
            getConcept(3);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @Scheduled(cron = "0 0 17 * * ?")
    void getZijin(){
        int batchNo = 3;
        getZijin(fileUrl,batchNo);
    }
    public static void getZijin(String fileName,int batchNo){
        CrackClient<Object, Result> client = CrackClient.local();

        File file = new File(fileName);
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new FileReader(file));
            String tempString = null;

            while ((tempString = reader.readLine()) != null) {
                try {
                    String[] strs = tempString.split(",");
                    String name = strs[1];
                    String code = strs[0];

                    String zijin = StringUtils.replace(zijinUrl,"STOCK",code);
                    String json = client.get(zijin);
                    JSONObject jsonObject = JSON.parse(json,JSONObject.class);
                    JSONArray array = jsonObject.getJSONArray("flash");
                    if(array.size()>0){
                        String bigOut = JSON.parse(array.get(0).toString(),JSONObject.class).getString("sr");
                        String middleOut = JSON.parse(array.get(1).toString(),JSONObject.class).getString("sr");
                        String smallOut = JSON.parse(array.get(2).toString(),JSONObject.class).getString("sr");
                        String smallIn = JSON.parse(array.get(3).toString(),JSONObject.class).getString("sr");
                        String middleIn = JSON.parse(array.get(4).toString(),JSONObject.class).getString("sr");
                        String bigIn = JSON.parse(array.get(5).toString(),JSONObject.class).getString("sr");
                        String sum = jsonObject.getString("title");
                        String[] sumArray = StringUtils.replace(StringUtils.replace(sum,"{",""),"}","").split(",");

                        String zlc = StringUtils.substringAfter(sumArray[0],"zlc=").trim();
                        String zlr = StringUtils.substringAfter(sumArray[1],"zlr=").trim();
                        String je = StringUtils.substringAfter(sumArray[2],"je=").trim();
                        ZiJin zi = new ZiJin();
                        zi.setBigOut(bigOut);
                        zi.setMiddleOut(middleOut);
                        zi.setSmallOut(smallOut);
                        zi.setSmallIn(smallIn);
                        zi.setMiddleIn(middleIn);
                        zi.setBigIn(bigIn);
                        zi.setZlc(zlc);
                        zi.setZlr(zlr);
                        zi.setJe(je);
                        BigDecimal decimalZlc = new BigDecimal(zi.getZlc());
                        BigDecimal decimalZlr = new BigDecimal(zi.getZlr());
                        BigDecimal numSum = decimalZlc.add(decimalZlr);
                        zi.setBigOutRatio(new BigDecimal(zi.getBigOut()).divide(numSum, 2, BigDecimal.ROUND_HALF_UP).toString());
                        zi.setMiddleOutRatio(new BigDecimal(zi.getMiddleOut()).divide(numSum, 2, BigDecimal.ROUND_HALF_UP).toString());
                        zi.setSmallOutRatio(new BigDecimal(zi.getSmallOut()).divide(numSum, 2, BigDecimal.ROUND_HALF_UP).toString());
                        zi.setSmallInRatio(new BigDecimal(zi.getSmallIn()).divide(numSum, 2, BigDecimal.ROUND_HALF_UP).toString());
                        zi.setMiddleInRatio(new BigDecimal(zi.getMiddleIn()).divide(numSum, 2, BigDecimal.ROUND_HALF_UP).toString());
                        zi.setBigInRatio(new BigDecimal(zi.getBigIn()).divide(numSum, 2, BigDecimal.ROUND_HALF_UP).toString());
                        System.out.println("股票"+code+zi.toString());
                        zi.setStockCode(code);
                        addFund(zi,batchNo);

                    }

                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static void getConcept(int batchNo) throws IOException {
        String conceptUrl = "http://q.10jqka.com.cn/gn/";
        String infoUrl = "http://q.10jqka.com.cn/gn/detail/code/CODE/";
        String stockUrl = "http://q.10jqka.com.cn/gn/detail/order/desc/page/NUM/ajax/1/code/CODE";
        CrackClient<Object, Result> client = CrackClient.local();
        String html = client.get(conceptUrl);
        Document document = Jsoup.parse(html);
        Elements divs = document.select("div[class=\"cate_items\"]");
        for(int i=0;i<divs.size();i++){
            try {
                Elements as = divs.get(i).select("a");
                for (int j = 0; j < as.size(); j++) {
                    try {
                        String name = as.get(j).text();
                        String code = as.get(j).attr("href");
                        String codeTmp = StringUtils.substringBefore(StringUtils.substringAfter(code, "code/"), "/");

                        String infoUrlTmp = StringUtils.replace(infoUrl, "CODE", codeTmp);
                        String infoHtml = client.get(infoUrlTmp);
                        Document doc = Jsoup.parse(infoHtml);
                        if (doc.select("div[class=\"board-infos\"]").select("dl").size() > 8) {
                            String waveRatio = doc.select("div[class=\"board-infos\"]").select("dl").get(5).select("dd").text();
                            String upNum = doc.select("div[class=\"board-infos\"]").select("dl").get(7).select("dd").select("span").get(0).text();
                            String downNum = doc.select("div[class=\"board-infos\"]").select("dl").get(7).select("dd").select("span").get(1).text();
                            String netInflow = doc.select("div[class=\"board-infos\"]").select("dl").get(8).select("dd").text();
                            if (StringUtils.isBlank(upNum))
                                upNum = "0";
                            if (StringUtils.isBlank(downNum))
                                downNum = "0";
                            Concept concept = new Concept(name, codeTmp, new BigDecimal(waveRatio.replace("%", "")), Integer.valueOf(upNum), Integer.valueOf(downNum), new BigDecimal(netInflow));
                            addConcept(concept, batchNo);
                            System.out.println(concept.toString());
                        }else{
                            String waveRatio = doc.select("div[class=\"board-infos fr\"]").select("dl").get(0).select("dd").text();
                            String upNum = doc.select("div[class=\"board-infos fr\"]").select("dl").get(1).select("dd").select("span").get(0).text();
                            String downNum = doc.select("div[class=\"board-infos fr\"]").select("dl").get(1).select("dd").select("span").get(1).text();
                            Concept concept = new Concept(name, codeTmp, new BigDecimal(waveRatio.replace("%", "")), Integer.valueOf(upNum), Integer.valueOf(downNum), new BigDecimal("0.00"));
                            addConcept(concept, batchNo);
                            System.out.println(concept.toString());
                        }
                        int num = getConceptStock(codeTmp);
                        if(num==0) {
                            for (int k = 1; k < 100; k++) {
                                String url = stockUrl.replace("NUM", String.valueOf(k)).replace("CODE", codeTmp);
                                String stockHtml = client.get(url);
                                Document stockdoc = Jsoup.parse(stockHtml);
                                Elements els = stockdoc.select("table").select("tr");
                                for (int g = 1; g < els.size(); g++) {
                                    if (els.get(g).select("td").size() > 1) {
                                        String stockCode = els.get(g).select("td").get(1).text();
                                        addConceptStock(codeTmp, stockCode);
                                        System.out.println("code=" + codeTmp + ";stockCode=" + stockCode);
                                    }
                                }
                            }
                        }
                    }catch (Exception e){
                        System.out.println(e);
                    }
                }
            }catch (Exception e){
                System.out.println(e);
            }
        }
    }

    public static void testgetConcept(int batchNo) throws IOException {
        String conceptUrl = "http://q.10jqka.com.cn/gn/";
        String infoUrl = "http://q.10jqka.com.cn/gn/detail/code/CODE/";
        CrackClient<Object, Result> client = CrackClient.local();

        try {
            String name = "芯片替代";
            System.out.println(name);
            String code = "http://q.10jqka.com.cn/gn/detail/code/301085/";
            String codeTmp = StringUtils.substringBefore(StringUtils.substringAfter(code, "code/"), "/");

            String infoUrlTmp = StringUtils.replace(infoUrl, "CODE", codeTmp);
            String infoHtml = client.get(infoUrlTmp);
            System.out.println(infoHtml);
            Document doc = Jsoup.parse(infoHtml);
            if (doc.select("div[class=\"board-infos\"]").select("dl").size() > 8) {
                String waveRatio = doc.select("div[class=\"board-infos\"]").select("dl").get(5).select("dd").text();
                String upNum = doc.select("div[class=\"board-infos\"]").select("dl").get(7).select("dd").select("span").get(0).text();
                String downNum = doc.select("div[class=\"board-infos\"]").select("dl").get(7).select("dd").select("span").get(1).text();
                String netInflow = doc.select("div[class=\"board-infos\"]").select("dl").get(8).select("dd").text();
                if (StringUtils.isBlank(upNum))
                    upNum = "0";
                if (StringUtils.isBlank(downNum))
                    downNum = "0";
                Concept concept = new Concept(name, codeTmp, new BigDecimal(waveRatio.replace("%", "")), Integer.valueOf(upNum), Integer.valueOf(downNum), new BigDecimal(netInflow));
                System.out.println(concept.toString());
             }else{
                String waveRatio = doc.select("div[class=\"board-infos fr\"]").select("dl").get(0).select("dd").text();
                String upNum = doc.select("div[class=\"board-infos fr\"]").select("dl").get(1).select("dd").select("span").get(0).text();
                String downNum = doc.select("div[class=\"board-infos fr\"]").select("dl").get(1).select("dd").select("span").get(1).text();
                Concept concept = new Concept(name, codeTmp, new BigDecimal(waveRatio.replace("%", "")), Integer.valueOf(upNum), Integer.valueOf(downNum), new BigDecimal("0.00"));
                System.out.println(concept.toString());
            }
            }catch (Exception e){
               e.printStackTrace();
            }

        }

    public static void getHuge(String fileName,int batchNo){
        String hugeUrl = "http://data.10jqka.com.cn/funds/dddetail/code/CODE/";
        File file = new File(fileName);
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new FileReader(file));
            String tempString = null;

            while ((tempString = reader.readLine()) != null) {
                try {
                    String[] strs = tempString.split(",");
                    String code = strs[0];
                    CrackClient<Object, Result> client = CrackClient.local();
                    String html = client.get(StringUtils.replace(hugeUrl, "CODE", code));
                    Document doc = Jsoup.parse(html);
                    Elements lis = doc.select("div[class=\"m_hd ddzz_infobox\"]").select("ul").select("li");
                    if (lis != null && lis.size() > 1) {
                        String volumes = lis.get(0).select("strong").text();
                        String totalTurnover = lis.get(1).select("strong").text();
                        String averagePrice = lis.get(2).select("strong").text();

                        Elements divs = doc.select("div[class=\"ddzz_table_caption\"]");
                        String buyer = StringUtils.substringBefore(StringUtils.substringAfter(divs.get(0).text(), "："), "万").trim();
                        String seller = StringUtils.substringBefore(StringUtils.substringAfter(divs.get(1).text(), "："), "万").trim();
                        Huge huge = new Huge(code, volumes, totalTurnover, averagePrice, buyer, seller);
                        System.out.println(huge);
                        addHuge(huge, batchNo);
                    }
                }catch (Exception e){
                    System.out.println(e);
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e1) {
                }
            }
        }
    }
    public static void getStock(String fileName,int batchNo) throws Exception{
        File file = new File(fileName);
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new FileReader(file));
            String tempString = null;

            while ((tempString = reader.readLine()) != null) {
                try {
                    String[] strs = tempString.split(",");
                    String name = strs[1];
                    String code = strs[0];
                    //当前价格
//                    CrackClient<Object, Result> client = CrackClient.local();
//                    String resultPriceUrl = StringUtils.replace(priceUrl, "STOCK", code);
//                    String result = client.get(resultPriceUrl);
//                    String resultTmp = StringUtils.substringBefore(StringUtils.substringAfter(result, "("), ")");
//                    JSONObject jsonObject = JSON.parse(resultTmp,JSONObject.class);
//                    String price = jsonObject.getJSONObject("items").getString("10");
//                    String waveRatio = jsonObject.getJSONObject("items").getString("199112");
                    String price = "0.00";
                    String waveRatio = "0.00";
                    //牛叉评分
                    CrackClient<Object, Result> clientFenshu = CrackClient.local();
                    String fenshuUrl = StringUtils.replace(goalUrl, "STOCK", code);
                    clientFenshu.get(fenshuCookieUrl);
                    String html = clientFenshu.get(fenshuUrl);
                    Document document = Jsoup.parse(html);
                    String score = document.select("div[class=\"analyze-img fl\"]").select("span[class=\"analyze-num\"]").text();
                    //诊断
                    Elements eles = document.select("div[class=\"txt-main\"]");
                    String shortDesign = eles.get(0).text();
                    String middleDesign = eles.get(1).text();
                    String longDesign = eles.get(2).text();
                    String desc = shortDesign+"|"+middleDesign+"|"+longDesign;
                    //评级
                    Elements trs = document.select("table[class=\"table-jg\"]").select("tr");
                    Elements tds = trs.get(1).select("td");
                    String company = "";
                    String date = "";
                    String newPj = "";
                    String beforePj = "";
                    String pjDesc = "";
                    if(tds.size()>1) {
                        company = tds.get(0).text();
                        date = tds.get(1).text();
                        newPj = tds.get(2).text();
                        beforePj = tds.get(3).text();
                        pjDesc = company + "|" + date + "|" + newPj + "|" + beforePj;
                    }
                    //控盘
                    String controlDesc = document.select("div[class=\"sub_cont_6 hSty1\"]").select("p[class=\"zjlxlstj_txt mb14\"]").text();

                    Stock stock = new Stock(code,name,new BigDecimal(price),new BigDecimal(waveRatio),new BigDecimal(score),desc,date.replace("-",""),pjDesc,controlDesc);
                    //入库
                    addStock(stock,batchNo);
                    //如文件
//                    stockMap.put(code,stock);
                    System.out.println("name=" + name+";waveRatio="+waveRatio + ";price=" + price+";fenshu="+score+"；disign="+desc+";pjDate="+date+";pjDesc="+pjDesc+";controlDesc="+controlDesc);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e1) {
                }
            }
        }
    }
    public static  void compare(){
        List<Map.Entry<String,Stock>> list = new ArrayList<Map.Entry<String,Stock>>(stockMap.entrySet());
        Collections.sort(list,new Comparator<Map.Entry<String,Stock>>() {
            //升序排序
            public int compare(Map.Entry<String, Stock> o1,
                               Map.Entry<String, Stock> o2) {
                return o1.getValue().getScore().compareTo(o2.getValue().getScore());
            }
        });

        for(Map.Entry<String,Stock> mapping:list){
            textToFile(OutResultFileUrl+"score.txt",mapping.toString());
        }

        Collections.sort(list,new Comparator<Map.Entry<String,Stock>>() {
            //升序排序
            public int compare(Map.Entry<String, Stock> o1,
                               Map.Entry<String, Stock> o2) {
                return o1.getValue().getPjDate().compareTo(o2.getValue().getPjDate());
            }
        });

        for(Map.Entry<String,Stock> mapping:list){
            textToFile(OutResultFileUrl+"pj.txt",mapping.toString());
        }

    }
    public static void getStocks() throws IOException {
        String stockListUrl = "http://q.10jqka.com.cn/index/index/board/all/field/zdf/order/desc/page/NUM/ajax/1/";
        String OutFileUrl = "/Users/chengtong/Desktop/stock/stock.csv";
        CrackClient<Object, Result> client = CrackClient.local();
         for(int n=1;n<=155;n++) {
             String tmp = StringUtils.replace(stockListUrl, "NUM", String.valueOf(n));
             String html = client.get(tmp);
             Document doc = Jsoup.parse(html);
             Elements trs = doc.select("table").select("tr");

             for (int i = 1; i < trs.size(); i++) {
                 Elements tds = trs.get(i).select("td");
                 String code = tds.get(1).text();
                 String name = tds.get(2).text();
                 System.out.println(code+","+name);
                 textToFile(OutFileUrl,code+","+name);
             }
         }
    }
    public static void getTrade(int batchNo) throws IOException {
        String tradeUrl = "http://q.10jqka.com.cn/thshy/index/field/199112/order/desc/page/NUM/ajax/1/";
        String stockUrl = "http://q.10jqka.com.cn/thshy/detail/field/199112/order/desc/page/PAGE/ajax/1/code/CODE";
        CrackClient<Object, Result> client = CrackClient.local();
        for(int i=1;i<=2;i++){
            try {
                String tmpUrl = StringUtils.replace(tradeUrl, "NUM", String.valueOf(i));
                String html = client.get(tmpUrl);
                Document doc = Jsoup.parse(html);
                Elements trs = doc.select("table[class=\"m-table m-pager-table\"]").select("tr");
                for (int j = 1; j < trs.size(); j++) {
                    try {
                        Elements tds = trs.get(j).select("td");
                        String name = tds.get(1).text();
                        String code = tds.get(1).select("a").first().attr("href");
                        String codeTmp = StringUtils.substringBefore(StringUtils.substringAfter(code, "code/"), "/");
                        BigDecimal waveRatio = new BigDecimal(tds.get(2).text());
                        int upNum = Integer.valueOf(tds.get(6).text());
                        int downNum = Integer.valueOf(tds.get(7).text());
                        BigDecimal netInflow = new BigDecimal(tds.get(5).text());
                        Trade trade = new Trade(name, codeTmp, waveRatio, upNum, downNum, netInflow);
                        System.out.println(trade.toString());
                        addTrade(trade, batchNo);
                    }catch (Exception e){
                        System.out.println(e);
                    }

//                String stocUrlTmp = StringUtils.replace(stockUrl,"CODE",codeTmp);
//                for(int g = 1;g<=10;g++) {
//                    String stockUrlEnd = StringUtils.replace(stocUrlTmp,"PAGE",String.valueOf(g));
//                    String stockHtml = client.get(stockUrlEnd);
//                    Document document = Jsoup.parse(stockHtml);
//                    Elements strs = document.select("table[class=\"m-table m-pager-table\"]").select("tr");
//                    if(strs !=null && strs.size()>0) {
//                        for (int k = 1; k < strs.size(); k++) {
//                            Elements stds = strs.get(k).select("td");
//                            if(stds != null && stds.size()>1) {
//                                String stockCode = stds.get(1).text();
//                                System.out.println("code=" + codeTmp + ";stockCode=" + stockCode);
//                                addTradeStock(codeTmp, stockCode);
//                            }
//                        }
//                    }
//                }

                }
            }catch (Exception e){
                System.out.println(e);
            }

        }

    }
    public static void textToFile(final String strFilename, final String strBuffer)
    {
        try
        {
            // 创建文件对象
            File fileText = new File(strFilename);
            // 向文件写入对象写入信息
            FileWriter fileWriter = new FileWriter(fileText,true);
            BufferedWriter buffer = new BufferedWriter(fileWriter);
            // 写文件
            buffer.write(strBuffer);
            buffer.newLine();
            // 关闭
            buffer.flush();
            buffer.close();
        }
        catch (IOException e)
        {
            //
            e.printStackTrace();
        }
    }

    public static class Stock {
        private String code;
        private String name;
        private BigDecimal price;
        private BigDecimal waveRatio;
        private BigDecimal score;
        private String desc;
        private String pjDate;
        private String pjDesc;
        private String controlDesc;

        public Stock(String code, String name, BigDecimal price, BigDecimal waveRatio, BigDecimal score, String desc, String pjDate, String pjDesc, String controlDesc) {
            this.code = code;
            this.name = name;
            this.price = price;
            this.waveRatio = waveRatio;
            this.score = score;
            this.desc = desc;
            this.pjDate = pjDate;
            this.pjDesc = pjDesc;
            this.controlDesc = controlDesc;
        }

        public String getCode() {
            return code;
        }

        public void setCode(String code) {
            this.code = code;
        }

        public String getControlDesc() {
            return controlDesc;
        }

        public void setControlDesc(String controlDesc) {
            this.controlDesc = controlDesc;
        }

        public String getPjDate() {
            return pjDate;
        }

        public void setPjDate(String pjDate) {
            this.pjDate = pjDate;
        }

        public String getPjDesc() {
            return pjDesc;
        }

        public void setPjDesc(String pjDesc) {
            this.pjDesc = pjDesc;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public BigDecimal getPrice() {
            return price;
        }

        public void setPrice(BigDecimal price) {
            this.price = price;
        }

        public BigDecimal getWaveRatio() {
            return waveRatio;
        }

        public void setWaveRatio(BigDecimal waveRatio) {
            this.waveRatio = waveRatio;
        }

        public BigDecimal getScore() {
            return score;
        }

        public void setScore(BigDecimal score) {
            this.score = score;
        }

        public String getDesc() {
            return desc;
        }

        public void setDesc(String desc) {
            this.desc = desc;
        }

        @Override
        public String toString() {
            return "Stock{" +
                    "code='" + code + '\'' +
                    ", name='" + name + '\'' +
                    ", price=" + price +
                    ", waveRatio=" + waveRatio +
                    ", score=" + score +
                    ", desc='" + desc + '\'' +
                    ", pjDate='" + pjDate + '\'' +
                    ", pjDesc='" + pjDesc + '\'' +
                    ", controlDesc='" + controlDesc + '\'' +
                    '}';
        }
    }
    public static class Trade{
        private String name;
        private String code;
        private BigDecimal waveRatio;
        private int upNum;
        private int downNum;
        private BigDecimal netInflow;

        public Trade(String name, String code, BigDecimal waveRatio, int upNum, int downNum, BigDecimal netInflow) {
            this.name = name;
            this.code = code;
            this.waveRatio = waveRatio;
            this.upNum = upNum;
            this.downNum = downNum;
            this.netInflow = netInflow;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getCode() {
            return code;
        }

        public void setCode(String code) {
            this.code = code;
        }

        public BigDecimal getWaveRatio() {
            return waveRatio;
        }

        public void setWaveRatio(BigDecimal waveRatio) {
            this.waveRatio = waveRatio;
        }

        public int getUpNum() {
            return upNum;
        }

        public void setUpNum(int upNum) {
            this.upNum = upNum;
        }

        public int getDownNum() {
            return downNum;
        }

        public void setDownNum(int downNum) {
            this.downNum = downNum;
        }

        public BigDecimal getNetInflow() {
            return netInflow;
        }

        public void setNetInflow(BigDecimal netInflow) {
            this.netInflow = netInflow;
        }

        @Override
        public String toString() {
            return "Trade{" +
                    "name='" + name + '\'' +
                    ", code='" + code + '\'' +
                    ", waveRatio=" + waveRatio +
                    ", upNum=" + upNum +
                    ", downNum=" + downNum +
                    ", netInflow=" + netInflow +
                    '}';
        }
    }
    public static class Huge {
        String code;
        String volumes;
        String totalTurnover ;
        String averagePrice ;
        String buyer ;
        String seller;

        public Huge(String code, String volumes, String totalTurnover, String averagePrice, String buyer, String seller) {
            this.code = code;
            this.volumes = volumes;
            this.totalTurnover = totalTurnover;
            this.averagePrice = averagePrice;
            this.buyer = buyer;
            this.seller = seller;
        }

        public String getCode() {
            return code;
        }

        public void setCode(String code) {
            this.code = code;
        }

        public String getVolumes() {
            return volumes;
        }

        public void setVolumes(String volumes) {
            this.volumes = volumes;
        }

        public String getTotalTurnover() {
            return totalTurnover;
        }

        public void setTotalTurnover(String totalTurnover) {
            this.totalTurnover = totalTurnover;
        }

        public String getAveragePrice() {
            return averagePrice;
        }

        public void setAveragePrice(String averagePrice) {
            this.averagePrice = averagePrice;
        }

        public String getBuyer() {
            return buyer;
        }

        public void setBuyer(String buyer) {
            this.buyer = buyer;
        }

        public String getSeller() {
            return seller;
        }

        public void setSeller(String seller) {
            this.seller = seller;
        }

        @Override
        public String toString() {
            return "Huge{" +
                    "code='" + code + '\'' +
                    ", volumes='" + volumes + '\'' +
                    ", totalTurnover='" + totalTurnover + '\'' +
                    ", averagePrice='" + averagePrice + '\'' +
                    ", buyer='" + buyer + '\'' +
                    ", seller='" + seller + '\'' +
                    '}';
        }
    }
    public static class Concept {
        private String name;
        private String code;
        private BigDecimal waveRatio;
        private int upNum;
        private int downNum;
        private BigDecimal netInflow;

        public Concept(String name, String code, BigDecimal waveRatio, int upNum, int downNum, BigDecimal netInflow) {
            this.name = name;
            this.code = code;
            this.waveRatio = waveRatio;
            this.upNum = upNum;
            this.downNum = downNum;
            this.netInflow = netInflow;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getCode() {
            return code;
        }

        public void setCode(String code) {
            this.code = code;
        }

        public BigDecimal getWaveRatio() {
            return waveRatio;
        }

        public void setWaveRatio(BigDecimal waveRatio) {
            this.waveRatio = waveRatio;
        }

        public int getUpNum() {
            return upNum;
        }

        public void setUpNum(int upNum) {
            this.upNum = upNum;
        }

        public int getDownNum() {
            return downNum;
        }

        public void setDownNum(int downNum) {
            this.downNum = downNum;
        }

        public BigDecimal getNetInflow() {
            return netInflow;
        }

        public void setNetInflow(BigDecimal netInflow) {
            this.netInflow = netInflow;
        }

        @Override
        public String toString() {
            return "Concept{" +
                    "name='" + name + '\'' +
                    ", code='" + code + '\'' +
                    ", waveRatio=" + waveRatio +
                    ", upNum=" + upNum +
                    ", downNum=" + downNum +
                    ", netInflow=" + netInflow +
                    '}';
        }
    }
    public static class ZiJin{
        String bigOut;
        String middleOut;
        String smallOut;
        String smallIn ;
        String middleIn;
        String bigIn;
        String zlc;
        String zlr;
        String je;

        String bigOutRatio;
        String middleOutRatio;
        String smallOutRatio;
        String smallInRatio ;
        String middleInRatio;
        String bigInRatio;
        String stockCode;

        public String getStockCode() {
            return stockCode;
        }

        public void setStockCode(String stockCode) {
            this.stockCode = stockCode;
        }

        public String getBigOutRatio() {
            return bigOutRatio;
        }

        public void setBigOutRatio(String bigOutRatio) {
            this.bigOutRatio = bigOutRatio;
        }

        public String getMiddleOutRatio() {
            return middleOutRatio;
        }

        public void setMiddleOutRatio(String middleOutRatio) {
            this.middleOutRatio = middleOutRatio;
        }

        public String getSmallOutRatio() {
            return smallOutRatio;
        }

        public void setSmallOutRatio(String smallOutRatio) {
            this.smallOutRatio = smallOutRatio;
        }

        public String getSmallInRatio() {
            return smallInRatio;
        }

        public void setSmallInRatio(String smallInRatio) {
            this.smallInRatio = smallInRatio;
        }

        public String getMiddleInRatio() {
            return middleInRatio;
        }

        public void setMiddleInRatio(String middleInRatio) {
            this.middleInRatio = middleInRatio;
        }

        public String getBigInRatio() {
            return bigInRatio;
        }

        public void setBigInRatio(String bigInRatio) {
            this.bigInRatio = bigInRatio;
        }

        public String getBigOut() {
            return bigOut;
        }

        public void setBigOut(String bigOut) {
            this.bigOut = bigOut;
        }

        public String getMiddleOut() {
            return middleOut;
        }

        public void setMiddleOut(String middleOut) {
            this.middleOut = middleOut;
        }

        public String getSmallOut() {
            return smallOut;
        }

        public void setSmallOut(String smallOut) {
            this.smallOut = smallOut;
        }

        public String getSmallIn() {
            return smallIn;
        }

        public void setSmallIn(String smallIn) {
            this.smallIn = smallIn;
        }

        public String getMiddleIn() {
            return middleIn;
        }

        public void setMiddleIn(String middleIn) {
            this.middleIn = middleIn;
        }

        public String getBigIn() {
            return bigIn;
        }

        public void setBigIn(String bigIn) {
            this.bigIn = bigIn;
        }

        public String getZlc() {
            return zlc;
        }

        public void setZlc(String zlc) {
            this.zlc = zlc;
        }

        public String getZlr() {
            return zlr;
        }

        public void setZlr(String zlr) {
            this.zlr = zlr;
        }

        public String getJe() {
            return je;
        }

        public void setJe(String je) {
            this.je = je;
        }

        @Override
        public String toString() {
            return "ZiJin{" +
                    "bigOut='" + bigOut + '\'' +
                    ", middleOut='" + middleOut + '\'' +
                    ", smallOut='" + smallOut + '\'' +
                    ", smallIn='" + smallIn + '\'' +
                    ", middleIn='" + middleIn + '\'' +
                    ", bigIn='" + bigIn + '\'' +
                    ", zlc='" + zlc + '\'' +
                    ", zlr='" + zlr + '\'' +
                    ", je='" + je + '\'' +
                    ", bigOutRatio='" + bigOutRatio + '\'' +
                    ", middleOutRatio='" + middleOutRatio + '\'' +
                    ", smallOutRatio='" + smallOutRatio + '\'' +
                    ", smallInRatio='" + smallInRatio + '\'' +
                    ", middleInRatio='" + middleInRatio + '\'' +
                    ", bigInRatio='" + bigInRatio + '\'' +
                    '}';
        }
    }
    public static  void addFund(ZiJin ziJin,int batchNo){
        String sql = "INSERT INTO hhrd.fund (big_out, middle_out, small_out, small_in, middle_in, big_in, zlc, zlr, je, big_out_ratio, middle_out_ratio, small_out_ratio, small_in_ratio, middle_in_ratio, big_in_ratio, record_date, stock_code, batch_no) VALUES " +
                "(?,?, ?, ?,?, ?,?,?,?,?,?,?, ?, ?,?, ?,?, ?);";
        DBHelper db = new DBHelper(sql);
        try {
            db.pst.setString(1, ziJin.getBigOut());
            db.pst.setString(2, ziJin.getMiddleOut());
            db.pst.setString(3, ziJin.getSmallOut());
            db.pst.setString(4, ziJin.getSmallIn());
            db.pst.setString(5, ziJin.getMiddleIn());
            db.pst.setString(6, ziJin.getBigIn());
            db.pst.setString(7, ziJin.getZlc());
            db.pst.setString(8, ziJin.getZlr());
            db.pst.setString(9, ziJin.getJe());
            db.pst.setString(10, ziJin.getBigOutRatio());
            db.pst.setString(11, ziJin.getMiddleOutRatio());
            db.pst.setString(12, ziJin.getSmallOutRatio());
            db.pst.setString(13, ziJin.getSmallInRatio());
            db.pst.setString(14, ziJin.getMiddleInRatio());
            db.pst.setString(15, ziJin.getBigInRatio());
            db.pst.setString(16, DateUtil.getDateyyyyMMdd(new Date()).replace("-",""));
            db.pst.setString(17,ziJin.getStockCode());
            db.pst.setInt(18,batchNo);

            db.pst.executeUpdate();
            db.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static  void addHuge(Huge huge,int batchNo){
        String sql = "INSERT INTO hhrd.huge_order (stock_code, total_volumes, total_turnover, average_price," +
                " buyer, seller, differ,record_date, batch_no) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?,?);";
        DBHelper db = new DBHelper(sql);
        try {
            db.pst.setString(1,huge.getCode());
            db.pst.setString(2,huge.getVolumes());
            db.pst.setString(3,huge.getTotalTurnover());
            db.pst.setString(4,huge.getAveragePrice());
            db.pst.setString(5,huge.getBuyer());
            db.pst.setString(6,huge.getSeller());
            String differ = new BigDecimal(huge.getBuyer()).subtract(new BigDecimal(huge.getSeller())).toString();
            db.pst.setString(7,differ);
            db.pst.setString(8, DateUtil.getDateyyyyMMdd(new Date()).replace("-",""));

            db.pst.setInt(9,batchNo);

            db.pst.executeUpdate();
            db.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static void addTradeStock(String tradeCode,String stockCode){
        String sql = "INSERT INTO hhrd.trade_stock (trade_code, stock_code) VALUES (?, ?);";
        DBHelper db = new DBHelper(sql);
        try {
            db.pst.setString(1,tradeCode);
            db.pst.setString(2,stockCode);
            db.pst.executeUpdate();
            db.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static int getConceptStock(String conceptCode){
        String sql = "select count(*) as num from concept_stock where concept_code = ?;";
        DBHelper db = new DBHelper(sql);
        ResultSet result = null;
        int num = 0;
        try {
            db.pst.setString(1,conceptCode);
            result = db.pst.executeQuery();
            if(result.next()) {
                num = result.getInt("num");
            }
            db.close();
            return num;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }
    public static void addConceptStock(String conceptCode,String stockCode){
        String sql = "INSERT INTO hhrd.concept_stock (concept_code, stock_code) VALUES (?, ?);";
        DBHelper db = new DBHelper(sql);
        try {
            db.pst.setString(1,conceptCode);
            db.pst.setString(2,stockCode);
            db.pst.executeUpdate();
            db.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static  void addConcept(Concept concept,int batchNo){
        String sql = "INSERT INTO hhrd.concept (concept_code, concept_name, concept_wave_ratio, up_num, down_num, net_inflow, batch_no, record_date)" +
                " VALUES (?,?, ?, ?, ?, ?, ?, ?);";
        DBHelper db = new DBHelper(sql);
        try {
            db.pst.setString(1,concept.getCode());
            db.pst.setString(2,concept.getName());
            db.pst.setBigDecimal(3,concept.getWaveRatio());
            db.pst.setInt(4,concept.getUpNum());
            db.pst.setInt(5,concept.getDownNum());
            db.pst.setBigDecimal(6,concept.getNetInflow());
            db.pst.setInt(7,batchNo);
            db.pst.setString(8, DateUtil.getDateyyyyMMdd(new Date()).replace("-",""));
            db.pst.executeUpdate();
            db.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static  void addTrade(Trade trade,int batchNo){
        String sql = "INSERT INTO hhrd.trade (trade_code, trade_name, trade_wave_ratio," +
                " up_num, down_num, net_inflow, batch_no, record_date) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?);";
        DBHelper db = new DBHelper(sql);
        try {
            db.pst.setString(1,trade.getCode());
            db.pst.setString(2,trade.getName());
            db.pst.setBigDecimal(3,trade.getWaveRatio());
            db.pst.setInt(4,trade.getUpNum());
            db.pst.setInt(5,trade.getDownNum());
            db.pst.setBigDecimal(6,trade.getNetInflow());
            db.pst.setInt(7,batchNo);
            db.pst.setString(8, DateUtil.getDateyyyyMMdd(new Date()).replace("-",""));

            db.pst.executeUpdate();
            db.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static  void addStock(Stock stock,int batchNo){
        String sql = "INSERT INTO hhrd.stock_info ( stock_code, stock_name, price, wave_ratio, score," +
                " niu_desc, pj_date, pj_desc, controlDesc,  record_date, batch_no) " +
                "VALUES (?, ?, ?,?, ?, ?, ?,?, ?, ?,?);";
        DBHelper db = new DBHelper(sql);
        try {
            db.pst.setString(1,stock.getCode());
            db.pst.setString(2,stock.getName());
            db.pst.setBigDecimal(3,stock.getPrice());
            db.pst.setBigDecimal(4,stock.getWaveRatio());
            db.pst.setBigDecimal(5,stock.getScore());
            db.pst.setString(6,stock.getDesc());
            db.pst.setString(7,stock.getPjDate());
            db.pst.setString(8,stock.getPjDesc());
            db.pst.setString(9,stock.getControlDesc());
            db.pst.setString(10, DateUtil.getDateyyyyMMdd(new Date()).replace("-",""));
            db.pst.setInt(11,batchNo);

            db.pst.executeUpdate();
            db.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public static class DBHelper {
//        public static final String url = "jdbc:mysql://127.0.0.1:3306/hhrd?characterEncoding=UTF-8&amp;useUnicode=TRUE&amp;autoReconnect=true";
//        public static final String name = "com.mysql.jdbc.Driver";
//        public static final String user = "root";
//        public static final String password = "hhrd";
        public static final String url = "jdbc:mysql://rm-bp1yv16a4qg2lz21fo.mysql.rds.aliyuncs.com:3306/hhrd?useUnicode=true&characterEncoding=UTF-8";
        public static final String name = "com.mysql.jdbc.Driver";
        public static final String user = "root";
        public static final String password = "Ct7630289";

        public Connection conn = null;
        public PreparedStatement pst = null;

        public DBHelper(String sql) {
            try {
                Class.forName(name);//指定连接类型
                conn = DriverManager.getConnection(url, user, password);//获取连接
                pst = conn.prepareStatement(sql);//准备执行语句
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public void close() {
            try {
                this.conn.close();
                this.pst.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
