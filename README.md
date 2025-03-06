## 📛프로젝트명 - 청년책방<br>
#### 책을 읽고 싶어지는 책방 사이트

<br/>

## 🚧프로젝트 소개

예스24, 알라딘과 같은 서점 사이트

## 👩🏻‍💻 프로젝트 참여 인원

#### Design - 1명
#### Full Stack - 2명

## ✨ 기술 스택

- 기획디자인 : <img src="https://img.shields.io/badge/figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white">

- 풀스택 개발 : <img src="https://img.shields.io/badge/HTML5-E34F26?style=flat-square&logo=html5&logoColor=white"> <img src="https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=css3&logoColor=white"> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black"> ![JSP](https://img.shields.io/badge/JSP-2.3-blue) ![Tomcat](https://img.shields.io/badge/Tomcat-9.0-yellow)
- ETC : <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">

## ✨ 서비스 핵심 기능

**`로그인 & 회원가입`**

<br /> 

  - 회원 로그인, 비회원 로그인으로 로그인 방식을 나눴습니다.
  - 회원은 아이디/비밀번호로 로그인, 비회원은 주문번호/비밀번호로 로그인할 수 있습니다.
  - 회원가입, id/pw 찾기 기능을 구현했습니다.

**`메인화면`**

<br /> 

  - 책을 조회순으로 정렬 후 상위 몇 개의 책을 랜덤으로 추천해줍니다.
  - 책 이름을 기준으로 검색했을 때 책을 보여주는 검색창을 구현했습니다.
  - 도서별로 카테고리를 나눠 클릭 시 해당 카테고리 책 목록을 보여줍니다.
  - 로그인, 마이페이지, 북클럽으로 이동할 수 있습니다.

**`책 상세보기`**

<br /> 

  - 장바구니 담기, 바로 결제로 이동할 수 있습니다.
  - 이미지, 줄거리 등 상세 내용을 보여줍니다.

**`장바구니, 결제정보, 구매완료`**

<br /> 

  - 주문할 물품을 선택하여 해당 수량만큼 주문할 수 있습니다.
  - 배송지 정보를 입력하고 결제수단을 선택하여 결제할 수 있습니다.
  - 완료된 주문을 확인할 수 있습니다.

**`북클럽`**

<br /> 

  - 책을 추천받거나 추천하거나 책에 대해 얘기를 나눌 수 있는 게시판이 있습니다.
  - 조회수 별로 정렬되고 댓글을 달 수 있습니다.

**`마이페이지`**

<br /> 

  - 주문 내역을 확인할 수 있습니다.
  - 회원 정보 수정과 탈퇴를 진행할 수 있습니다.

## 🖼️ 디자인

- 메인화면

<center><img src ="https://github.com/user-attachments/assets/59c4b607-b3af-4b3c-8a2f-48c784e647f2" /></center>

- 책 상세보기

<center><img src ="https://github.com/user-attachments/assets/f3c9cff8-8a9a-495d-921e-1e7814e79ee5" /></center>

- 북클럽

<center><img src ="https://github.com/user-attachments/assets/d0fd93d4-7437-4bdf-9089-d67ac3190e0a" /></center>

### 이하 페이지 생략
------

## 🍆 본인이 구현한 기능

- 로그인, 회원가입, id/pw 찾기 : 퍼블리싱 및 form 데이터 형식을 이용해 DB에서 로그인 , 회원가입, ID/PW 찾기 기능 구현 ( 비회원은 주문번호/비밀번호로 로그인이 가능한 기능 구현 )

- 마이페이지 : 장바구니에 담긴 목록을 볼 수 있고 결제하기 창으로 이전할 수 있으며 회원 DB를 조회 , 수정 , 삭제 할 수 있는 기능 구현

- 메인 페이지 - 책 목록 : 책 목록을 조회하며 조회순으로 정렬 후 상위 몇 개의 책을 랜덤으로 추천하는 기능 구현

- 메인 페이지 - 책 검색 : 제목을 기준으로 책 목록을 조회하며 책 상세 페이지로 이전할 수 있는 기능 구현

- 북클럽 - 게시글 : 게시글을 조회, 추가, 수정, 삭제할 수 있는 기능 구현

- 북클럽 - 댓글 : 댓글을 조회, 추가, 수정, 삭제할 수 있는 기능 구현

## 🚩 트러블 슈팅

### 1. 문제 - Tomcat 서버 설정 오류
#### 상황
- JSP 파일을 실행 전, Tomcat 서버 테스트 중 문제 발생
- 서버가 열리지 않아 JSP 파일을 확인할 수 없는 상황 발생

#### 해결 방법
- Tomcat admin port의 포트 번호를 수정하여 문제 해결

#### 배운 점 
- Tomcat 서버 설치부터 JRE, 포트 설정을 하면서 서버 개념에 대해 알게 되었다.
