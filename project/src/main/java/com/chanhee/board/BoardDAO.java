package com.chanhee.board;
import java.util.List;


import com.chanhee.util.Criteria;

// mybatisのSqlSessionを利用して作業
public interface BoardDAO {
	
	// 掲示板登録
	int insert(BoardDTO board);
	// 掲示板リスト
	List<BoardDTO> boardList();
	// 掲示板1つ検索
	BoardDTO read(String board_no);
	// 掲示板修正
	int update(BoardDTO board);
	// 掲示板削除
	int delete(String board_no);
	// ページング処理
	List<BoardDTO> Paging(Criteria cri);
	// ページング処理
	int TotalCount(Criteria cri);
	// 前の掲示板
	BoardDTO prev(String board_no);
	// 次の掲示板
	BoardDTO next(String board_no);
	
}




