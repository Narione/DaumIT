package member;

import java.util.List;

import attendence.CompanyVO;
import common.SearchVO;

public interface MemberMapper {
	int getMemberTotalCount(List<MemberVO> list);
	List<MemberVO> getMemberList();
	MemberVO getMember(String id);
	int insertMember(MemberVO vo);
	int updateMember(MemberVO vo);
	int deleteMember(String id);
	MemberVO currentPassword(MemberVO vo);
	int changePassword(MemberVO vo);
	List<CompanyVO> getCompanyList(SearchVO vo);
	int changeCompany(MemberVO vo);
	int getCompanyCount(SearchVO vo);
}
