package com.syntis.util;

import org.apache.commons.lang3.builder.ToStringBuilder;

public class Util {
	public static void printBean(Object bean) {
		System.out.println(ToStringBuilder.reflectionToString(bean));
	}
}
