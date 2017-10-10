package cn.com.moonisland.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.com.moonisland.pojo.Message;
import cn.com.moonisland.pojo.Pic;
import cn.com.moonisland.service.PicService;
import net.coobird.thumbnailator.Thumbnails;


@Controller
@RequestMapping("/pic")
public class PicController {
	@Autowired
	PicService picService;
	
	@RequestMapping(value="/topic")
	public ModelAndView topic(){
		ModelAndView mView=new ModelAndView();
		mView.setViewName("/WEB-INF/admin/addpic.jsp");
		return mView;
	}
	@RequestMapping(value="/doadd")
	@ResponseBody
	public int doadd(Pic p){
		int resule = this.picService.insert(p);
		return resule;
	}
	@RequestMapping("/toupdatepic")
	public ModelAndView toupdate(int id){
		ModelAndView mView=new ModelAndView();
		List<Pic> ls= this.picService.findbyid(id);
		for (Pic pic : ls) {
			System.out.println(pic.getPicId());
		}
		Pic pic=ls.get(0);
		mView.setViewName("/WEB-INF/admin/updatepic.jsp");
		mView.addObject("pic",pic);
		return mView;
	}
	@RequestMapping("/updatepic")
	@ResponseBody
	public int doupdate(Pic p){
		int result = picService.update(p);
		return result;
	}
	
	
	@RequestMapping(value="/update2")
	@ResponseBody
	public Message uploadImage2(
		@RequestParam(value="file",required=false) MultipartFile file,
		@RequestParam(value="file1",required=false) MultipartFile file1,
		@RequestParam(value="file2",required=false) MultipartFile file2,
		@RequestParam(value="file3",required=false) MultipartFile file3,
		HttpServletRequest request) throws Exception{
		Message message = new Message();
		
		if (file!=null && !file.isEmpty()) {
			return ajaxUpload(file, request, message);
		}
		if (file1!=null && !file1.isEmpty()) {
			return ajaxUpload(file1, request, message);
		}
		if (file2!=null && !file2.isEmpty()) {
			return ajaxUpload(file2, request, message);
		}
		if (file3!=null && !file3.isEmpty()) {
			return ajaxUpload(file3, request, message);
		}
		message.setCode(0);
		message.setInfo("error");
		return message;
	}

	private Message ajaxUpload(MultipartFile file, HttpServletRequest request, Message message)throws IOException {
		//上传文件路径
		String path = request.getServletContext().getRealPath("/images/");
		String filename = file.getOriginalFilename();//获取原始文件名
		//防止用户上传相同名称的文件
		String time=new Date().getTime()+"";
		filename = time+"_"+filename;
		File filepath=new File(path, filename);//完整路径
		System.out.println("filepath:"+filepath);
		//判断路径是否存在，不存在就创建
		if (!filepath.getParentFile().exists()) {
			filepath.getParentFile().mkdirs();
		}
		//上传图片
		file.transferTo(filepath);
		//生成缩略图
		String filesmallname=time+"_small_"+file.getOriginalFilename();
		File filesamllpath=new File(path, filesmallname);//完整路径
		Thumbnails.of(filepath).scale(0.2).toFile(filesamllpath);
		message.setCode(1);
		message.setInfo(filename);
		return message;
	}
	
	/**
	 * 查询全部品牌
	 */
	@RequestMapping(value="/findAll")
	public ModelAndView findAllBrand(){
		ModelAndView mv = new ModelAndView();
		List<Pic> picList = this.picService.findall();
		mv.setViewName("/WEB-INF/admin/pic.jsp");
		mv.addObject("picList", picList);
		return mv;		
	}
	//单值查询
	@RequestMapping(value="/findbyid")
	public ModelAndView findbyidPic(int id){
		ModelAndView mv = new ModelAndView();
		Pic pic=(Pic) this.picService.findbyid(id);
		mv.addObject("pic", pic);
		return mv;		
	}
	/*
	 * 更新状态
	 * */
	@RequestMapping(value="/check")
	@ResponseBody
	public int checkPic(Pic p){
		int result = this.picService.checkPic(p);
		return result;
	}
	
	@RequestMapping(value="/findlimit")
	public ModelAndView findlimitPic(int num1,int num2){
		ModelAndView mv = new ModelAndView();
		Map<String, Integer> map=new HashMap<>();
		num1=(num1-1)*5;
		map.put("num1",num1);
		map.put("num2",5);
		List<Pic> ls=this.picService.findlimit(map);
		mv.setViewName("/WEB-INF/admin/pic.jsp");
		mv.addObject("picList", ls);
		return mv;		
	}
	
	@RequestMapping(value="/pagecount")
	@ResponseBody
	public int pagecount(){
		int result = this.picService.pagecount();
		return result;
	}
}
