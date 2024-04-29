package attendence;

import java.util.List;


public interface AttendenceMapper {
	
	List<AttendenceVO> getMemberAtt();

	int insertAtt(AttendenceVO vo);
	
	List<AttNumVO> attNum(AttNumVO AN);
}
