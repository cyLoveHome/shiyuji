package com.shiyuji.cy.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shiyuji.cy.dao.CommentDao;
import com.shiyuji.cy.dao.LikeDao;
import com.shiyuji.cy.pojo.Comment;
import com.shiyuji.cy.pojo.Like;
import com.shiyuji.cy.pojo.User;
import com.shiyuji.cy.service.CommentService;
import com.shiyuji.cy.service.LikeService;

@Service
public class CommentServiceImpl implements CommentService{
	
	@Autowired
	private CommentDao commentDao;

	@Override
	public boolean addComment(String uId, String mId, String cInfo) {
		long comm_time = System.currentTimeMillis();
		Comment comment = new Comment(uId,mId,cInfo);
		return commentDao.addComment(comment) > 0;
	}

	@Override
	public List<Comment> selectByMid(String mId) {
		return commentDao.selectByMid(mId);
	}

	@Override
	public List<User> selectAllUser(String mId) {
		return commentDao.selectAllUser(mId);
	}

	@Override
	public List<Comment> selectTwo(String mId) {
		return commentDao.selectTwo(mId);
	}

	@Override
	public String selectNum(String mId) {
		return commentDao.selectNum(mId);
	}

	
}
