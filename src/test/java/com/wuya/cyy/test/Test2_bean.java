package com.wuya.cyy.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wuya.cyy.dao.BookDao;
import com.wuya.cyy.pojo.Book;
import com.wuya.cyy.service.Impl.BookServiceImpl;
@RunWith(SpringJUnit4ClassRunner.class)
//告诉junit spring配置文件
@ContextConfiguration({ "classpath:spring/spring-web.xml", "classpath:spring/spring-service.xml","classpath:spring/spring-dao.xml" })
public class Test2_bean {
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private BookServiceImpl service;

	@Test
	public void testQueryById() throws Exception {
		long bookId = 1000;
		Book book = service.getById(bookId);
		System.out.println(book);
	}
	
	@Test
	public void testQueryAll() throws Exception {
		List<Book> books = service.getList();
		for (Book book : books) {
			System.out.println(book);
		}
	}
}
