package com.hhrd.utils;

import com.google.common.collect.Maps;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by zhangyiqun on 2016/9/17.
 */
public class DateUtil {

    private static Logger logger = LoggerFactory.getLogger(DateUtil.class);

    public static final String yyyymmddhhmmss = "yyyy-MM-dd HH:mm:ss";
    public static final String yyyymmddC = "yyyy年MM月dd日";
    public static final String yyyymmddhhmm = "yyyy-MM-dd HH:mm";
    public static final String yyyymmdd = "yyyy-MM-dd";
    public static final String yyyymmddnointer = "yyyyMMdd";
    public static final String ddmmyyyy = "dd-MM-yyyy";
    public static final String eeemmmddyyyy = "EEE MMM. dd yyyy";
    public static final String birthdayString = "dd/MM/yyyy";
    public static final String onlyyyymmddhhmmss = "yyyyMMddHHmmss";
    public static final String onlyyyymmddhhmmssSSS = "yyyyMMddHHmmssSSS";
    public static final String UPDATE_TIME_PATTERN = "yyyy/MM/dd HH:mm";
    public static final long ONE_MIN = 1 * 60 * 1000;
    public static final long ONE_HOUR = 1 * 60 * 60 * 1000;
    public static final long ONE_DAY = 1 * 24 * 60 * 60 * 1000;
    private final static TimeZone timeZone = TimeZone.getTimeZone("GMT+08:00");

    public final static ThreadLocal<HashMap<String, SimpleDateFormat>> DATE_FORMAT_MAP =
            new ThreadLocal<HashMap<String, SimpleDateFormat>>() {
                protected synchronized HashMap<String, SimpleDateFormat> initialValue() {
                    return Maps.newHashMap();
                }
            };

    public static SimpleDateFormat getFormat(String format) {
        SimpleDateFormat sdf = DATE_FORMAT_MAP.get().get(format);
        if (sdf == null) {
            sdf = new SimpleDateFormat(format);
            DATE_FORMAT_MAP.get().put(format, sdf);
        }
        return sdf;
    }

    public static String format(Date date, String format) {
        SimpleDateFormat fmt = getFormat(format);
        synchronized (fmt) {
            return fmt.format(date);
        }
    }

    public static long getCurDate() {
        Date now = new Date();
        return now.getTime();
    }

    public static int getIntervalHour(long _time1, long _time2) {
        long _time = Math.round(_time1 - _time2);
        int hour = Math.round(_time / ONE_HOUR);
        return hour;
    }

    public static int getIntervalMin(long _time1, long _time2) {
        long _time = Math.round(_time1 - _time2);
        int hour = Math.round(_time / ONE_MIN);
        return hour;
    }

    public static int getNowHour() {
        Calendar time = Calendar.getInstance();
        int hour = time.get(Calendar.HOUR_OF_DAY);
        return hour;
    }

    public static String getDateYMDHMS(Date date) {
        SimpleDateFormat fmt = getFormat(yyyymmddhhmmss);
        synchronized (fmt) {
            return fmt.format(date);
        }
    }

    public static String getDateyyyyMMddC(Date date) {
        SimpleDateFormat fmt = getFormat(yyyymmddC);
        synchronized (fmt) {
            return fmt.format(date);
        }

    }

    public static String getDateyyyyMMdd(Date date) {
        SimpleDateFormat fmt = getFormat(yyyymmdd);
        synchronized (fmt) {
            return fmt.format(date);
        }

    }

    public static Date getDatehms(String date_value) {
        Date date = null;
        try {
            SimpleDateFormat fmt = getFormat(yyyymmddhhmmss);
            synchronized (fmt) {
                date = fmt.parse(date_value);
            }
        } catch (ParseException e) {
            logger.error("format date error the string {}. errpr {}", date_value, e);
        }
        return date;
    }

    public static String getNextNDay(String beginDate, int n) {
        String nextDate = beginDate;
        Calendar c = Calendar.getInstance();

        try {
            SimpleDateFormat sdf = getFormat(yyyymmddhhmmss);
            synchronized (sdf) {
                c.setTime(sdf.parse(beginDate));
            }
            c.add(Calendar.DATE, n);
            synchronized (sdf) {
                nextDate = sdf.format(c.getTime());
            }
        } catch (ParseException e) {
            logger.error("error beginDate=" + beginDate + ", n=" + n, e);
        }

        return nextDate;
    }

    /**
     * 距离分钟
     *
     * @param startdate
     * @param enddate
     * @return
     * @throws Exception
     */
    public static int getIntervalMinutes(String startdate, String enddate) throws Exception {
        SimpleDateFormat sdf = getFormat(yyyymmddhhmmss);
        Date bDate = null;
        Date eDate = null;
        synchronized (sdf) {
            bDate = sdf.parse(startdate);
            eDate = sdf.parse(enddate);
        }
        Calendar d1 = new GregorianCalendar();
        d1.setTime(bDate);
        Calendar d2 = new GregorianCalendar();
        d2.setTime(eDate);

        long ei = d2.getTimeInMillis() - d1.getTimeInMillis();
        int dd = (int) (ei / (1000 * 60));

        return dd;
    }

    public static Calendar convertCalendar(String _dateValue) {
        Date _date = convertDate(_dateValue);
        if (_date == null) {
            return null;
        }
        Calendar ca = Calendar.getInstance();
        ca.setTime(_date);
        return ca;
    }

    public static Date addDay(String _dateValue, int _day) {
        Calendar c = convertCalendar(_dateValue);
        c.add(Calendar.DAY_OF_YEAR, _day);
        return c.getTime();
    }

    public static Date addDay(Date _date, int _day) {
        if (_day == 0) {
            return _date;
        }
        Calendar c = Calendar.getInstance();
        c.setTime(_date);
        c.add(Calendar.DAY_OF_YEAR, _day);
        return c.getTime();
    }

    public static Date addHour(String _dateValue, int _hour) {
        Calendar c = Calendar.getInstance();
        Date _date = convertDate(_dateValue);
        c.setTime(_date);
        c.add(Calendar.HOUR_OF_DAY, _hour);
        return c.getTime();
    }

    public static Date addHour(Date _date, int _hour) {
        Calendar c = Calendar.getInstance();
        c.setTime(_date);
        c.add(Calendar.HOUR_OF_DAY, _hour);
        return c.getTime();
    }

    public static Date addMinites(Date _date, int minites) {
        Calendar c = Calendar.getInstance();
        c.setTime(_date);
        c.add(Calendar.MINUTE, minites);
        return c.getTime();
    }

    public static String addHourByNow(int _hour) {
        Calendar c = Calendar.getInstance();
        c.add(Calendar.HOUR_OF_DAY, _hour);
        return getDateYMDHMS(c.getTime());
    }


    public static Date convertDate1(String _dateValue) {
        Date date = null;
        if (StringUtils.isNotEmpty(_dateValue)) {
            try {
                SimpleDateFormat sdf = getFormat(yyyymmdd);
                synchronized (sdf) {
                    date = sdf.parse(_dateValue);
                }
            } catch (Exception e) {
                logger.warn("DateTool: " + _dateValue, e);
            }
        }
        return date;
    }

    public static Date convertDate2(String _dateValue) {
        Date date = null;
        if (StringUtils.isNotEmpty(_dateValue)) {
            try {
                SimpleDateFormat sdf = getFormat(yyyymmddhhmm);
                synchronized (sdf) {
                    date = sdf.parse(_dateValue);
                }
            } catch (Exception e) {
                logger.warn("DateTool: " + _dateValue);
            }
        }
        return date;
    }

    public static Date convertDate3(String _dateValue) {
        Date date = null;
        if (StringUtils.isNotEmpty(_dateValue)) {
            try {
                SimpleDateFormat sdf = getFormat(yyyymmddhhmmss);
                synchronized (sdf) {
                    date = sdf.parse(_dateValue);
                }
            } catch (Exception e) {
                logger.warn("DateTool: " + _dateValue, e);
            }
        }
        return date;
    }

    public static Date convertDate(String _dateValue) {
        if (_dateValue.length() > 10) {
            return convertDate2(_dateValue);
        } else {
            return convertDate1(_dateValue);
        }
    }

    public static boolean afterCurrentDate(String _dateValue) {
        Date _currentDate = new Date();
        Date _date = convertDate(_dateValue);
        return _date.after(_currentDate);
    }

    public static boolean beforeCurrentDate(String _dateValue) {
        Date _currentDate = new Date();
        Date _date = convertDate(_dateValue);
        return _date.before(_currentDate);
    }

    public static String getNextNDay(int day) {
        String date = null;
        try {
            Calendar now = Calendar.getInstance();
            now.add(Calendar.DAY_OF_MONTH, day);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            date = sdf.format(now.getTime());
        } catch (Exception e) {
            logger.error("get next day error. ", e);
        }
        return date;
    }

    /**
     * 计算date1和date2之间的跨天数 (默认取绝对值)
     *
     * @param date1 格式： yyyy-MM-dd
     * @param date2 格式： yyyy-MM-dd
     * @return
     */
    public static int daysInterval(String date1, String date2) {
        return daysInterval(date1, date2, true);
    }

    /**
     * 计算date1和date2之间的跨天数
     *
     * @param date1 格式： yyyy-MM-dd
     * @param date2 格式： yyyy-MM-dd
     * @param abs   是否对跨天数取绝对值
     * @return
     */
    public static int daysInterval(String date1, String date2, boolean abs) {
        if (StringUtils.isEmpty(date1) || StringUtils.isEmpty(date2)) {
            return 0;
        }
        try {
            Date d1 = convertDate1(date1);
            Date d2 = convertDate1(date2);
            long t1 = d1.getTime();
            long t2 = d2.getTime();
            long interval = t2 - t1;
            if (abs) {
                interval = Math.abs(interval);
            }
            return (int) (interval / ONE_DAY);
        } catch (Exception e) {
            return 0;
        }
    }

    public static int getHourDelta(String date1, String date2) {
        if (StringUtils.isEmpty(date1) || StringUtils.isEmpty(date2)) {
            return 0;
        }
        try {
            Date d1 = convertDate2(date1);
            Date d2 = convertDate2(date2);
            long t1 = d1.getTime();
            long t2 = d2.getTime();
            return getIntervalHour(t1, t2);
        } catch (Exception e) {
            return 0;
        }
    }

    public static int daysInterval(Date d1, Date d2) {
        try {
            long t1 = d1.getTime();
            long t2 = d2.getTime();
            long interval = Math.abs(t2 - t1);
            return (int) (interval / ONE_DAY);
        } catch (Exception e) {
            return 0;
        }
    }

    public static boolean compareTime(String date1, String date2) {
        if (StringUtils.isEmpty(date1) || StringUtils.isEmpty(date2)) {
            return false;
        }
        try {
            Date d1 = convertDate2(date1);
            Date d2 = convertDate2(date2);
            return d1.before(d2);
        } catch (Exception e) {
            return false;
        }
    }


    public static String getDate(String dateValue) {
        String dateStr = null;
        if (StringUtils.isNotEmpty(dateValue)) {
            try {
                SimpleDateFormat sdf = getFormat(yyyymmddhhmmss);
                Date date = null;
                synchronized (sdf) {
                    date = sdf.parse(dateValue);
                }
                sdf = getFormat(yyyymmddhhmm);
                synchronized (sdf) {
                    dateStr = sdf.format(date);
                }
            } catch (Exception e) {
                logger.warn("DateTool: " + dateValue, e);
                dateStr = dateValue;
            }
        }
        return dateStr;
    }


    public static String getCurDateDefault() {
        SimpleDateFormat simpleDateFormat = DateUtil.getFormat(yyyymmddhhmmss);
        Date date = new Date();
        synchronized (simpleDateFormat) {
            return simpleDateFormat.format(date);
        }
    }

    public static String getCurDateYYYYMMDDHHMMSS() {
        SimpleDateFormat simpleDateFormat = DateUtil.getFormat(onlyyyymmddhhmmss);
        Date date = new Date();
        synchronized (simpleDateFormat) {
            return simpleDateFormat.format(date);
        }
    }

    public static String getCurDateyyyyMMddHHmmssSSS() {
        SimpleDateFormat simpleDateFormat = DateUtil.getFormat(onlyyyymmddhhmmssSSS);
        Date date = new Date();
        synchronized (simpleDateFormat) {
            return simpleDateFormat.format(date);
        }
    }


    /**
     * 得到昨天的日期
     *
     * @return 格式：xxxx-xx-xx
     */
    public static String getYesterdayDate() {
        String yesterday = addHourByNow(-24);
        yesterday = yesterday.substring(0, 10);
        return yesterday;
    }


    /**
     * 返回该日期起点
     *
     * @param date xxxx-xx-xx
     * @return xxxx-xx-xx 00:00:00
     */
    public static String getDateStart(String date) {
        return date + " 00:00:00";
    }

    /**
     * 返回该日期的结束
     *
     * @param date 2015-08-17
     * @return 2015-08-18 00:00:00
     */
    public static String getDateEnd(String date) {
        Date tmpDate = convertDate(date);
        Date dayafter = addDay(tmpDate, 1);
        return getDateYMDHMS(dayafter);
    }

    /**
     * 获取昨天的起始时间，比如今天是 2015-08-20
     * 返回  2015-08-19 00:00:00
     *
     * @return
     */
    public static String getYesterdayStart() {
        String yesterday = addHourByNow(-24);
        String yesterdayBegin = yesterday.substring(0, 10) + " 00:00:00";
        return yesterdayBegin;
    }

    /**
     * 返回昨天的结束时间，比如今天是2015-08-20
     * 返回 015-08-20 00:00:00
     *
     * @return
     */
    public static String getYesterdayEnd() {
        String dateYMDHMS = getDateYMDHMS(new Date());
        String yesterdayEnd = dateYMDHMS.substring(0, 10) + " 00:00:00";
        return yesterdayEnd;
    }

    public static String formatShort(Date date) {
        return getFormat(yyyymmddnointer).format(date);
    }


    public static void main(String[] args) throws Exception {
        /*System.out.println(DateUtil.getIntervalMinutes("2016-09-22 09:00:00", "2016-09-23 00:00:00"));
        System.out.println(DateUtil.getNextNDay("2016-09-23 00:00:00", 1));*/
        BigDecimal one = new BigDecimal("200000");
        BigDecimal two = new BigDecimal("12");
//        Date s = DateUtil.addMinites(DateUtil.getDatehms("2016-10-25 00:00:00"), -10);
//        System.out.println(new Date());
//        System.out.println(s);
//        System.out.println(DateUtil.insStartTime(1));

        System.out.println(getDateyyyyMMdd(new Date()));

    }

    public static Date insStartTime(int day) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.add(Calendar.DAY_OF_YEAR, day);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE, 0);
        calendar.set(Calendar.SECOND, 0);

        return calendar.getTime();
    }

    public static String format(Timestamp date, String format) {
        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat(format);
            return dateFormat.format(date);
        } catch (Exception e) {
            logger.error("转换Timestamp格式日期发生异常,date:{},format:{}", date, format, e);
        }
        return null;
    }

    public static Date parse(String dateString, String format) {
        try {
            SimpleDateFormat dateFormat = new SimpleDateFormat(format);
            return dateFormat.parse(dateString);
        } catch (Exception e) {
            logger.error("转换String日期成Date方法发生异常,dateString:{},format:{}", dateString, format, e);
        }
        return null;
    }

    public static Date getNowTime() {
        return new Date();
    }
}