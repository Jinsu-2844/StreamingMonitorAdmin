package com.mwstory.streamingmonitor.Dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.mwstory.streamingmonitor.Vo.Osp_Monitoring_InfoVO;



public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {


	@Override //로그인
    public int getLoginResult(Map<String, String> map) {
        return (Integer) getSqlSession().selectOne("member.getLoginResult",map); 
    }
    
	@Override //대쉬보드 수집현황 리스트
    public List<Osp_Monitoring_InfoVO> getMonitoringList(){
    	return getSqlSession().selectList("monitoring.getMonitoringList");
    }
    @Override //대쉬보드 수집현황 상세보기
    public Osp_Monitoring_InfoVO getMtDetails(int id){
        return getSqlSession().selectOne("monitoring.getDetails", id);
    }
    
	@Override //사이트별 총 수집 수
    public List<Osp_Monitoring_InfoVO> getMonitoringSiteTotal(){
    	return getSqlSession().selectList("monitoring.getSiteTotal");
    }
    
	/*@Override //전체 수집 수
    public int getAllSum() {
        return getSqlSession().selectOne("member.getAllSumResult"); 
    }*/
    
    
    
}