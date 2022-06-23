-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.21 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- simtest 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `simtest` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `simtest`;

-- 테이블 simtest.mbtiresult 구조 내보내기
CREATE TABLE IF NOT EXISTS `mbtiresult` (
  `No` int NOT NULL AUTO_INCREMENT,
  `mainNo` int NOT NULL,
  `result` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `article` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`No`),
  KEY `FK_testresult_testmain` (`mainNo`),
  CONSTRAINT `mbtiresult_ibfk_1` FOREIGN KEY (`mainNo`) REFERENCES `testmain` (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- 테이블 데이터 simtest.mbtiresult:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `mbtiresult` DISABLE KEYS */;
INSERT INTO `mbtiresult` (`No`, `mainNo`, `result`, `article`) VALUES
	(1, 2, 'ISTJ', '＊부끄럼을 많이 탄다.<br>\r\n＊성실하고 책임감이 강하고 정리정돈을 잘한다<br>\r\n＊예정에 없던 일을 몹시 힘들어한다<br>\r\n＊자발성이 부족한 편이다.<br>\r\n＊표현이 적으며 표정변화가 없다.<br>\r\n＊절약과 준비정신이 철저하다. <br>\r\n＊양처럼 순하고 순종적이다 <br>\r\n＊외유내강의 느낌을 준다. <br>\r\n＊자세가 바르며 계획을 세워 공부한다. <br>\r\n＊자세한 설명을 선호한다. <br>\r\n＊창의적인 면와 융통성이 부족한 편이다. <br>'),
	(2, 2, 'ISFJ', '＊온순하다. 성실하고 책임감이 강하다.<br>\r\n＊말을 참고 삭이는 경우가 많다. <br>\r\n＊봉사적이며 착하다 <br>\r\n＊소수와 깊게 사귄다. 친한 친구와 논다. <br>\r\n＊인내심이 있으며 꾸준하다. <br>\r\n＊준비물을 잘 챙긴다. 깔끔 단정<br>\r\n＊규칙을 준수하며 계획적이다. <br>\r\n＊행동력이 부족하다. <br>\r\n＊신뢰감이 간다. <br>\r\n＊변화를 싫어한다. <br>\r\n＊다른사람에게 도움이 되고자 하는 욕구<br>'),
	(3, 2, 'ISTP', '＊말수가 적고 표정변화가 거의 없다.<br>\r\n＊의욕적이며 고집이 세다. <br>\r\n＊앞에 나서지는 않지만 소집단에서는 리더 역할을 하려고 한다. <br>\r\n＊여러 가지에 관심이 많다. <br>\r\n＊왠지 강한 구석이 있다. <br>\r\n＊뒷마무리가 부족하다. 끈기가 부족하다. <br>\r\n＊타인에 대한 배려가 적다. <br>\r\n＊손재주가 있다.<br>\r\n＊친구와 잘 다투고 잘 따진다. <br>\r\n＊조용하다가도 일은 성급하게 한다.<br> '),
	(4, 2, 'ISFP', '＊마음이 너그럽고 순하다. <br>\r\n＊낙천적, 천하태평 행동이 느리다<br>\r\n＊놀 줄 알며 무대 체질, 예술적 매체를 통해 자신을 드러내는 것을 좋아함. 충동적 정력  <br>\r\n＊성급한 결론을 잘 내린다. <br>\r\n＊끈기가 부족하다. <br>\r\n＊부끄럼을 많이 탄다. 외모에 관심이 많다. <br>\r\n＊동식물 사육이나 재배를 좋아하다. <br>\r\n＊권위적인 분위기에서는 눈치를 살핌<br>\r\n＊잔잔하게 산만한 편이다. <br>\r\n＊주변의 요구를 뿌리치지 못하다. <br>'),
	(5, 2, 'ESTP', '＊개방적, 활동적, 적극적, 진취적이다. <br>\r\n＊항상 즐겁다. 재치꾼<br>\r\n＊모든 일에 관심을 갖고 지나치게 참견<br>\r\n＊끝마무리가 부족, 말과 행동의 불일치<br>\r\n＊복잡한 것을 싫어한다. <br>\r\n＊욕심이 많다. 은근히 승부근성이 강하다. <br>\r\n＊대중앞에 강하다. 과행동적, 목소리 크다.<br>\r\n＊말이 많고 잘 따지며 꾸중을 해도 자신의 <br>\r\n  입장을 끝까지 말한다. <br>\r\n＊임기응변이 뛰어나고 호탕하다. <br>\r\n＊어떤 권위나 강압에 굴하지 않는다.<br>'),
	(6, 2, 'ESFP', '＊활발하다. 천방지축, 과잉행동 먹보, 감정적<br>\r\n＊표정이 밝다.  목소리가 크고 말이 않다. <br>\r\n＊언제나 놀고 싶다. 단순하다. 솔직하다. <br>\r\n＊장난이 심하다. 붙임성이 있다. <br>\r\n＊지적을 많이 받아 자신을 착하다고 생각하지 않음 <br>\r\n＊뭐든지 급하게 해치운다. <br>\r\n＊적응력이 뛰어나다. (학원을 빼먹진 않음)<br>\r\n＊진지함이 부족하다.(실전에 불안해함)<br>\r\n＊group study가 효과적, 선의의 경쟁<br>\r\n＊인정받고 싶은 욕구가 강하다. <br>'),
	(7, 2, 'ESTJ', '＊모범적이고 솔선수범한다. <br>\r\n＊정리정돈을 잘하고 책임감이 강하다. <br>\r\n＊웃어른을 공경하고 예의가 바르다. <br>\r\n＊합리적으로 생각하고 공정한 것을 선호한다<br>\r\n＊경쟁에서는 이겨야 한다. <br>\r\n＊친구나 주변사람을 배려하는 리더타입<br>\r\n＊질서와 사회적인 관습을 중시한다. <br>\r\n＊여러 친구들과 두루 잘 지낸다.<br>\r\n＊친절하다. 중재 타협, 분배를 잘함. <br>\r\n＊불평이 없다. 활발하다. <br>'),
	(8, 2, 'ESFJ', '＊명랑쾌활, 감정이 풍부하다. 활력소, <br>\r\n＊타인의 무관심에 쉽게 좌절, <br>\r\n＊남 앞에 나서기를 좋아한다. <br>\r\n＊교실을 꾸미는 일을 잘한다. <br>\r\n＊미리 걱정하는 경향이 있다. <br>\r\n＊왕성한 발표력, 언어계열을 선호<br>\r\n＊표현력과 리더쉽이 뛰어나다. <br>\r\n＊일기를 잘 쓴다. 운동을 좋아함 <br>\r\n＊이야기 중심의 소설류를 많이 읽는다. <br>\r\n＊분명한 과제와 자세한 설명을 좋아한다. <br>\r\n＊말이 많다. <br>'),
	(9, 2, 'INFJ', '＊조용하고 침착하고 책임감이 강하다. <br>\r\n＊내면적인 욕심이 많고 잔걱정이 많다. <br>\r\n＊또래에 비해 성숙한 사고력을 지님 <br>\r\n＊민감하고 복잡한 정서를 가짐 비유를 잘함<br>\r\n＊교사의 의도를 잘 알아챈다. <br>\r\n＊개인적인 칭찬을 해주면 크게 향상된다. <br>\r\n＊시끄럽고 복잡한 것, 나서기를  싫어함. <br>\r\n＊학급일에 적극적으로 임하지 않는다. <br>\r\n＊완벽성 추구, 소외받는 아동에 관심이 많음<br>\r\n＊좋아하는 것과 좋아하지 않는 것 차이가 심하다. 교사와의관계가 좋으면 열심히 공부함<br>'),
	(10, 2, 'INTJ', '＊“애늙은이” 소수와 깊게 사귄다. <br>\r\n＊외모에 무관심, 독립적, 독창적, 효율성 강조<br>\r\n＊고집이 아주 세다. 대단히 강하다. <br>\r\n＊충분한 시간을 주는 것이 필요한 타입<br>\r\n＊이유가 타당하지 않으면 끝까지 승복하지 않는다. 모든 일에 이유가 많다. <br>\r\n＊이론적으로 논리적으로 따진다. <br>\r\n＊감정표현은 없으나 상처를 쉽게 받는다. <br>\r\n＊칭찬이나 벌에 무관심. 매우 많은 칭찬필요<br>\r\n＊승부욕이 강하고 이길 때까지 한다. <br>\r\n＊사소한 옷, 먹는 이야기하면 속상해한다. <br>'),
	(11, 2, 'INFP', '＊조용하고 말이 없으나 마음이 깊고 따뜻하다<br>\r\n＊친구나 주변상황에 민감하고 영향 많이 받음<br>\r\n＊민감한 정서세계, 동정심이 많다. 사려깊다. <br>\r\n＊약간 느리며 꾸준하지 못하다. <br>\r\n＊실천력이 부족하다. 낮잠을 좋아함 <br>\r\n＊좋아하는 것과 그렇지 않은 것 사이에 차이가 많이 난다. <br>\r\n＊온화하고 부드럽다. 자신의 가치를 중시한다. <br>\r\n＊학교 생활 패턴에 따라가지 못하다. <br>\r\n＊상징에 대한 해석이 뛰어나다. <br>\r\n＊교사입장: 기다림이 필요한 아이다. <br>'),
	(12, 2, 'INTP', '＊만물박사, 논리적, 호기심이 많다. <br>\r\n＊주관이 강하고 고집이 세다. 솔직함<br>\r\n＊자기중심적, 간섭이나 잔소리를 싫어함<br>\r\n＊주별의 상황에 영향을 받지 않는다. <br>\r\n＊정리정돈을 잘 하지 못한다. 감정이 단순함<br>\r\n＊잘못된 일은 꼭 지적한다. 학급에서 외통이<br>\r\n＊과학영역에 관심이 많다. 운동을 싫어함<br>\r\n＊잘난척하는 경향이 있다. <br>\r\n＊못하는 친구를 무시하지 경향이 있다. <br>\r\n＊관심이 없는 영역은 하지 않는다. <br>\r\n＊앎을 나누지 못하는 고독, 교사의 믿음이 중요<br>'),
	(13, 2, 'ENFP', '＊순진하고 순수하다. <br>\r\n＊변덕쟁이, 기발하다. <br>\r\n＊분위기만 맞으면 과잉행동<br>\r\n＊좋아하는 것과 그렇지 않은 것 사이에 집중력의 차이가 난다. <br>\r\n＊딴 생각을 잘한다. <br>\r\n＊칭찬에 민감하다. <br>\r\n＊용돈이 헤프다. <br>\r\n＊사람을 좋아한다. <br>\r\n＊반복 훈련 연습을 싫어한다. <br>\r\n＊정리정돈이 안된다. <br>'),
	(14, 2, 'ENTP', '＊활발하며 독창적이다. <br>\r\n＊상상력과 표현력이 뛰어나다. <br>\r\n＊친구들과 잘 어울린다. <br>\r\n＊게으르다. 정리정돈이 안된다. <br>\r\n＊개인주의적 경향, 고집이 강하다. <br>\r\n＊다방면에 관심을 가진 분야가 많다.<br>\r\n＊반복 설명은 질색 자기논리에 빠지기 쉽다<br>\r\n＊쉽게 포기하는 편이다. 마무리가 약함 <br>\r\n＊친구를 리더하려고 한다.<br>\r\n＊교사의 권위에 대해 인정하지 못한다. <br>\r\n＊교사가 자기를 인정하는 걸 좋아함. <br>'),
	(15, 2, 'ENFJ', '＊온순하고 착하다. <br>\r\n＊책임감이 강하고 신뢰감을 준다. <br>\r\n＊주변상황에 영향을 많이 받는다. <br>\r\n＊정리정돈을 잘한다. <br>\r\n＊딴 세계에 빠져있을 때가 종종 있다. <br>\r\n＊예능적인 분야를 좋아한다. <br>\r\n＊특정 분야는 지나칠 정도로 진지하다. <br>\r\n＊참을성이 많다. <br>\r\n＊친구들과 잘 어울린다. <br>\r\n＊뜻밖의 행동으로 주변을 놀라게 한다. <br>\r\n＊터질 것 같은 화산을 마음에 품고 사는 아이<br>'),
	(16, 2, 'ENTJ', '＊원리원칙주의자 (자기 주관이 강함) <br>\r\n＊활발하다. <br>\r\n＊논리적인 언어표현 <br>\r\n＊고집이 강하다. <br>\r\n＊간섭을 싫어함 <br>\r\n＊잘못된 것, 부당한 것은 꼭 바로 잡고 넘어감<br>\r\n＊철저한 준비자세<br>\r\n＊통솔력<br>\r\n＊계획하고 마음 먹은 것은 해낸다. <br>\r\n＊교사가 인정해주는 것이 필요하다. <br>');
/*!40000 ALTER TABLE `mbtiresult` ENABLE KEYS */;

-- 테이블 simtest.mbtiselect 구조 내보내기
CREATE TABLE IF NOT EXISTS `mbtiselect` (
  `No` int NOT NULL AUTO_INCREMENT,
  `mainNo` int NOT NULL,
  `selectNo` int NOT NULL DEFAULT '0',
  `group1` char(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `article` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='mbti 선택';

-- 테이블 데이터 simtest.mbtiselect:~72 rows (대략적) 내보내기
/*!40000 ALTER TABLE `mbtiselect` DISABLE KEYS */;
INSERT INTO `mbtiselect` (`No`, `mainNo`, `selectNo`, `group1`, `article`) VALUES
	(1, 2, 1, 'E', '처음보는 아이들과도 쉽게 이야기하거나 친해지는 편이다'),
	(2, 2, 2, 'E', '모르는 사람들이 많이 모여있는 곳에서도 비교적 활발하게 행동하는 편이다. '),
	(3, 2, 3, 'E', '여기 저기 친구나 아는 사람이 많다 (학원친구, 교회친구, 학교 친구등 )'),
	(4, 2, 4, 'E', '모임에서 다른 사람보다 말을 많이 하는 편이며 적극적으로 행동한다'),
	(5, 2, 5, 'E', '슬프거나 기쁜 일이 생기면 즉시 부모님에게 이야기하는 편이다'),
	(6, 2, 6, 'E', '활발하고 적극적이라는 말을 많이 듣는 편이다. '),
	(7, 2, 7, 'E', '시간이 걸리는 일, 놀이는 싫증을 빨리 내고 새로운 놀이, 활동을 원한다. '),
	(8, 2, 8, 'E', '혼자 조용히 있거나 책을 읽는 것보다 사람들과 어울리는 게 좋다 '),
	(9, 2, 9, 'E', '새로운 유행이 시작되면 다른 친구들보다 먼저 시도해보는 편이다. '),
	(10, 2, 1, 'I', '친한 사람이나 친구가 없는 모임에 가면 매우 불편한 편이다.'),
	(11, 2, 2, 'I', '친구를 쉽게 사귀는 편이 아니며 친한 몇 명의 친구들과 아주 친하게 지낸다.'),
	(12, 2, 3, 'I', '평소에 침착하고 조용하다는 말을 자주 듣는다. '),
	(13, 2, 4, 'I', '혼자 놀거나 조용히 책을 읽는 모습이 자주 있다.'),
	(14, 2, 5, 'I', '먼저 여러 번 생각해 다음에 행동하는 편이다. '),
	(15, 2, 6, 'I', '부끄러움을 쉽게 타는 편이다. '),
	(16, 2, 7, 'I', '자신의 의견이나 감정을 표현하는데 재빠르지 않은 편이다. '),
	(17, 2, 8, 'I', '누가 물어보았을 때에야 대답하는 편이다. '),
	(18, 2, 9, 'S', '낯선 곳에 혼자 심부름 가는 건 좀 불편하다.'),
	(19, 2, 1, 'S', '‘이불처럼 폭신한 구름’이란 꾸밈어보다 ‘흰구름’처럼 단순한 말이 더 좋다 '),
	(20, 2, 2, 'S', '주변 사람들의 얼굴, 키나 다른 특징들을 잘 기억한다 '),
	(21, 2, 3, 'S', '꾸준하고 참을성 있다는 말을 자주 듣는 편이다. '),
	(22, 2, 4, 'S', '공부할 때 세세하고 자세한 내용을 잘 암기하는 편이다.'),
	(23, 2, 5, 'S', '손으로 직접 만지거나 하나하나 조작하는 활동을 좋아한다 '),
	(24, 2, 6, 'S', '꼼꼼하다는 말을 자주 듣는 편이다 '),
	(25, 2, 7, 'S', '새로운 일이나 활동보다는 늘상 하는 일이 편안하다 '),
	(26, 2, 8, 'S', '‘그게 정말이야?’라는 식의 질문을 많이 한다. '),
	(27, 2, 9, 'S', '새로운 방법을 써보기보다는 친구들이 하는 대로 따라서 하는게 더 편하다 '),
	(28, 2, 1, 'N', '상상 속의 이야기를 잘 만들어 내는 편이다'),
	(29, 2, 2, 'N', '종종 물건을 잃어버리거나 어디에 두었는지 기억을 못할 때가 있다. '),
	(30, 2, 3, 'N', '독특하고 창의력, 상상력이 풍부하다는 말을 듣는 편이다.'),
	(31, 2, 4, 'N', '다른 아이들이 생각하지도 않은 엉뚱한 행동이나 상상을 할 때가 종종 있다'),
	(32, 2, 5, 'N', '질문을 많이 하는 편이다. '),
	(33, 2, 6, 'N', '가끔 내 상상 속에서만 있는 친구를 만들기도 한다. '),
	(34, 2, 7, 'N', '신기한 것에 호기심이 많다. '),
	(35, 2, 8, 'N', '장난감을 분해하고 살펴보는 것을 좋아한다. '),
	(36, 2, 9, 'N', '‘하고 싶다, 되고 싶다’ 꿈이 여러 가지로 많다. '),
	(37, 2, 1, 'T', '\'왜‘라는 질문을 자주 하는 편이다. '),
	(38, 2, 2, 'T', '끝까지 해내는 의지와 끈기가 강한 편이다. '),
	(39, 2, 3, 'T', '궁금한 게 있으면 꼬치꼬치 따져서 궁금증을 풀고 싶어한다. '),
	(40, 2, 4, 'T', '참을성이 있다는 말을 자주 듣는다. '),
	(41, 2, 5, 'T', '야단을 맞거나 벌을 받아도 눈물을 잘 보이지 않는 편이다 '),
	(42, 2, 6, 'T', '한 번 마음 먹은 일은 꾸준히 밀어나가 꼭 이뤄내는 편이다 '),
	(43, 2, 7, 'T', '주변 어른들이 귀엽다고 쓰다듬어 주면 어색하다 '),
	(44, 2, 8, 'T', '성적이 올랐거나 잘했을 때 직접적인 칭찬을 받는 게 좋다 '),
	(45, 2, 9, 'T', '부모님, 친구들에게 논리적이고 구체적인 설명으로 설득하는 편이다 '),
	(46, 2, 1, 'F', '부모님이나 선생님의 말을 잘 듣는 편이다. '),
	(47, 2, 2, 'F', '기뻐하고 슬픈 감정이 풍부하고 인정이 많다는 말을 듣는다.'),
	(48, 2, 3, 'F', '정이 많고 순하다는 말을 자주 듣는다. '),
	(49, 2, 4, 'F', '주위에 불쌍한 사람이나 친구가 있으면 마음이 아프고 도와주고 싶다 '),
	(50, 2, 5, 'F', '야단을 맞거나 벌을 받으면 눈물부터 나온다 '),
	(51, 2, 6, 'F', '다른 친구들이나 어른들이 내 행동을 어떻게 생각할지 신경이 쓰인다. '),
	(52, 2, 7, 'F', '매를 맞으면 쉽게 잘못했다고 하는 편이다. '),
	(53, 2, 8, 'F', '친구들 사이에서 성격이 부드럽다 싹싹하다 순하다고 들 한다 '),
	(54, 2, 9, 'F', '음식, 장난감, 옷을 선택할 때 쉽게 결정을 내리지 못한다. '),
	(55, 2, 1, 'J', '대체로 공부나 할일을 미리 해놓고 노는 편이다 '),
	(56, 2, 2, 'J', '시험보기 전에 미리 여유있게 공부계획을 짜 놓고 실천한다 '),
	(57, 2, 3, 'J', '미리 하는 게 편하고 마지막 순간에 쫓기면서 일하는 걸 싫어한다 '),
	(58, 2, 4, 'J', '계획에 따라 규칙적인 생활을 하는 편이다 '),
	(59, 2, 5, 'J', '목표가 뚜렷하고 자신의 의견을 분명히 표현하는 편이다 '),
	(60, 2, 6, 'J', '계획에 없는 일이 생기면 짜증이 나고 힘이 든다 '),
	(61, 2, 7, 'J', '학교나 친구들 모임에서 책임있는 일을 맡고 싶다 '),
	(62, 2, 8, 'J', '예정에 없던 일로 계획을 바꾸게 되면 힘들어 한다 '),
	(63, 2, 9, 'J', '깨끗이 정돈된 상태를 좋아한다 '),
	(64, 2, 1, 'P', '계획보다는 어떤 일이 닥치면 그때그때 처리하는 편이다 '),
	(65, 2, 2, 'P', '숙제를 미루다가 마지막 순간에 해서 시간에 쫓길 때가 종종 있다. '),
	(66, 2, 3, 'P', '방이 어수선하게 지저분해도 크게 신경쓰이지 않고 관심대상에 바로 집중하는편이다 '),
	(67, 2, 4, 'P', '주변일에 호기심이 많고 새로운 일이 생겨도 잘 적응한다 '),
	(68, 2, 5, 'P', '남의 지시에 따르기보다는 자신의 마음에 따라 행동하는 것이 좋다 '),
	(69, 2, 6, 'P', '공책이나 책가방을 미리 챙기고 준비하는 편은 아니다 '),
	(70, 2, 7, 'P', '자신의 생각, 의견을 크게 주장하지는 않는다 '),
	(71, 2, 8, 'P', '신발이나 옷이 떨어져도 무관심한 편이다 '),
	(72, 2, 9, 'P', '자기 것을 친구나 형제들한테 비교적 잘 나누어주는 편이다 ');
/*!40000 ALTER TABLE `mbtiselect` ENABLE KEYS */;

-- 테이블 simtest.testmain 구조 내보내기
CREATE TABLE IF NOT EXISTS `testmain` (
  `No` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Warn` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `dir` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='TestMain';

-- 테이블 데이터 simtest.testmain:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `testmain` DISABLE KEYS */;
INSERT INTO `testmain` (`No`, `Title`, `Warn`, `Date`, `dir`) VALUES
	(1, '대인기피증 테스트', '회피성 성격장애와 유사한 대인기피증은 사회공포증으로도 알려져 있으며 낯선 인물과의 대면 혹은 대화에 공포 반응을 보이는 공포증을 뜻합니다. 해당 검사는 총 20문항이 나옵니다. 각 문항마다 평소에 편하고 습관적으로 하는 것을 체크하시면 됩니다.', '2020-09-18', 'anthropophobia'),
	(2, 'MBTI 테스트', '성격은 어느 쪽이 옳다, 그르다라고 비교할 게 아니라 태어나면서부터 타고난 바탕입니다. 단점을 고치려고 집중해도 성격은 고치기 어려우니 오히려 자신의 “장점”에 집중해서 그것을 살리면 스스로에게 자신감이 붙어서 단점도 잘 다스릴 수 있어요. 어떤 지식보다 자기 자신을 아는 것이 중요하니 정말 솔직하게 답해보세요(방법: 양 쪽의 문장을 읽고 내 성격은 어느 쪽에 더 가까운지 생각해보고 둘 중 하나를 선택하세요.)', '2020-09-25', 'mbti');
/*!40000 ALTER TABLE `testmain` ENABLE KEYS */;

-- 테이블 simtest.testresult 구조 내보내기
CREATE TABLE IF NOT EXISTS `testresult` (
  `No` int NOT NULL AUTO_INCREMENT,
  `mainNo` int NOT NULL,
  `result` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`No`),
  KEY `FK_testresult_testmain` (`mainNo`),
  CONSTRAINT `FK_testresult_testmain` FOREIGN KEY (`mainNo`) REFERENCES `testmain` (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 simtest.testresult:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `testresult` DISABLE KEYS */;
INSERT INTO `testresult` (`No`, `mainNo`, `result`, `article`, `rate`) VALUES
	(1, 1, '사회성 제로', '대인기피증일 가능성이 높음', 25),
	(2, 1, '사회성 훈련 필요', '대인기피증일 가능성이 낮은 편이지만 경우에 따라 사회성이 약간 떨어질 수도 있습니다. 밖에 나갈 기회를 자주 만들어보세요.', 50),
	(3, 1, '사회성 괜찮', '대인기피증이 아니다', 75),
	(4, 1, '사회성 퍼펙트', '대인기피증은 절대 아님 퍼펙트함', 100);
/*!40000 ALTER TABLE `testresult` ENABLE KEYS */;

-- 테이블 simtest.testselect 구조 내보내기
CREATE TABLE IF NOT EXISTS `testselect` (
  `mainNo` int NOT NULL,
  `No` int unsigned NOT NULL AUTO_INCREMENT,
  `selectNo` int unsigned NOT NULL,
  `article` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`No`),
  KEY `FK_testselect1_testmain` (`mainNo`),
  CONSTRAINT `FK_testselect1_testmain` FOREIGN KEY (`mainNo`) REFERENCES `testmain` (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='select';

-- 테이블 데이터 simtest.testselect:~20 rows (대략적) 내보내기
/*!40000 ALTER TABLE `testselect` DISABLE KEYS */;
INSERT INTO `testselect` (`mainNo`, `No`, `selectNo`, `article`) VALUES
	(1, 1, 1, '1. 익숙하지 않은 사람들이랑 만나도 불편함이 없다.'),
	(1, 2, 2, '2. 누구를 만나는 것 보다 혼자 시간을 보내는게 편하다.'),
	(1, 3, 3, '3. 친구도 오랜만에 만나면 불편하다.'),
	(1, 4, 4, '4. 사람들에게 먼저 말을 거는 것이 쉽다.'),
	(1, 5, 5, '5. 모임에 나갔을 때 대화에 잘 끼어들지 못한다.'),
	(1, 6, 6, '6. 연락하는 이성친구가 거의 없다.'),
	(1, 7, 7, '7. 나이가 더 많은 사람들과 대화를 하는게 불편하다.'),
	(1, 8, 8, '8. 사람들과 연락을 하는 것을 좋아한다.'),
	(1, 9, 9, '9. 이성에게 말을 먼저 거는 것이 쉽다.'),
	(1, 10, 10, '10. 팀으로 일하는게 어렵다.'),
	(1, 11, 11, '11. 잘 모르는 사람 앞에서 초조함을 느낀다.'),
	(1, 12, 12, '12. 아는 사람에게 먼저 만나자고 하는 편이 아니다.'),
	(1, 13, 13, '13. 사람들이 많은 곳에 가면 심장이 두근거린다.'),
	(1, 14, 14, '14. 모르는 사람들이 있는 곳에 가면 예민해진다.'),
	(1, 15, 15, '15. 이성들 앞에서 말하는게 힘들다.'),
	(1, 16, 16, '16. 방에 있는게 제일 편하다.'),
	(1, 17, 17, '17. 사람들과 눈을 마주치는게 힘들다.'),
	(1, 18, 18, '18. 처음 보는 사람들 앞에서는 목소리가 작아진다.'),
	(1, 19, 19, '19. 연락하는 친구가 3명 이하이다.'),
	(1, 20, 20, '20. 마지막으로 친구를 본게 한달 전이다.');
/*!40000 ALTER TABLE `testselect` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
