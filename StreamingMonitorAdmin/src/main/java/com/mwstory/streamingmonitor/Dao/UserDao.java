package com.mwstory.streamingmonitor.Dao;

import java.util.List;
import java.util.Map;

import com.mwstory.streamingmonitor.Vo.Osp_Monitoring_InfoVO;


public interface UserDao {
    //로그인
	public int getLoginResult(Map<String, String> map); 
    
    //대쉬보드 수집현황 리스트 시작----------------------------------
    public List<Osp_Monitoring_InfoVO> getMonitoringList();
    public Osp_Monitoring_InfoVO getMtDetails(int id);
    //대쉬보드 수집현황 끝 -------------------------------------------
    
    //대쉬보드 사이트별 총 수집 수
    public List<Osp_Monitoring_InfoVO> getMonitoringSiteTotal();
    /*
   //대쉬보드 전체 수집 수
    public  int getAllSum();
   */
    
    
    
    }