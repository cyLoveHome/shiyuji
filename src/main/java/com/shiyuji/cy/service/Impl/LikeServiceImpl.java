package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.LikeDao;
import com.shiyuji.cy.pojo.Like;
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.service.LikeService;

@Service
public class LikeServiceImpl implements LikeService {
	
	@Autowired
	private LikeDao likeDao;

	@Override
	public boolean like(String uId, String mId) {
		long like_time = System.currentTimeMillis();
		Like like = new Like(uId, mId, like_time);
		int rowNum = likeDao.addLike(like);
		boolean isSuccess = rowNum > 0;
		return isSuccess;
	}

	@Override
	public boolean unLike(String uId, String mId) {
		boolean isSuccess = false;
		Like like = likeDao.selectLike(uId, mId);
		if(like != null){
			isSuccess = likeDao.deleteLike(uId, mId) > 0;
		}
		return isSuccess;
	}

	@Override
	public List<Like> selectbyUid(String uId) {
		return likeDao.selectbyUid(uId);
	}

	@Override
	public List<Like> selectbyMid(String mId) {
		return likeDao.selectbyMid(mId);
	}

	@Override
	public List<User> selectByMid(String mId) {
		return likeDao.selectByMid(mId);
	}

}
