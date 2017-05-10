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



@Controller
@RequestMapping("/upload-pic") // url:/模块/资源/{id}/细分 /seckill/list
public class UploadController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	
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
//			                   String realPath =request.getSession().getServletContext().getRealPath("/") + "upload/"+realName;
			                   String realPath = request.getServletContext().getRealPath("/upload") + "/" + realName;
			                   // 将文件写入指定路径下
			                   // ---- get Img size
			                   BufferedImage sourceImg =ImageIO.read((FileInputStream)file.getInputStream());
			                   int width = sourceImg.getWidth();
			                   int height = sourceImg.getHeight();  
			                   // end
			                   File newFile = new File(realPath);
			                   file.transferTo(newFile);
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
	
	@RequestMapping(value = "/upload/headpic")
	private void upload(HttpServletRequest request,
			HttpServletResponse response
			) throws ServletException, IOException{
    	
		 CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(
	                request.getSession().getServletContext());
		 if(multipartResolver.isMultipart(request)){
			 MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
			  Map<String, MultipartFile> fileMap = multiRequest.getFileMap();
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
			                   String realPath = request.getServletContext().getRealPath("/img") +"/"+realName;
			                   // 将文件写入指定路径下
			                   File realFile = new File(realPath);
			                   if(realFile == null){
			                	   response.getWriter().write("error|file path not exsist");
			                   }else{
			                	   file.transferTo(new File(realPath));
				                   String res ="";
				                   res = realName;
				                   response.getWriter().write(res);
			                   }
			                 
					  	}
				  }
	    	  }else{
	 			 response.getWriter().write("error|no file");
	    	  }
			  
		 }
	}
	
	
	


}
