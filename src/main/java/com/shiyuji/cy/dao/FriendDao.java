package com.shiyuji.cy.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.shiyuji.cy.pojo.Friend;

public interface FriendDao {
	/**
	 * 查我关注的好友
	 * @param uId
	 * @return
	 */
	List<Friend> selectByUid(String uId);
	
	/**
	 * 我关注的总数
	 * @param uId
	 * @return
	 */
	String selectUnum(String uId);
	
	/**
	 * 查关注我的好友
	 * @param FId
	 * @return
	 */
	List<Friend> selectByFid(String fId);
	
	/**
	 * 关注我的好友总数
	 * @param FId
	 * @return
	 */
	String selectFnum(String fId);

	/**
	 * 新增关注好友
	 * @param f
	 * @return
	 */
	int addFriend(Friend f);
	
	/**
	 * 删除好友
	 * @param fId
	 * @return
	 */
	int deleteFriend(@Param("uId")String uId,@Param("fId")String fId);
	
	/**
	 * 查数据库是否有好友记录
	 * @param uId
	 * @param fId
	 * @return
	 */
	Friend selectFriend(@Param("uId")String uId,@Param("fId")String fId);
}
