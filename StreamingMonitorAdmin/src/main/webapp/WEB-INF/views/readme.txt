Streaming Monitor Admin 2017

개발 환경
OS : Windows
Language : JAVA 
DataBase : MariaDB (Mysql) 
DevTools : Eclipse (Spring tool Suite), HeidiSQL
FrameWork : Spring, Bootstrap, Mybatis
Libraries Tools : Maven

디렉토리 구조
src/main/java : 자바코드
src/main/resources : 자바 코드에서 사용할 리소스
src/test/java : 테스트 코드
src/test/resources : 테스트 코드에서 사용할 리소스

Libraries/Maven Dependencies : 라이브러리 관리 도구(jar)

src : web디렉토리
src/main/webapp/resources : 자바스크립트 및 CSS 등을 관리
src/main/webapp/WEB-INF/classes : 컴파일된 클래스
src/main/webapp/WEB-INF/spring : 스프링 프레임워크 및 Mybatis 환경설정 파일
src/main/webapp/WEB-INF/views : html, jsp파일

src/main/webapp : 외부 접근 가능
src/main/web/WEB-INF : 외부접근 불가, Controller 를 경유해서 접근 가능
외부에서 직접 접속을 차단, 컴파일된 클래스와 스프링 환경설정파일(DB정보)가 존재하기 때문
JSP 또한 외부 접속하여 수정되는 것을 방지하기 위한 보안 때문에 외부 접근 금지

pom.xml : maven에서 참조하는 설정 파일

com/mwstory/streamingmonitor/Controller : Model을 통해서 데이터를 가져오고, 그 제이터를 바탕으로 View를 제어해서 사용자에게 전달하는 클래스
com/mwstory/streamingmonitor/Dao : DB를 사용해 데이터를 조회하거나 조작하는 기능을 전담하는 클래스
com/mwstory/streamingmonitor/Interceptor : 특정 URL로 요청시 Controller로 가는 요청을 가로채는 클래스
만약 로그인 처리를 한다면 모든 요청마다 로그인 정보가 남아있는지 확인하는 중복코드를 계속 입력해야 하지만 인터셉터를 이용하면
먼저 수행해 세션에서 로그인 정보가 있는지 확인해 주는 역할을 한다면 중복코드가 확 줄어들 수 있다.
com/mwstory/streamingmonitor/Map : SQL을 별도의 xml파일로 매핑하는 퍼시스턴스 프레임워크(Mybatis)
com/mwstory/streamingmonitor/Vo : 객체 및 사용하는 값들을 선언하는 클래스