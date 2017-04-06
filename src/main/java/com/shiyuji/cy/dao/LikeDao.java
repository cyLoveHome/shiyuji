package com.shiyuji.cy.dao;

import java.util.List;

import com.shiyuji.cy.pojo.Like;
import com.shiyuji.cy.pojo.User;

public interface LikeDao {
	/**
	 * 赞
	 * @param like
	 * @return
	 */
	int addLike(Like like);
	
	/**
	 * 取消赞
	 * @param uId
	 * @param mId
	 * @return
	 */
	int deleteLike(String uId,String mId);
	
	/**
	 * 是否有该条点赞记录
	 * @param uId
	 * @param mId
	 * @return
	 */
	Like selectLike(String uId,String mId);
	
	/**
	 * 查所有我的点赞
	 * @param uId
	 * @return
	 */
	List<Like> selectbyUid(String uId);
	
	/**
	 * 查该菜谱下所有赞
	 * @param mId
	 * @return
	 */
	List<Like> selectbyMid(String mId);
	
	/**
	 * 该菜谱下所有点赞用户
	 * @param mId
	 * @return
	 */
	List<User> selectByMid(String mId);

}
