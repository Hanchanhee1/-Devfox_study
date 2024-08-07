package com.chanhee.riply;

import java.util.List;

public interface RiplyDAO {
	
	// コメント検索
	List<RiplyDTO> read(String board_no);
	// コメント登録
	void create(RiplyDTO dto);
	// コメント修正
	void update(RiplyDTO dto);
	// コメント削除
	void delete(RiplyDTO dto);
	// コメントを詳しく
	RiplyDTO detail(String riply_no);

}
