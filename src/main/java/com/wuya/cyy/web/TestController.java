package com.wuya.cyy.web;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.wuya.cyy.pojo.Book;
import com.wuya.cyy.service.Impl.BookServiceImpl;
import com.wuya.cyy.service.Impl.RegisterValidateService;
import com.wuya.cyy.utils.ServiceException;


@Controller
@RequestMapping("/test") // url:/模块/资源/{id}/细分 /seckill/list
public class TestController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private BookServiceImpl bookService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	private ModelAndView list(ModelAndView model,HttpServletRequest request) {
		List<Book> books = bookService.getList();
//		model.addAttribute("list", list.get(0));
//		model.addAttribute("hello", "hello world list");
		// list.jsp + model = ModelAndView
		logger.warn("------books:"+books.size());
		String servletContext = request.getSession().getServletContext().getRealPath("");
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
	
	@RequestMapping(value="/springUpload")
    public String  springUpload(HttpServletRequest request) throws IllegalStateException, IOException{
         long  startTime=System.currentTimeMillis();
         //将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
        CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(
                request.getSession().getServletContext());
        logger.warn("springUpload");
        //检查form中是否有enctype="multipart/form-data"
        if(multipartResolver.isMultipart(request))
        {
            //将request变成多部分request
            MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
           //获取multiRequest 中所有的文件名
            Iterator iter=multiRequest.getFileNames();
            
            while(iter.hasNext())
            {
                //一次遍历所有文件
                MultipartFile file=multiRequest.getFile(iter.next().toString());
                if(file!=null)
                {	
                	logger.warn("getOriginalFilename:"+file.getOriginalFilename());
                    String path="E:/springUpload/"+file.getOriginalFilename();
                	logger.warn("path:"+path);
                    //上传
                    file.transferTo(new File(path));
                }
                 
            }
           
        }
        long  endTime=System.currentTimeMillis();
        System.out.println("方法三的运行时间："+String.valueOf(endTime-startTime)+"ms");
        return "success"; 
    }
	
	@Resource  
    private RegisterValidateService service;  
      
    @RequestMapping(value="/register",method={RequestMethod.GET,RequestMethod.POST})  
    public ModelAndView  load(HttpServletRequest request,HttpServletResponse response) throws ParseException{  
        String action = request.getParameter("action");  
        logger.warn("-----reg----"+action);  
        ModelAndView mav=new ModelAndView();  
        String email = "";
        if("register".equals(action)) {  
            //注册  
            email = request.getParameter("email");  
            logger.warn("-----reg----"+email);  
            service.processregister(email);//发邮箱激活  
            mav.addObject("text","注册成功");  
            mav.setViewName("register_success");  
        }   
        else if("activate".equals(action)) {  
            //激活  
            email = request.getParameter("email");//获取email  
            String validateCode = request.getParameter("validateCode");//激活码  
            logger.warn("-----reg----"+email);  
            logger.warn("-----reg----"+validateCode);
            try {  
                service.processActivate(email , validateCode);//调用激活方法  
                mav.setViewName("activate_success");  
            } catch (ServiceException e) {  
                request.setAttribute("message" , e.getMessage());  
                mav.setViewName("activate_failure");  
            }  
              
        }  
        return mav;  
    }  


}
