package com.chanhee.board;

import java.util.List;

public interface BoardService {
	
	// 掲示板登録
	int insert(BoardDTO board);
	
	// 掲示板リスト
	List<BoardDTO> boardList();
	
	// 掲示板1つ検索
	BoardDTO getBoardInfo(String board_no);
	
	// 掲示板修正
	int update(BoardDTO board);
	
	// 掲示板削除
	int delete(String board_no);
	
	// 掲示板検索
	//List<BoardDTO> search(String data);
	//List<BoardDTO> search(String tag,String data);
	
}
