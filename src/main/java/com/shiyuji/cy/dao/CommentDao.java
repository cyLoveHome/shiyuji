package com.shiyuji.cy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shiyuji.cy.pojo.Comment;
import com.shiyuji.cy.pojo.User;

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
	List<Comment> selectByMid(@Param("mId")String mId);
	
	/**
	 * 查出最新两条评论
	 * @return
	 */
	List<Comment> selectTwo(@Param("mId")String mId);
	
	/**
	 * 查出该菜谱的所有评论数
	 * @param mId
	 * @return
	 */
	String selectNum(@Param("mId")String mId);
	
	/**
	 * 查所有评论人信息
	 * @param mId
	 * @return
	 */
	List<User> selectAllUser(String mId);
	

}
