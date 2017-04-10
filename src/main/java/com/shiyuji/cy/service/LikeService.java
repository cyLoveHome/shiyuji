package com.shiyuji.cy.service;

import java.util.List;

import com.shiyuji.cy.pojo.Like;
import com.shiyuji.cy.pojo.User;

public interface LikeService {
	/**
	 * 点赞
	 * @param uId
	 * @param mId
	 * @return
	 */
	boolean like(String uId,String mId);
	
	/**
	 * 取消赞
	 * @param uId
	 * @param mId
	 * @return
	 */
	boolean unLike(String uId,String mId);
	
	/**
	 * 我的赞
	 * @param uId
	 * @return
	 */
	List<Like> selectbyUid(String uId);
	
	/**
	 * 查该菜谱下所有赞
	 * @param mId
	 * @return
	 */
	String selectbyMid(String mId);
	
	/**
	 * 同一菜谱下点赞用户
	 * @param mId
	 * @return
	 */
	List<User> selectByMid(String mId);
	
	/**
	 * 是否已点赞
	 * @param uId
	 * @param mId
	 * @return
	 */
	Like selectLike(String uId,String mId);
}
