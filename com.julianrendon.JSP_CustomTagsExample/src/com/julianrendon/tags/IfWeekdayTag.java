package com.julianrendon.tags;

import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

@SuppressWarnings("serial")
public class IfWeekdayTag extends TagSupport {

	@Override
	public int doStartTag() throws JspException {
		Calendar currentDate = new GregorianCalendar();
		int day = currentDate.get(Calendar.DAY_OF_WEEK);
		if (day == Calendar.SATURDAY || day == Calendar.SUNDAY) {
			return SKIP_BODY;
		} else {
			return EVAL_BODY_INCLUDE;
		}
	}

}
