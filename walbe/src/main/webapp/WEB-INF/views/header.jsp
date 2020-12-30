<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<Script src="<c:url value="/js/jquery-3.5.1.min.js" />"></script>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.min.css" />" >
	<!-- JS -->
	<Script src="<c:url value="/js/bootstrap.min.js" />"></script>
	</head>
	
	<style>
body { width: 1000px; margin: 0 auto;}
.zeta-menu { margin: 0; padding: 0;   background: #696969;
  display: inline-block;
  width: 100%;
}
.zeta-menu li {
  float: left;
  list-style:none;
  position: relative;
}
.zeta-menu li:hover { background: BLACK; }
.zeta-menu li:hover>a { color: hotpink; }
.zeta-menu a {
  color: white;
  display: block;
  padding: 10px 20px;
  text-decoration: none;
}
.zeta-menu ul {
  background: #eee;
  border: 1px solid silver;
  display: none;
  padding: 0;
  position: absolute;
  left: 0;
  top: 100%;
  width: 180px;
}
.zeta-menu ul li { float: none; }
.zeta-menu ul li:hover { background: #ddd; }
.zeta-menu ul li:hover a { color: black; }
.zeta-menu ul a { color: black; }
.zeta-menu ul ul { left: 100%; top: 0; }
.zeta-menu ul ul li {float:left; margin-right:10px;}
</style>

<script>
$(function(){
  $(".zeta-menu li").hover(function(){
    $('ul:first',this).show();
  }, function(){
    $('ul:first',this).hide();
  });
  $(".zeta-menu>li:has(ul)>a").each( function() {
    $(this).html( $(this).html()+' &or;' );
  });
  $(".zeta-menu ul li:has(ul)")
    .find("a:first")
    .append("<p style='float:right;margin:-3px'>&#9656;</p>");
});
</script>
	
<body>
	<div>
		<a href="/">
			<img src="/img/headerBg10.jpg" >
		</a>
	</div>
	<div class="zeta-menu-bar">
		<ul class="zeta-menu">
		  <li> <a href="/list/walbe">월베</a>
		    <ul>
		      <li> <a href="/list/walbe">월베-월간베스트</a> </li>
		      <li> <a href="/list/walbe?category=2701083014">월베-월간베스트 (정보)</a> </li>
		      <li> <a href="/list/walbe?sub=best">월베-월간베스트 (인기글)</a> </li>
		      <li> <a href="/list/walbe?sub=info">월베-월간베스트 (정보 인기글)</a> </li>
		      <li> <a href="/list/lanhist">랜선 역사</a> </li>
		    </ul>
		  </li>
		  <li> <a href="/list/jjal">짤방</a>
		    <ul>
		      <li> <a focus-id="3c6b5f43ce232bec0fee8c4bfd1dcba3" href="/list/jjal">짤방-유머게시판</a> </li>
		      <li><a focus-id="9711d3aa11fdef7d624f9566ee18b48f" href="/list/celeb">걸그룹/연예인</a></li>
		      <li><a focus-id="54b75b4ca2edfe30005ebd29dc823e5d" href="/list/animation">애니메이션</a></li>
		      <li><a focus-id="93e792469d5de89c6b17986e6cd381ad" href="/list/intercast">인터넷방송</a></li>
		    </ul>
		  </li>
		  <li><a href="/list/politics">정치/시사</a>
		    <ul>
		      <li><a focus-id="47e8ffce0f798fb09201c7f472572b19" href="/list/issue">뉴스/이슈</a></li>
		      <li><a focus-id="c7393ec35ed3d9acc224dbdb1d6ae808" href="/list/gkpp">우리공화당</a></li>
		      <li><a focus-id="1517e535a47f1463e6b948471878abb2" href="/list/politics">정치/시사</a></li>
		    </ul>
		  </li>
		  <li><a href="/si/popular">인기</a>
		    <ul>
		      <li><a focus-id="9711d3aa11fdef7d624f9566ee18b48f" href="/list/celeb">걸그룹/연예인</a></li>
		      <li><a focus-id="f338ffca9730c9a02586d7bae1545008" href="/list/sangdam">고민상담</a></li>
		      <li><a focus-id="ba130e47c71261aa831e8ba4749c97e3" href="/list/university">대학</a></li>
		      <li><a focus-id="75ed9b816c599e6e9bb0aa090236685d" href="/list/fashion">미용/패션</a></li>
		      <li><a focus-id="a2105a738c44047f8c7f65d7d28b2219" href="/list/smartphone">스마트폰</a></li>
		      <li><a focus-id="54b75b4ca2edfe30005ebd29dc823e5d" href="/list/animation">애니메이션</a></li>
		      <li><a focus-id="93e792469d5de89c6b17986e6cd381ad" href="/list/intercast">인터넷방송</a></li>
		      <li><a focus-id="6d70d5a708e449ab15d756ee07dcb756" href="/list/free">잡담</a></li>
		    </ul>
		  </li>
		  <li><a href="/si/normal">일반</a>
		    <ul>
		      <li><a focus-id="4083cf790e14d1eb2efc566a1532eb46" href="/list/fear">공포/미스터리</a></li>
		      <li><a focus-id="63553dcdb5d68e8add9dffa52ebeda83" href="/list/fishing">낚시</a></li>
		      <li><a focus-id="8d71ce07badd33ebd1f8a5a54b9d3b11" href="/list/singing">노래/연주</a></li>
		      <li><a focus-id="043a46817150c3865e8b7cfe742ee78e" href="/list/military">밀리터리</a></li>
		      <li><a focus-id="937b57a25f47ecf12287509c4a61fa3c" href="/list/car">자동차</a></li>
		      <li><a focus-id="9668bf1769fcc9be76cdafea9f927110" href="/list/bike">자전거</a></li>
		      <li><a focus-id="6d70d5a708e449ab15d756ee07dcb756" href="/list/free">잡담</a></li>
		    </ul>
		  </li>
		  <li><a href="/si/culture">문화</a>
		    <ul>
		      <li><a focus-id="c361e0f66645cfe9f9ecc9bd15834a39" href="/list/drama">TV프로그램</a></li>
		      <li><a focus-id="5be8738faf186006720d681c4f62c1ad" href="/list/waching">넷플릭스/왓챠</a></li>
		      <li><a focus-id="45f82bb229ff23a00fb628988ebe9c03" href="/list/book">도서</a></li>
		      <li><a focus-id="c7752de78001550284f8690c92005958" href="/list/camera">사진/카메라</a></li>
		      <li><a focus-id="5719997e71df14a697923da3b0fa23e1" href="/list/animal">애완동물</a></li>
		      <li><a focus-id="ca50defd5838383311cad69597c5056d" href="/list/travel">여행/캠핑</a></li>
		      <li><a focus-id="2dada7ae9e910ef8814f67e15fca2965" href="/list/movie">영화</a></li>
		      <li><a focus-id="9749d3235ef84982f3d25414265456de" href="/list/recipe">요리/맛집</a></li>
		      <li><a focus-id="1c005041d9683c0b703efb36a82a5e94" href="/list/music">음악</a></li>
		      <li><a focus-id="c6cad4a2f8bb45563ceabef43c98f72b" href="/list/creation">창작</a></li>
		    </ul>
		  </li>
		  <li><a href="https://www.walbe.com/ctrl/svc/pagepriview/sports">스포츠</a>
		    <ul>
		      <li><a focus-id="9ed7b010109c1de36b5de10c97d34136" href="/list/basketball">농구</a></li>
		      <li><a focus-id="6a6a5c4517c81702781d78c08c9b9074" href="/list/match">승부</a></li>
		      <li><a focus-id="d8838f3b2d755a52045de91339b1cae3" href="/list/baseball">야구</a></li>
		      <li><a focus-id="21d976c34191971d8999c7a0872b6343" href="/list/football">축구</a></li>
		      <li><a focus-id="cde76d60cd8d30f34284592e3e8be8db" href="/list/health">헬스</a></li>
		    </ul>
		  </li>
		  <li><a href="/si/game">게임</a>
		    <ul>
		      <li><a focus-id="e1933061252defadd5f95f02163d342d" href="/list/gameall">게임</a></li>
		      <li><a focus-id="ee3b879c64f67492944a81514f952899" href="/list/battlegrounds">배틀그라운드</a></li>
		      <li><a focus-id="01922941eb4d726fc9b5b6b52e9207d0" href="/list/lol">LoL</a></li>
		      <li><a focus-id="334710c0a6665e0515d463c5be6739ad" href="/list/smartgame">스마트폰게임</a></li>
		      <li><a focus-id="412fcbd1dc0b88c524b0165cde44e521" href="/list/df">던전앤파이터</a></li>
		      <li><a focus-id="e5c5c1696bd2e94bc87809a5c76a5792" href="/list/diablo3">블리자드</a></li>
		      <li><a focus-id="cb8ee31d8076726e21c208dc2df4086b" href="/list/skyrim">베데스다</a></li>
		      <li><a focus-id="2d6c996d4ed871a7af84b1273b815362" href="/list/rhythm">리듬게임</a></li>
		      <li><a focus-id="2fed998666c356cdb256ef2f16a1e75d" href="/list/wot">워게이밍넷</a></li>
		      <li><a focus-id="300b7d87a0442c19d1272c82ae4734e7" href="/list/maplestory">메이플스토리</a></li>
		      <li><a focus-id="b5eb53374258d120d0fc6bed32b170fa" href="/list/lostark">로스트아크</a></li>
		      <li><a focus-id="95b8280e7cf1dd61990ffdc433dcb188" href="/list/oldgame">지난게임</a></li>
		      <li><a focus-id="448a3f8a7aca106b8eec2c117e392c90" href="/list/game">플래시게임</a></li>
		      <li><a focus-id="b5eb53374258d120d0fc6bed32b170fa" href="/list/lostark">로스트아크</a></li>
		    </ul>
		  </li>
		  <li><a href="/si/economy">경제</a>
		    <ul>
		      <li><a focus-id="fb6a7c7af2ee724107c88a01cbf777ea" href="/list/bitcoin">가상화폐</a></li>
		      <li><a focus-id="1e1eac09302e4bfb0c6bd21a45361d88" href="/list/investment">부동산</a></li>
		      <li><a focus-id="771cfe59c659670e8f0cac6d2ed81739" href="/list/stock">주식</a></li>
		      <li><a focus-id="e6529cb52d9fb88c34dbc6e2e2088133" href="/list/futures">해외선물</a></li>
		    </ul>
		  </li>
		  <li><a href="https://www.walbe.com/list/insurance">보험-상담실</a></li>
		</ul>
	</div>

</body>
</html>