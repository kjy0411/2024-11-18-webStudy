package com.sist.model;
import com.sist.ann.*;
public class GoodsModel {
	@RequestMapping("goods/list.do")
	public void goodsListData() {
		System.out.println("상품 목록 출력");
	}
	@RequestMapping("goods/detail.do")
	public void goodsDetailData() {
		System.out.println("상품 상세보기 출력");
	}
	@RequestMapping("goods/insert.do")
	public void goodsInsert() {
		System.out.println("상품 데이터 추가");
	}
	@RequestMapping("goods/update.do")
	public void goodsDelete() {
		System.out.println("상품 데이터 수정");
	}
	@RequestMapping("goods/delete.do")
	public void goodsUpdate() {
		System.out.println("상품 데이터 삭제");
	}
}
