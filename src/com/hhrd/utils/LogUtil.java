package com.hhrd.utils;

import java.io.IOException;
import java.util.Properties;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.log4j.PropertyConfigurator;

public class LogUtil
{
    private static final Log logger = LogFactory.getLog(LogUtil.class);
    public static final String LOG_SPLIT = " ";
    public static final String LOG_MARKS_QUOTATION = "\"";

    static
    {
        Properties prop = new Properties();
        try
        {
            prop.load(LogUtil.class.getClassLoader().getResourceAsStream("properties/log4j.properties"));
        }
        catch (IOException localIOException) {}
        PropertyConfigurator.configure(prop);
    }

    public static String getLogStr(String functionName, String status, Object inputParams, Object outputParams, String exceptionMsg)
    {
        StringBuffer sb = new StringBuffer();
        sb.append(functionName).append(" ");

        sb.append(status).append(" ");

        sb.append("\"");
        sb.append(inputParams != null ? inputParams.toString() : "");
        sb.append("\"");
        sb.append(" ");

        sb.append("\"");
        sb.append(outputParams != null ? outputParams.toString() : "");
        sb.append("\"");
        sb.append(" ");

        sb.append("\"");
        sb.append(exceptionMsg != null ? exceptionMsg : "");
        sb.append("\"");
        return sb.toString();
    }

    public void write(String level, String msg)
    {
        switch (level)
        {
            case "INFO":
                logger.info(msg);
                break;
            case "ERROR":
                logger.error(msg);
                break;
            case "DEBUG":
                logger.debug(msg);
                break;
            case "TRACE":
                logger.trace(msg);
                break;
            case "FATAL":
                logger.fatal(msg);
                break;
            default:
                logger.info(msg);
        }
    }

    public void write(String level, String channelid, String reqid, String msg)
    {
        switch (level)
        {
            case "INFO":
                logger.info("[channelid=" + channelid + ", reqid=" + reqid + "] - " + msg);
                break;
            case "ERROR":
                logger.error("[channelid=" + channelid + ", reqid=" + reqid + "] - " + msg);
                break;
            case "DEBUG":
                logger.debug("[channelid=" + channelid + ", reqid=" + reqid + "] - " + msg);
                break;
            case "TRACE":
                logger.trace("[channelid=" + channelid + ", reqid=" + reqid + "] - " + msg);
                break;
            case "FATAL":
                logger.fatal("[channelid=" + channelid + ", reqid=" + reqid + "] - " + msg);
                break;
            default:
                logger.info(msg);
        }
    }

    public void write(String level, Boolean msg)
    {
        write(level, "" + msg);
    }

    public void write(String channelid, String reqid, String level, Boolean msg)
    {
        write(level, channelid, reqid, msg + "");
    }

    public void write(String level, Integer msg)
    {
        write(level, "" + msg);
    }

    public void write(String level, String channelid, String reqid, Integer msg)
    {
        write(level, channelid, reqid, msg + "");
    }

    public void write(String level, Exception ex)
    {
        StringBuffer exInfo = new StringBuffer("");
        for (StackTraceElement ele : ex.getStackTrace()) {
            exInfo.append("at " + ele.getClassName() + "." + ele.getMethodName() + "(" + ele.getFileName() + ":" + ele
                    .getLineNumber() + ")\n");
        }
        logger.error(ex + "\n" + exInfo.toString());
    }

    public void write(String level, Throwable t)
    {
        StringBuffer exInfo = new StringBuffer("");
        for (StackTraceElement ele : t.getStackTrace()) {
            exInfo.append("at " + ele.getClassName() + "." + ele.getMethodName() + "(" + ele.getFileName() + ":" + ele
                    .getLineNumber() + ")\n");
        }
        logger.error(t + "\n" + exInfo.toString());
    }

    public void write(String level, String channelid, String reqid, Exception ex)
    {
        StringBuffer exInfo = new StringBuffer("");
        for (StackTraceElement ele : ex.getStackTrace()) {
            exInfo.append("at " + ele.getClassName() + "." + ele.getMethodName() + "(" + ele.getFileName() + ":" + ele
                    .getLineNumber() + ")\n");
        }
        logger.error("[channelid=" + channelid + ", reqid=" + reqid + "] " + ex + "\n" + exInfo.toString());
    }

    public static LogUtil getLogger()
    {
        return new LogUtil();
    }
}
