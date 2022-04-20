package com.mycompany.lucky.modules.member;

import java.util.List;

public interface MemberService {
	
	public int selectOneCount(MemberVo vo) throws Exception;
	public List<Member> selectList(MemberVo vo) throws Exception; 
	
	public int insert(Member dto) throws Exception;
	public int insertMemberPhone(Member dto) throws Exception;
	public int insertMemberEmail(Member dto) throws Exception;
	
	public Member selectOne(MemberVo vo) throws Exception;
	
	public int update(Member dto) throws Exception;
	public int updateMemberPhone(Member dto) throws Exception;
	public int updateMemberEmail(Member dto) throws Exception;
	
	public int delete(MemberVo vo) throws Exception;
	public int deleteMemberPhone(MemberVo vo) throws Exception;
	public int deleteMemberEmail(MemberVo vo) throws Exception;
	
	public int updateDelete(MemberVo vo) throws Exception;
	
	public Member selectOneLogin(Member dto) throws Exception;
	
}