package community;

import java.util.List;

import common.SearchVO;

public interface CommunityMapper {
	List<CommunityVO> getCommunityList(SearchVO vo);
	int getCommunityListCount(SearchVO vo);
	CommunityVO getCommunity(int searchNo);
	int insertCommunity(CommunityVO vo);
	int updateCommunity(CommunityVO vo);
	int deleteCommunity(int deleteNo);
	int updateHits(int searchNo);
	int totalComment(int searchNo);
	

}
