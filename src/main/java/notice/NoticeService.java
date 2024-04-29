package notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import common.SearchVO;

public class NoticeService {
	
	private final NoticeMapper mapper;
	public NoticeService(SqlSession session) {
		this.mapper = session.getMapper(NoticeMapper.class);
	}
	
	public int getNoticeListCount(SearchVO vo) {
		return mapper.getNoticeListCount(vo); 
	} 
	
	public List<NoticeVO> getNoticeList(SearchVO vo) {
		return mapper.getNoticeList(vo);
	}
	public NoticeVO getNotice(int searchNo) {
		return mapper.getNotice(searchNo);
	}
	public int insertNotice(NoticeVO vo) {
		return mapper.insertNotice(vo);
	}
	public int updateNotice(NoticeVO vo) {
		return mapper.updateNotice(vo);
	}
	public int deleteNotice(int deleteNo) {
		return mapper.deleteNotice(deleteNo);
	}
	public List<NoticeVO> getRecentNotice(){
		return mapper.getRecentNotice();
	}
	public int updateHits(int searchNo) {
		return mapper.updateHits(searchNo);
	}

}
