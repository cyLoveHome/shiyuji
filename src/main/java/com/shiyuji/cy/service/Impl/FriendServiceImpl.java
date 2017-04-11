package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.FriendDao;
import com.shiyuji.cy.pojo.Friend;
import com.shiyuji.cy.service.FriendService;
@Service
public class FriendServiceImpl implements FriendService{

	@Autowired
	private FriendDao friendDao;
	
	@Override
	public List<Friend> selectByUid(String uId) {
		return friendDao.selectByUid(uId);
	}

	@Override
	public List<Friend> selectByFid(String FId) {
		return friendDao.selectByFid(FId);
	}

	@Override
	public boolean deleteFriend(String uId, String fId) {
		return friendDao.deleteFriend(uId, fId) > 0;
	}

	@Override
	public Friend selectFriend(String uId, String fId) {
		return friendDao.selectFriend(uId, fId);
	}

	@Override
	public boolean addFriend(String uId, String fId) {
		Friend f = new Friend(uId,fId);
		return friendDao.addFriend(f) > 0;
	}

	@Override
	public String selectUnum(String uId) {
		return friendDao.selectUnum(uId);
	}

	@Override
	public String selectFnum(String fId) {
		return friendDao.selectFnum(fId);
	}

}
