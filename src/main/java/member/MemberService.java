package member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import attendence.CompanyVO;
import common.SearchVO;

public class MemberService {
	private final MemberMapper mapper;
	public MemberService(SqlSession session) {
		this.mapper = session.getMapper(MemberMapper.class);
	}
	public int getMemberTotalCount(List<MemberVO> list) {
		return mapper.getMemberTotalCount(list);
	}
	
	public List<MemberVO> getMemberList() {
		return mapper.getMemberList();
	}
	public MemberVO getMember(String id) {
		return mapper.getMember(id);
	}
	public int insertMember(MemberVO vo) {
		return mapper.insertMember(vo);
	}
	public int updateMember(MemberVO vo) {
		return mapper.updateMember(vo);
	}
	public int deleteMember(String id) {
		return mapper.deleteMember(id);
	}
	public MemberVO currentPassword(MemberVO vo) {
		return mapper.currentPassword(vo);
	}
	public int changePassword(MemberVO vo) {
		return mapper.changePassword(vo);
	}
	
	public List<CompanyVO> getCompanyList(SearchVO vo) {
		return mapper.getCompanyList(vo);
	}
	
	public int changeCompany(MemberVO vo) {
		return mapper.changeCompany(vo);
	}
	
	public int getCompanyCount(SearchVO vo) {
		return mapper.getCompanyCount(vo);
	}
	
}
