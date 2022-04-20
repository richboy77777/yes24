package com.mycompany.lucky.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selectList(vo); 
	}
	
	@Override
	public int insert(Member dto) throws Exception {
		return dao.insert(dto); 
	}
	
	@Override
	public int insertMemberPhone(Member dto) throws Exception {
		return dao.insertMemberPhone(dto);
	}
	
	@Override
	public int insertMemberEmail(Member dto) throws Exception {
		return dao.insertMemberEmail(dto); 
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Member dto) throws Exception {
		return dao.update(dto);
	}
	
	@Override
	public int updateMemberPhone(Member dto) throws Exception {
		return dao.updateMemberPhone(dto);
	}
	
	@Override
	public int updateMemberEmail(Member dto) throws Exception {
		return dao.updateMemberEmail(dto);
	}


	@Override
	public int delete(MemberVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	@Override
	public int deleteMemberPhone(MemberVo vo) throws Exception {
		return dao.deleteMemberPhone(vo);
	}
	
	@Override
	public int deleteMemberEmail(MemberVo vo) throws Exception {
		return dao.deleteMemberEmail(vo);
	}

	@Override
	public int updateDelete(MemberVo vo) throws Exception {
		return dao.updateDelete(vo);
	}
		
	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		return dao.selectOneLogin(dto);
	}

	
}