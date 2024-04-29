package notice;

import java.util.List;

import common.SearchVO;

public interface NoticeMapper {
	List<NoticeVO> getNoticeList(SearchVO vo);
	int getNoticeListCount(SearchVO vo);
	NoticeVO getNotice(int searchNo);
	int insertNotice(NoticeVO vo);
	int updateNotice(NoticeVO vo);
	int deleteNotice(int deleteNo);
	List<NoticeVO> getRecentNotice();
	int updateHits(int searchNo);
	

}
