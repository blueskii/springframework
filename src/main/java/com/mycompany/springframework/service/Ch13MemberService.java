package com.mycompany.springframework.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.springframework.dao.mybatis.Ch13MemberDao;
import com.mycompany.springframework.dto.Ch13Member;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class Ch13MemberService {
	public enum JoinResult {
		SUCCESS,
		FAIL_DUPLICATED_MID
	}
	
	public enum LoginResult {
		SUCCESS,
		FAIL_MID,
		FAIL_MPASSWORD,
		FAIL_ENABLED
	}
	
	@Resource
	private Ch13MemberDao memberDao;
	
	public JoinResult join(Ch13Member member) {	
		boolean exist = isMid(member.getMid());
		if(exist) {
			return JoinResult.FAIL_DUPLICATED_MID;
		}
		memberDao.insert(member);
		return JoinResult.SUCCESS;
	}
	
	public boolean isMid(String mid) {
		Ch13Member member = memberDao.selectByMid(mid);
		if(member == null) {
			return false;
		} else {
			return true;
		}
	}
	
	public LoginResult login(Ch13Member member) {
		Ch13Member dbMember = memberDao.selectByMid(member.getMid());
		if(dbMember == null) {
			return LoginResult.FAIL_MID;
		}
		if(!dbMember.isMenabled()) {
			return LoginResult.FAIL_ENABLED;
		}
		if(!dbMember.getMpassword().equals(member.getMpassword())) {
			return LoginResult.FAIL_MPASSWORD;
		}
		return LoginResult.SUCCESS;
	}
}







