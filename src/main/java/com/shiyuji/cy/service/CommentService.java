package com.shiyuji.cy.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shiyuji.cy.pojo.Comment;
import com.shiyuji.cy.pojo.User;

public interface CommentService {
	/**
	 * 发表评论
	 * @param uId
	 * @param mId
	 * @param cInfo
	 * @return
	 */
	boolean addComment(String uId,String mId,String cInfo);
	
	/**
	 * 菜单下的所有评论
	 * @param mId
	 * @return
	 */
	List<Comment> selectByMid(String mId);
	
	/**
	 * 菜单下所有评论人信息
	 * @param mId
	 * @return
	 */
	List<User> selectAllUser(String mId);
	
	/**
	 * 查两条评论
	 * @param mId
	 * @return
	 */
	List<Comment> selectTwo(String mId);
	
	/**
	 * 查出该菜谱的所有评论数
	 * @param mId
	 * @return
	 */
	String selectNum(String mId);
	
	
}
