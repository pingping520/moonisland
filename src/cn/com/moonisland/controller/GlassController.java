package cn.com.moonisland.controller;

import java.io.File;
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

import cn.com.moonisland.pojo.Comment;
import cn.com.moonisland.pojo.Glass;
import cn.com.moonisland.pojo.Message;

import cn.com.moonisland.service.GlassService;

@Controller
@RequestMapping("/glass")
public class GlassController {
	@Autowired
	GlassService glassService;
	
	
	@RequestMapping(value="/findAllGlass")
	public ModelAndView findAllGlass(){
		ModelAndView mv = new ModelAndView();
		List<Glass> glassList=this.glassService.findall();
		mv.setViewName("/WEB-INF/admin/glass.jsp");
		mv.addObject("glassList", glassList);
		System.out.println(glassList);
		return mv;
	} 
	@RequestMapping(value="/updateglass")
	@ResponseBody
	public int updateglass(Glass glass){
		int r = this.glassService.update(glass);
		return r;
	}
	
	@RequestMapping(value="/toglass")
	public ModelAndView toglass(){
		ModelAndView mView=new ModelAndView();
		mView.setViewName("/WEB-INF/admin/addglass.jsp");
		return mView;
	}
	
	@RequestMapping(value="/updateGlass")
	public ModelAndView toupdateglass(int id){
		ModelAndView mView=new ModelAndView();
		List<Glass> glasss = this.glassService.findbyid(id);
		mView.setViewName("/WEB-INF/admin/updateGlass.jsp");
		mView.addObject("glass", glasss.get(0));
		return mView;
	}
	
	@RequestMapping(value="/addglass")
	@ResponseBody
	public int addGlass(Glass g){
		int resule = this.glassService.insert(g);
		return resule;
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
	@RequestMapping(value="/findlimit")
	public ModelAndView findlimitPic(int num1,int num2){
		ModelAndView mv = new ModelAndView();
		Map<String, Integer> map=new HashMap<>();
		num1=(num1-1)*5;
		map.put("num1",num1);
		map.put("num2",5);
		List<Glass> ls=this.glassService.findlimit(map);
		mv.setViewName("/WEB-INF/admin/glass.jsp");
		mv.addObject("glassList", ls);
		return mv;		
	}
	
	@RequestMapping(value="/pagecount")
	@ResponseBody
	public int pagecount(){
		int result = this.glassService.pagecount();
	
		return result;
	}
	
	//更新状态
	@RequestMapping(value="statusisActive")
	public ModelAndView statusisActive(Glass glass){
		ModelAndView mView=new ModelAndView();
		int r=this.glassService.updateisActive(glass);
		mView.setViewName("/WEB-INF/admin/glass.jsp");
		mView.addObject("result", r);
		return mView;
	}
}
