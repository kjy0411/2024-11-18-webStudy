package com.sist.controller;
import java.util.*;
import java.io.*;
public class FileReader {
	public static List<String> componentScan(String path, String pack) {
		List<String> list=new ArrayList<String>();
		try {
			path=path+File.separator+pack.replace(".", File.separator);
			File dir=new File(path);
			File[] files=dir.listFiles();
			for(File f:files) {
				String name=f.getName();
				String ext=name.substring(name.lastIndexOf(".")+1);
				if(ext.equals("class")) {
					String clsName=name.substring(0,name.lastIndexOf("."));
					String packname=pack+"."+clsName;
					list.add(packname);
				}
			}
		} catch (Exception e) {}
		return list;
	}
}
