package community;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import common.SearchVO;

public class CommunityService {
	
	private final CommunityMapper mapper;
	public CommunityService(SqlSession session) {
		this.mapper = session.getMapper(CommunityMapper.class);
	}
	
	public int getCommunityListCount(SearchVO vo) {
		return mapper.getCommunityListCount(vo); 
	} 
	
	public List<CommunityVO> getCommunityList(SearchVO vo) {
		return mapper.getCommunityList(vo);
	}
	public CommunityVO getCommunity(int searchNo) {
		return mapper.getCommunity(searchNo);
	}
	public int insertCommunity(CommunityVO vo) {
		return mapper.insertCommunity(vo);
	}
	public int updateCommunity(CommunityVO vo) {
		return mapper.updateCommunity(vo);
	}
	public int deleteCommunity(int deleteNo) {
		return mapper.deleteCommunity(deleteNo);
	}
	public int updateHits(int searchNo) {
		return mapper.updateHits(searchNo);
	}
	public int totalComment(int searchNo) {
		return mapper.totalComment(searchNo);
	}

}
