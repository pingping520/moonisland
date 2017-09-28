package cn.com.moonisland.controller;

import java.io.File;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import cn.com.moonisland.pojo.About;
import cn.com.moonisland.pojo.Message;
import cn.com.moonisland.service.AboutService;

@Controller
@RequestMapping(value="/about")
public class AboutController {
	@Autowired
	private AboutService aboutService;
	
	/**
	 * 跳转到添加页
	 */
	@RequestMapping(value="toAdd")
	public ModelAndView toAdd(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/WEB-INF/admin/addAbout.jsp");
		return mv;
	}
	
	/**
	 * 添加
	 */
	@RequestMapping(value="/add")
	@ResponseBody
	public int addAbout(About about){
		int result = this.aboutService.addAbout(about);
		return result;
	}
	
	/**
	 * 图片文件上传
	 */
	@RequestMapping(value="/upload")
	@ResponseBody
	public Message uploadImg(HttpServletRequest request,@RequestParam("file") MultipartFile file) throws Exception{
		Message message = new Message();
		if(!file.isEmpty()){//判断文件非空、写入上传路劲
			//获取上传路径
			String path = request.getServletContext().getRealPath("/images/");
			System.out.println(path);
			//获取上传原始文件名
			String fileName = file.getOriginalFilename();
			System.out.println(fileName);
			//防止用户上传相同名称的图片
			String timeStemp = new Date().getTime()+"";
			fileName = timeStemp+"_"+fileName;
			File filePath = new File(path,fileName);//完整路径
			System.out.println(filePath);
			//判断路径是否存在、如果不存在、创建
			if(!filePath.getParentFile().exists()){
				filePath.getParentFile().mkdirs();
			}
			//上传图片
			file.transferTo(filePath);
			message.setCode(1);
			message.setInfo(fileName);
			return message;

		}else{
			message.setCode(1);
			message.setInfo("error");
			return message;
		}		
	}
	
	/**
	 * 跳转到更新页
	 */
	@RequestMapping(value="/toUpdate")
	public ModelAndView toUpdate(About about){
		ModelAndView mv = new ModelAndView();
		System.out.println(about.getAboutId());
		About abt = this.aboutService.findAbout(about);
		System.out.println(abt);
		mv.setViewName("/WEB-INF/admin/updateAbout.jsp");
		mv.addObject("about", abt);
		return mv;		
	}
	
	/**
	 * 更新
	 */
	@RequestMapping(value="/update")
	@ResponseBody
	public int updateAbout(About about){
		int result = this.aboutService.updateAbout(about);
		return result;
	}
	
	/**
	 * 查看全部
	 */
	@RequestMapping(value="/findAll")
	public ModelAndView findAll(){
		ModelAndView mv = new ModelAndView();
		List<About> aboutList = this.aboutService.abouts();
		mv.setViewName("/WEB-INF/admin/about.jsp");
		mv.addObject("aboutList",aboutList);
		return mv;
	}

}
