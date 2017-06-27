package com.mwstory.streamingmonitor.Dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.mwstory.streamingmonitor.Vo.Osp_Monitoring_InfoVO;



public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {


	@Override //�α���
    public int getLoginResult(Map<String, String> map) {
        return (Integer) getSqlSession().selectOne("member.getLoginResult",map); 
    }
    
	@Override //�뽬���� ������Ȳ ����Ʈ
    public List<Osp_Monitoring_InfoVO> getMonitoringList(){
    	return getSqlSession().selectList("monitoring.getMonitoringList");
    }
    @Override //�뽬���� ������Ȳ �󼼺���
    public Osp_Monitoring_InfoVO getMtDetails(int id){
        return getSqlSession().selectOne("monitoring.getDetails", id);
    }
    
	@Override //����Ʈ�� �� ���� ��
    public List<Osp_Monitoring_InfoVO> getMonitoringSiteTotal(){
    	return getSqlSession().selectList("monitoring.getSiteTotal");
    }
    
	/*@Override //��ü ���� ��
    public int getAllSum() {
        return getSqlSession().selectOne("member.getAllSumResult"); 
    }*/
    
    
    
}