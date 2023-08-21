package com.shop.app.order.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.shop.app.order.dto.OrderAdminListDto;
import com.shop.app.order.entity.Order;
import com.shop.app.order.repository.OrderRepository;

public interface OrderService {

	int insertOrder(Order order);

	// 관리자페이지 주문조회(대원)
	List<OrderAdminListDto> adminOrderList();

	// 2. db에서 주문 정보 가져오기 (예라)
	Order findByOrder(Order order);

	
	
}
