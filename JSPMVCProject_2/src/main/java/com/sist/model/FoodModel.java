package com.sist.model;
import com.sist.ann.*;
public class FoodModel {
	@RequestMapping("food/list.do")
	public void foodListData() {
		System.out.println("맛집 목록 출력");
	}
	@RequestMapping("food/detail.do")
	public void foodDetailData() {
		System.out.println("맛집 상세보기 출력");
	}
	@RequestMapping("food/insert.do")
	public void foodInsert() {
		System.out.println("맛집 데이터 추가");
	}
	@RequestMapping("food/update.do")
	public void foodDelete() {
		System.out.println("맛집 데이터 수정");
	}
	@RequestMapping("food/delete.do")
	public void foodUpdate() {
		System.out.println("맛집 데이터 삭제");
	}
}
