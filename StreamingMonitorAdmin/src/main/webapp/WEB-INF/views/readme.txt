Streaming Monitor Admin 2017

���� ȯ��
OS : Windows
Language : JAVA 
DataBase : MariaDB (Mysql) 
DevTools : Eclipse (Spring tool Suite), HeidiSQL
FrameWork : Spring, Bootstrap, Mybatis
Libraries Tools : Maven

���丮 ����
src/main/java : �ڹ��ڵ�
src/main/resources : �ڹ� �ڵ忡�� ����� ���ҽ�
src/test/java : �׽�Ʈ �ڵ�
src/test/resources : �׽�Ʈ �ڵ忡�� ����� ���ҽ�

Libraries/Maven Dependencies : ���̺귯�� ���� ����(jar)

src : web���丮
src/main/webapp/resources : �ڹٽ�ũ��Ʈ �� CSS ���� ����
src/main/webapp/WEB-INF/classes : �����ϵ� Ŭ����
src/main/webapp/WEB-INF/spring : ������ �����ӿ�ũ �� Mybatis ȯ�漳�� ����
src/main/webapp/WEB-INF/views : html, jsp����

src/main/webapp : �ܺ� ���� ����
src/main/web/WEB-INF : �ܺ����� �Ұ�, Controller �� �����ؼ� ���� ����
�ܺο��� ���� ������ ����, �����ϵ� Ŭ������ ������ ȯ�漳������(DB����)�� �����ϱ� ����
JSP ���� �ܺ� �����Ͽ� �����Ǵ� ���� �����ϱ� ���� ���� ������ �ܺ� ���� ����

pom.xml : maven���� �����ϴ� ���� ����

com/mwstory/streamingmonitor/Controller : Model�� ���ؼ� �����͸� ��������, �� �����͸� �������� View�� �����ؼ� ����ڿ��� �����ϴ� Ŭ����
com/mwstory/streamingmonitor/Dao : DB�� ����� �����͸� ��ȸ�ϰų� �����ϴ� ����� �����ϴ� Ŭ����
com/mwstory/streamingmonitor/Interceptor : Ư�� URL�� ��û�� Controller�� ���� ��û�� ����ä�� Ŭ����
���� �α��� ó���� �Ѵٸ� ��� ��û���� �α��� ������ �����ִ��� Ȯ���ϴ� �ߺ��ڵ带 ��� �Է��ؾ� ������ ���ͼ��͸� �̿��ϸ�
���� ������ ���ǿ��� �α��� ������ �ִ��� Ȯ���� �ִ� ������ �Ѵٸ� �ߺ��ڵ尡 Ȯ �پ�� �� �ִ�.
com/mwstory/streamingmonitor/Map : SQL�� ������ xml���Ϸ� �����ϴ� �۽ý��Ͻ� �����ӿ�ũ(Mybatis)
com/mwstory/streamingmonitor/Vo : ��ü �� ����ϴ� ������ �����ϴ� Ŭ����