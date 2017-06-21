package com.mwstory.streamingmonitor.Dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.mwstory.streamingmonitor.Vo.Osp_Monitoring_InfoVO;



public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {


	@Override
    public int getLoginResult(Map<String, String> map) {
        return (Integer) getSqlSession().selectOne("member.getLoginResult",map); 
    }
    
	@Override
    public List<Osp_Monitoring_InfoVO> getMonitoringList(){
    	return getSqlSession().selectList("monitoring.getMonitoringList");
    }
    
    // 02. 게시글 상세보기
    @Override
    public Osp_Monitoring_InfoVO getMtDetails(int id){
        return getSqlSession().selectOne("monitoring.getDetails", id);
    }
    
    
}