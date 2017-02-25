package com.wuya.cyy.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.wuya.cyy.pojo.Book;
import com.wuya.cyy.service.Impl.BookServiceImpl;


@Controller
@RequestMapping("/book") // url:/模块/资源/{id}/细分 /seckill/list
public class BookController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private BookServiceImpl bookService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	private ModelAndView list(ModelAndView model) {
		List<Book> books = bookService.getList();
//		model.addAttribute("list", list.get(0));
//		model.addAttribute("hello", "hello world list");
		// list.jsp + model = ModelAndView
		logger.warn("------books:"+books.size());
		model.getModel().put("books", books);
		model.setViewName("list");
		return model;// WEB-INF/jsp/"list".jsp
	}

	// ajax json
	@RequestMapping(value = "/{bookId}/detail", method = RequestMethod.GET)
	@ResponseBody
	private ModelAndView detail(@PathVariable("bookId") Long bookId, ModelAndView model) {
		if (bookId == null) {
			model.setViewName("redirect:/book/list");
			return model;
		}
		Book book = bookService.getById(bookId);
		if (book == null) {
			model.setViewName("forward:/book/list");
			return model;
		}
		logger.warn("bookId:"+bookId+" ,book:"+book.toString());
//		model.addAttribute("book", book);
//		model.addAttribute("hello", "hello world");
		model.setViewName("detail");
		model.getModel().put("book", book);
		return model;
	}


}
