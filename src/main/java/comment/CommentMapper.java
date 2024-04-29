package comment;

import java.util.List;

public interface CommentMapper {
	List<CommentVO> getCommentList(int boardNum);
	int insertComment(CommentVO vo);
	int updateComment(CommentVO vo);
	int deleteComment(int deleteNo);
	List<CommentVO> countComment();

}
