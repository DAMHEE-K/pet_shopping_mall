package com.shop.app.point.service;

import java.util.List;

import com.shop.app.point.entity.Point;

public interface PointService	 {

	// 포인트 전체 조회 (예라)
	List<Point> findPointAll(Point point);

	// 회원가입 포인트 저장 (예라)
	int givePointsForSignUp(Point point);

}
