package com.mwstory.streamingmonitor.Dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.mwstory.streamingmonitor.Vo.Osp_Monitoring_InfoVO;
import com.mwstory.streamingmonitor.Vo.Osp_Terminal_InfoVO;



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

    
    @Override //대쉬보드 터미널 리스트
    public List<Osp_Terminal_InfoVO> getTerminalList(){
    	return getSqlSession().selectList("monitoring.getTerminalList");
    }
    
    @Override //터미널 상세보기
    public Osp_Terminal_InfoVO getTerminalDetails(int terminal_id){
        return getSqlSession().selectOne("monitoring.getTerminalDetails", terminal_id);
    }
    
    @Override //터미널 총 갯수
    public int getCountTerminal(){
        return getSqlSession().selectOne("monitoring.getTerminalCount");
    }
    
    @Override //터미널 작동 중 갯수
    public int getWorkingYTerminal(){
        return getSqlSession().selectOne("monitoring.getTerminalWorkingY");
    }
    
    @Override //터미널 중지된 갯수
    public int getWorkingNTerminal(){
        return getSqlSession().selectOne("monitoring.getTerminalWorkingN");
    }
    
    @Override //터미널 평균 작동 시간
    public int getAvgTime(){
        return getSqlSession().selectOne("monitoring.getAvgTime");
    }
    
    
    
}