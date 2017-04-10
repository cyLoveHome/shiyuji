package com.shiyuji.cy.web;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.shiyuji.cy.pojo.Book;
import com.shiyuji.cy.service.Impl.BookServiceImpl;


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
	
//	menuupload
	@RequestMapping(value = "/menuupload")
	@ResponseBody
	private void uploadMenu(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		 CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(
	                request.getSession().getServletContext());
		
//    	  while(fileNames.hasNext()){
		  if(multipartResolver.isMultipart(request)){
			  MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
			  Map<String, MultipartFile> fileMap = multiRequest.getFileMap();
			  if(!fileMap.isEmpty()){
				  for (Map.Entry<String, MultipartFile> entry : fileMap.entrySet()) {
//					  	System.out.println("key= " + entry.getKey() + " and value= " + entry.getValue().getSize());
					  	MultipartFile file = entry.getValue();
					  	if(file!=null){
			                   String[] allowedType = { "image/bmp", "image/gif", "image/jpeg", "image/png" };
			                   boolean allowed = Arrays.asList(allowedType).contains(file.getContentType());
					  		 if (!allowed) {
			                       response.getWriter().write("error|不支持的类型");
			                       logger.warn("upload error|不支持的类型");
			                       return;
			                   }
					  		 String fi = file.getOriginalFilename();
			                   // 提取文件拓展名
			                   String fileNameExtension = fi.substring(fi.indexOf("."), fi.length());
			                   // 生成实际存储的真实文件名
			                   String realName = UUID.randomUUID().toString() + fileNameExtension;
			                   // 图片存放的真实路径
			                   String realPath = request.getServletContext().getRealPath("/upload") + "/" + realName;
			                   String absolutePath = request.getServletContext().getRealPath("/upload") + "/" + realName;
			                   // 将文件写入指定路径下
			                   // ---- get Img size
			                   BufferedImage sourceImg =ImageIO.read((FileInputStream)file.getInputStream());
			                   int width = sourceImg.getWidth();
			                   int height = sourceImg.getHeight();  
			                   // end
			                   file.transferTo(new File(realPath));
			                   System.out.println("return url:"+request.getContextPath() + "/upload/" + realName);
			                   if(width > 600){
			                	   double rate = (double)height/width;
			                	   System.out.println("rate"+rate);
			                	   width = 600;
			                	   height = (int) (width*rate);
			                   }
			                  
			                   // 返回图片的URL地址
			                   response.getWriter().write(realName+"|"+width+"|"+height);
					  	}
				  }
	    	  }else{
	 			 response.getWriter().write("error|rrrrrrr");
	    	  }
		  }
		 
	}
	@RequestMapping(value = "/upload")
	private void upload(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
    	
//    	response.setHeader("Access-Control-Allow-Origin", "http://localhost:8011");  // 第二个参数填写允许跨域的域名称，不建议直接写 "*"
//    	response.setHeader("Access-Control-Allow-Headers", "X-Requested-With");
//    	response.setHeader("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
//
//    	// 接收跨域的cookie
//    	response.setHeader("Access-Control-Allow-Credentials", "true");
		 CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(
	                request.getSession().getServletContext());
		 if(multipartResolver.isMultipart(request)){

			 MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
			  Map<String, MultipartFile> fileMap = multiRequest.getFileMap();
//	    	  while(fileNames.hasNext()){
			  if(!fileMap.isEmpty()){
				  for (Map.Entry<String, MultipartFile> entry : fileMap.entrySet()) {
					  	System.out.println("key= " + entry.getKey() + " and value= " + entry.getValue().getSize());
					  	MultipartFile file = entry.getValue();
					  	if(file!=null){
			                   String[] allowedType = { "image/bmp", "image/gif", "image/jpeg", "image/png" };
			                   boolean allowed = Arrays.asList(allowedType).contains(file.getContentType());
					  		 if (!allowed) {
			                       response.getWriter().write("error|不支持的类型");
			                       logger.warn("upload error|不支持的类型");
			                       return;
			                   }
					  		 String fi = file.getOriginalFilename();
			                   // 提取文件拓展名
			                   String fileNameExtension = fi.substring(fi.indexOf("."), fi.length());
			                   // 生成实际存储的真实文件名
			                   String realName = UUID.randomUUID().toString() + fileNameExtension;
			                   // 图片存放的真实路径
			                   String realPath = request.getServletContext().getRealPath("/upload") + "/" + realName;
			                   String absolutePath = request.getServletContext().getRealPath("/upload") + "/" + realName;
			                   // 将文件写入指定路径下
			                   System.out.println("upload fileNameExtension:"+fileNameExtension+" realName:"+realName
			                		   +" realPath:"+realPath+" absolutePath:"+absolutePath);
			                   file.transferTo(new File(realPath));
			                   System.out.println("return url:"+request.getContextPath() + "/upload/" + realName);
			          
			                   // 返回图片的URL地址
			                   response.getWriter().write(request.getContextPath() + "/upload/" + realName);
					  	}
				  }
	    	  }else{
	 			 response.getWriter().write("error|rrrrrrr");
	    	  }
			  
		 }
	}


}
