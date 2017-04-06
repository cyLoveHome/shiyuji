package com.shiyuji.cy.dao;

import java.util.List;

import com.shiyuji.cy.pojo.Friend;

public interface FriendDao {
	/**
	 * 查我关注的好友
	 * @param uId
	 * @return
	 */
	List<Friend> selectByUid(String uId);
	
	/**
	 * 查关注我的好友
	 * @param FId
	 * @return
	 */
	List<Friend> selectByFid(String FId);

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
	int deleteFriend(String uId,String fId);
}
