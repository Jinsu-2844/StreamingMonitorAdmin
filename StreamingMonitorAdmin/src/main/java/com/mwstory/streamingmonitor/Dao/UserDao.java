package com.mwstory.streamingmonitor.Dao;

import java.util.List;
import java.util.Map;

import com.mwstory.streamingmonitor.Vo.Osp_Monitoring_InfoVO;
import com.mwstory.streamingmonitor.Vo.Osp_Terminal_InfoVO;


public interface UserDao {
    //로그인
	public int getLoginResult(Map<String, String> map); 
    
    //모니터링
    public List<Osp_Monitoring_InfoVO> getMonitoringList();
    public Osp_Monitoring_InfoVO getMtDetails(int id);
    public List<Osp_Monitoring_InfoVO> getMonitoringSiteTotal();
    
    
    //터미널
    public List<Osp_Terminal_InfoVO> getTerminalList();
    public Osp_Terminal_InfoVO getTerminalDetails(int terminal_id);
    public int getCountTerminal();
    public int getWorkingYTerminal();
    public int getWorkingNTerminal();
    public int getAvgTime();
    }