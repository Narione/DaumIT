package attendence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;




public class AttendenceService {
	private AttendenceMapper mapper;
	
	public AttendenceService(SqlSession session) {
		this.mapper = session.getMapper(AttendenceMapper.class);
	}
	
	public List<AttendenceVO> getMemberList() {
		return mapper.getMemberAtt();
	}
	
	public int insertAtt(AttendenceVO vo) {
		return mapper.insertAtt(vo);
		
	}
	
	public List<AttNumVO> attNum(AttNumVO AN){
		return mapper.attNum(AN);
	}

	
	
}
