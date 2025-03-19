package com.sist.mybatis;
import java.util.*;
public class main {

	public main() {
		List<EmpVO> list = EmpDAO.empListData();
		for(EmpVO vo : list) {
			System.out.println(vo.getEmpno() + " "
					+ vo.getEname() + " "
					+ vo.getJob() + " "
					+ vo.getHiredate() + " "
					+ vo.getSal() + " "
					);
		}
	}
	
}
