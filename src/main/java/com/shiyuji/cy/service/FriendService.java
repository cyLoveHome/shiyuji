package com.shiyuji.cy.service;

import java.util.List;

import com.shiyuji.cy.pojo.Friend;
import com.shiyuji.cy.pojo.User;

public interface FriendService {
	/**
	 * 我关注的
	 * @param uId
	 * @return
	 */
	List<Friend> selectByUid(String uId);
	
	/**
	 * 关注我的
	 * @param FId
	 * @return
	 */
	List<Friend> selectByFid(String FId);

	/**
	 * 新增好友
	 * @param f
	 * @return
	 */
	boolean addFriend(String uId,String fId);
	
	/**
	 * 删除好友
	 * @param uId
	 * @param fId
	 * @return
	 */
	boolean deleteFriend(String uId,String fId);
	
	/**
	 * 查是否是好友关系
	 * @param uId
	 * @param fId
	 * @return
	 */
	Friend selectFriend(String uId,String fId);
	
	/**
	 * 我的好友数
	 * @param uId
	 * @return
	 */
	String selectUnum(String uId);
	
	/**
	 * 关注我的数
	 * @param fId
	 * @return
	 */
	String selectFnum(String fId);
}
