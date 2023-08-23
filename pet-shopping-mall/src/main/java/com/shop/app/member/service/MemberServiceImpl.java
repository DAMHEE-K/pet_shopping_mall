package com.shop.app.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.shop.app.member.dto.MemberCreateDto;
import com.shop.app.member.dto.MypageDto;
import com.shop.app.member.entity.Member;
import com.shop.app.member.repository.MemberRepository;
import com.shop.app.order.dto.OrderHistoryDto;
import com.shop.app.order.repository.OrderRepository;
import com.shop.app.point.entity.Point;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberRepository memberRepository;
	
	@Autowired
	private OrderRepository orderRepository;

	@Override
	public int insertMember(MemberCreateDto member) {
		return memberRepository.insertMember(member);
	}

	@Override
	public Member findMemberById(String memberId) {
		return memberRepository.findMemberById(memberId);
	}

	@Override
	public int updateMember(Member member) {
		return memberRepository.updateMember(member);
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserDetails memberDetails = memberRepository.loadUserByUsername(username);
		log.debug("memberDetails = {}", memberDetails);
		if (memberDetails == null)
			throw new UsernameNotFoundException(username);
		return memberDetails;
	}

	@Override
	public int deleteMember(String memberId) {
		return memberRepository.deleteMember(memberId);
		
	}

	@Override
	public String memberSearchId(String name, String email) {
		String result = "";
		try {
		 result= memberRepository.memberSearchId(name, email);
		} catch(Exception e) {
			e.printStackTrace();
		}
		return result ;
		
	}

	/**
	 * 마이페이지 조회
	 */
	@Override
	public MypageDto getMyPage(String memberId) {
		MypageDto myPage = memberRepository.getMyPage(memberId);
		List<OrderHistoryDto> histories = orderRepository.getOrderListByPeriod(memberId, 1);
		myPage.setOrderHistory(histories);
		return myPage;
	}


}
