# 우리집동물친구

## 🔎 개요
Spring Boot를 기반으로 MVC 아키텍처의 온라인 쇼핑몰 웹 페이지를 개발하는 것을 목표로 했습니다. 사용자는 제품을 검색하고 쇼핑 카트에 제품을 추가할 수 있으며, 주문 및 결제/환불할 수 있습니다. 관리자가 제품을 추가 및 관리할 수 있는 기능을 제공합니다. 


## 👩‍👧‍👧 개발 기간 및 인원
2023.08.14 ~ 2023.09.04 (3주)
<li>김담희(PM)</li>
<li>전예라(PL)</li>
<li>김대원</li>
<li>김상훈</li>
<li>이혜령</li>
<li>전수경</li>
<li>강선모</li>


## ✍ 참고 문서
<li> Team PPT: https://drive.google.com/file/d/1JXCwiBcGlhiMQb6xCn4N4x2fpYdPxUO9/view </li>
<li> ERD : https://www.erdcloud.com/d/um2YSc9wPtSd8jqPi </li>
<li> Portfolio : https://drive.google.com/file/d/1owL0CXJV9sRILDWQsQZH_TPSxVz4-_4Y/view?usp=sharing </li>


## 💻 Tech Stack
Back-End : Java + Spring boot + Spring security
<br />
Database : Oracle(OCI) + MyBatis
<br />
Front-End : JSP + html&css + Javascript + jQuery
<br />


## ⚙ 개발환경
OS : window10
<br />
Build : Gradle
<br />
Tools : STS3, VS code, SQLDEVELOPER, Github


## 🔎  주 기능
#### 주요 기능
<ul> 
  <li>회원 CRUD</li>
  <li>소셜 로그인</li>
  <li>관리자 페이지에서 매출 조회 및 상품 CRUD</li>
  <li>상품 주문 및 결제 서비스</li>
  <li>정기결제를 통한 멤버쉽(구독) 서비스</li>
  <li>포인트&쿠폰</li>
  <li>실시간 알림</li>
</ul>

#### 사용한 오픈 API
<ul>
  <li>카카오 로그인 API</li>
  <li>네이버 로그인 API</li>
  <li>카카오 주소검색 API</li>
  <li>아임포트 결제 API</li>
  <li>카카오맵 API</li>
  <li>위치기반 API</li>
  <li>네이버 이메일 API</li>
</ul>


## 👀 Over view
![화면 캡처 2023-09-12 171336](https://github.com/DAMHEE-K/DAMHEE-K/assets/126038575/9b33e1e5-56b9-4953-b517-e99b10c72d8e)
<br />


## 📖 스토리보드
#### 김담희
결제, 정기결제, 장바구니, 주문 CRUD, 구독, 상품조회
<ul>
  <li><a href="https://drive.google.com/file/d/13WOphcLwsRIfdUYdfxyjjFRtMpd0ttex/view?usp=sharing">전체검색</a></li>
  <li><a href="https://drive.google.com/file/d/1RvMFOGjVGbtZROnHsdXBZ5SDJABK3yXB/view?usp=sharing">상품정렬</a></li>
  <li><a href="https://drive.google.com/file/d/1LX0dNYmL7c9rFQhzugRghEtg6dWymPoy/view?usp=sharing">장바구니</a></li>
  <li><a href="https://drive.google.com/file/d/16660EhuH9Tbh03fYrva7MnvlHjkk_x_e/view?usp=sharing">상품구매</a></li>
  <li><a href="https://drive.google.com/file/d/14NypNyXSWsmBhBjqJ12hfEBxZY10vlyd/view?usp=sharing">상품결제</a></li>
  <li><a href="https://drive.google.com/file/d/1Z38oN_e9d9u4g-PdBZ4xzevE6NS_ySAZ/view?usp=sharing">주문확인 및 결제취소</a></li>
  <li><a href="https://drive.google.com/file/d/1IO9SxdHSztuC8jQB8TDggaHcrnq13V05/view?usp=sharing">마이페이지 및 구독</a></li>
</ul>

#### 전예라
웹 디자인, 쿠폰, 포인트, 이메일 API, QNA 회원/관리자 CRUD, 이용약관
<ul>
  <li><a href="https://drive.google.com/file/d/1dYBA0rNdZYeePq2pFeOLavzRAPF5TwhI/view?usp=sharing">쿠폰</li>
  <li><a href="https://drive.google.com/file/d/1CP9niuxq52DJAmY6wTuaEX027ev3eOaz/view?usp=sharing">포인트</li>
  <li><a href="https://drive.google.com/file/d/1P2z7fCZeyc2lBaHyBGe4BEi5Yjyl5OmZ/view?usp=sharing">회원가입 이메일 인증 API</li>
  <li><a href="https://drive.google.com/file/d/1h-5bBrOX62TdK_i02j-TACLdYEDjcrnJ/view?usp=sharing">답변 이메일 전송 API</li>
  <li><a href="https://drive.google.com/file/d/18Z9GoSWqfxth9scj5CCaoPxDAWfTogXJ/view?usp=sharing">Q&A 회원 CRUD</li>
  <li><a href="https://drive.google.com/file/d/1ROliHPpR___A8kRH64cvd0nHFV5bKT1e/view?usp=sharing">Q&A 관리자 CRUD</li>
  <li><a href="https://drive.google.com/file/d/1prvlyLEq0BN-93VoNVhilKDHPvJzrqgZ/view?usp=sharing">이용약관</li>
</ul>

#### 김대원
관리자 페이지 CRUD, 실시간알림
<ul>
  <li><a href="https://drive.google.com/file/d/1ROKcnH1qj3AEAp0os7vAkxHo8gYhlyRx/view?usp=sharing">알림</a></li>
  <li><a href="https://drive.google.com/file/d/1UomDY5qXZBf2nugLmcx2f3fB8Of8_-dB/view?usp=sharing">관리자페이지</a></li>
  <li><a href="https://drive.google.com/file/d/1hEvN6mhnEpAdlX-1EyBNH0DBNf2a7B0N/view?usp=sharing">전체회원 조회</a></li>
  <li><a href="https://drive.google.com/file/d/129RRL3wiYm5K9eb5dgL11vNi8Mvr4gob/view?usp=sharing">구독회원 조회</a></li>
  <li><a href="https://drive.google.com/file/d/1RT3LlL_21RsjvJGKyjfn2Nq3wJMtj5_n/view?usp=sharing">주문 조회</a></li>
  <li><a href="https://drive.google.com/file/d/1IxxoP1lP1noCX4noSFoRWXjUDd0Xu-9B/view?usp=sharing">상품별 매출 통계</a></li>
  <li><a href="https://drive.google.com/file/d/15a7Rfn8LZZ2wFUMa0IBYzRh_RsAjoeXp/view?usp=sharing">날짜별 매출 통계</a></li>
</ul>

#### 이혜령
리뷰 CRUD, 병원조회
<ul> 
  <li><a href="https://drive.google.com/file/d/17oKwylVQEUVWDjXHfqOgoK6UkrJ5cYXl/view?usp=drive_link">리뷰 CRUD</li> 
  <li><a href="https://drive.google.com/file/d/1otOuHM0aakB7MLvNBQAgSURlUZMsU3gG/view?usp=drive_link">병원조회</li> 
</ul>

#### 전수경
상품 등록/수정/삭제
<ul> 
    <li><a href="https://drive.google.com/file/d/13u7YAd-tmjEYmGs4SCaSzgGpV8c8TCqx/view?usp=sharing">(관리자)상품 등록</li>
    <li><a href="https://drive.google.com/file/d/1_YtTB3V6z4uCm8lwbmRHCnPfcAL5UnYz/view?usp=sharing">(관리자)상품 수정 및 삭제</li>
</ul>

#### 강선모
찜 기능, 펫 CRUD
<ul> 
  <li><a href="https://drive.google.com/file/d/1dFLEZQpOFn-N336lfIsjgKOj5Q2z78mj/view?usp=sharing">찜 기능</a></li>
  <li><a href="http://localhost:8080/pet/pet/petDetail.do?petId=1">펫 상세조회</a></li>
</ul>

#### 김상훈
회원 CRUD, 로그인, 임시비밀번호 이메일 API, 주소 API
<ul> 
  <li><a href="https://drive.google.com/file/d/1nkntQ-kLKxSXVw0X_sfsO8tqrjQa97UI/view?usp=drive_link">로그인</a></li>
  <li><a href="https://drive.google.com/file/d/1hl75xkFLWpqrIcI9P-PUdriKR_5mQjFB/view?usp=drive_link">회원가입</a></li>
  <li><a href="https://drive.google.com/file/d/1hl75xkFLWpqrIcI9P-PUdriKR_5mQjFB/view?usp=drive_link">주소검색</a></li>
  <li><a href="https://drive.google.com/file/d/1hFdYAMi4aOQ4f744k4dA-hb18qmGyEqP/view?usp=drive_link">아이디 찾기</a></li>
  <li><a href="https://drive.google.com/file/d/1uqHKVSfU8n6Bw4Avnf8bCt6hNkNY_3A1/view?usp=drive_link">임시비밀번호 메일전송</a></li>
</ul>


