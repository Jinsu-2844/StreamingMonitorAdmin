package com.mwstory.streamingmonitor.Dao;

import java.util.List;
import java.util.Map;

import com.mwstory.streamingmonitor.Vo.Osp_Monitoring_InfoVO;


public interface UserDao {
    public int getLoginResult(Map<String, String> map); 
    public List<Osp_Monitoring_InfoVO> getMonitoringList();
   
    
    // 02. 게시글 상세보기
    public Osp_Monitoring_InfoVO getMtDetails(int id);
    
    
    }