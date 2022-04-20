package com.mycompany.lucky.modules.member;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.dbcp2.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonFactory;
import com.mycompany.lucky.common.constants.Constants;
import com.mycompany.lucky.common.util.UtilDateTime;

@Controller
public class MemberController {

	private static final MemberVo MemberVo = null;
	@Autowired
	MemberServiceImpl service;
	

	@RequestMapping(value = "/member/memberList")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		// count 가져올 것
		int count = service.selectOneCount(vo);
		
		//코드리스트 추가하는지 물어보기
		
		vo.setParamsPaging(count);
		
		// count가 0이 아니면 list 가져오는 부분 수행후 model 개체에 담기
				if (count != 0) {
					List<Member> list = service.selectList(vo);

					model.addAttribute("list", list);
				} else {
					// by pass
				}
				
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : vo.getShDateStart());  	
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : vo.getShDateEnd());
				
		return "member/memberList";
	}
	
	@RequestMapping(value = "/member/memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		
		return "member/memberForm";
	}
	
	@RequestMapping(value = "/member/memberInst")
	public String memberInst(Model model, Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		System.out.println("dto.getIfmmSeq(): " + dto.getIfmmSeq());
		System.out.println("dto.getIfmmId(): " + dto.getIfmmId());
		System.out.println("dto.getIfmmName(): " + dto.getIfmmName());
		System.out.println("dto.getIfmmDob(): " + dto.getIfmmDob());

		// 입력을 작동시킨다.
		//int result = service.insert(dto);
		service.insert(dto);
		service.insertMemberEmail(dto);
		service.insertMemberPhone(dto);
		//System.out.println("result: " + result);
		redirectAttributes.addFlashAttribute("vo", vo);
		System.out.println("dto.getIfmmSeq(): " + dto.getIfmmSeq());  // 추가된 갯수나옴
		
//		return "redirect:/member/memberList?ifmmSeq=" + dto.getIfmmSeq() + makeQueryString(vo);
		return "redirect:/member/memberList";
	}
	
	  public String makeQueryString(MemberVo vo) { 
	  String tmp = "&thisPage=" + vo.getThisPage() + "&shOption=" + vo.getShOption() + "&shValue=" + vo.getShValue(); 
	  return tmp; 
	  }
	
	@RequestMapping(value = "/member/memberView")
	public String memberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		System.out.println("#####################################");
		System.out.println("vo.getShOption(): " +vo.getShOption());
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getThisPage(): " + vo.getThisPage());
		System.out.println("vo.getIfmmSeq(): " + vo.getIfmmSeq());
		System.out.println("#####################################");
		
		//디비까지 가서 한 건의 데이터 값을 가지고 온다, VO
		Member rt = service.selectOne(vo);
		
		//가지고 온값을 jsp로 넘겨준다
		model.addAttribute("item", rt);
		
		return "member/memberView";
	}
	
	// 수정폼이 보여지는 주소
	
	@RequestMapping(value = "/member/memberEdit")
	public String memberEdit(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	
		// 한건의 데이터 가져오기
		Member rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "/member/memberEdit";
	}
	
	// 실제 수정을 하는 주소
	
	@RequestMapping(value = "/member/memberUpdt")
	public String memberUpdt(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
	
		System.out.println("dto.getIfmmSeq():  " + dto.getIfmmSeq());
		System.out.println("dto.getIfmmId():  " + dto.getIfmmId());
		System.out.println("dto.getIfmmName():  " + dto.getIfmmName());
		
		// 수정 프로세스 실행 
		service.update(dto);
		service.updateMemberEmail(dto);
		service.updateMemberPhone(dto);
	

		redirectAttributes.addFlashAttribute("vo", vo);
	
//		return "redirect:/member/memberView?ifmmSeq=" + dto.getIfmmSeq() + makeQueryString(vo);
		return "redirect:/member/memberView";
	}
	
	@RequestMapping(value = "/member/memberDele")
	public String memberDele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {

		service.deleteMemberEmail(vo);
		service.deleteMemberPhone(vo);
		service.delete(vo);
		
		redirectAttributes.addFlashAttribute("vo", vo);

		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "/member/memberNele")
	public String memberNele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		service.updateDelete(vo);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "/member/loginForm")
	public String loginForm() throws Exception {
		
		
		return "member/loginForm";
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOneLogin(dto);

		if(rtMember != null) {
			
			httpSession.setAttribute("sessSeq", rtMember.getIfmmSeq());
			httpSession.setAttribute("sessName", rtMember.getIfmmName());
			httpSession.setAttribute("sessId", rtMember.getIfmmId());
			
	
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

	@ResponseBody
	@RequestMapping(value = "/member/logOutProc")
	public Map<String, Object> logOutProc(HttpSession httpSession) throws Exception {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		
		return returnMap;
	}
	
	@ResponseBody //구글 로그인
	@RequestMapping(value = "/member/GloginProc")
	public Map<String, Object> GloginProc(@RequestParam("ifmmName")String name,Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println(name);
		httpSession.setAttribute("sessName",name);
		httpSession.setAttribute("sessId","구글 회원입니다");
		httpSession.setAttribute("sessSeq","구글 회원입니다");
		
		returnMap.put("rt", "success");
		
		return returnMap;
	
	}
	
	@ResponseBody //카카오 로그인
	@RequestMapping(value = "/member/KakaoLgProc")
	public Map<String, Object> KakaoLgProc(@RequestParam("ifmmName")String name, Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println(name);
		httpSession.setAttribute("sessName", name);
		httpSession.setAttribute("sessId","카카오 회원입니다");
		httpSession.setAttribute("sessSeq","카카오 회원입니다");
		
		returnMap.put("item", "success");
		
		return returnMap;	
	}
	
	@ResponseBody //페북 로그인
	@RequestMapping(value = "/member/FBLgProc")
	public Map<String, Object> FBLgProc(@RequestParam("ifmmName")String name, Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println(name);
		httpSession.setAttribute("sessName", name);
		httpSession.setAttribute("sessId","페이스북 회원입니다");
		httpSession.setAttribute("sessSeq","페이스북 회원입니다");
		
		returnMap.put("item", "success");
		
		return returnMap;	
	}
	
}