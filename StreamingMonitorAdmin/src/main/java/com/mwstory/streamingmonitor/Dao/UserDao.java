package com.mwstory.streamingmonitor.Dao;

import java.util.List;
import java.util.Map;

import com.mwstory.streamingmonitor.Vo.Osp_Monitoring_InfoVO;


public interface UserDao {
    //�α���
	public int getLoginResult(Map<String, String> map); 
    
    //�뽬���� ������Ȳ ����Ʈ ����----------------------------------
    public List<Osp_Monitoring_InfoVO> getMonitoringList();
    public Osp_Monitoring_InfoVO getMtDetails(int id);
    //�뽬���� ������Ȳ �� -------------------------------------------
    
    //�뽬���� ����Ʈ�� �� ���� ��
    public List<Osp_Monitoring_InfoVO> getMonitoringSiteTotal();
    /*
   //�뽬���� ��ü ���� ��
    public  int getAllSum();
   */
    
    
    
    }