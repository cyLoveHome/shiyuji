package com.shiyuji.cy.dao;

import java.util.List;

import com.shiyuji.cy.pojo.Comment;

public interface CommentDao {
	/**
	 * 新增评论
	 * @param c
	 * @return
	 */
	int addComment(Comment c);
	
	/**
	 * 查出一个菜谱下的所有评论
	 * @param mId
	 * @return
	 */
	List<Comment> selectByMid(String mId);

}
