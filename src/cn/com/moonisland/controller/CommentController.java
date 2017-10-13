package cn.com.moonisland.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.com.moonisland.dao.CommentDao;
import cn.com.moonisland.pojo.Comment;
import cn.com.moonisland.pojo.Message;
import cn.com.moonisland.service.CommentService;

import net.coobird.thumbnailator.Thumbnails;
import sun.invoke.empty.Empty;

@Controller
@RequestMapping(value="/comment")
public class CommentController {
	
	@Autowired
	private CommentService commentService;
	//根据userID查找
	@RequestMapping(value="/selectbyuseridComment")
	public ModelAndView selectbyuseridComment(String userid,int page){
		ModelAndView mView=new ModelAndView();
		Map<String, Object> map=new HashMap<>();
		if (userid==null) {
			userid=null;
		}
		page=(page-1)*5;
		map.put("userid", userid);
		map.put("page",page);
		List<Comment> ls= commentService.findbyuserid(map);
		mView.setViewName("/WEB-INF/admin/comment.jsp");
		mView.addObject("commentList", ls);
		mView.addObject("userid", userid);
		return mView;
	}
	//根据goodsID查找
	@RequestMapping(value="/selectbygoodsidComment")
	@ResponseBody
	public List<Comment> selectbygoodsidComment(String goodsid,int page){
		Map<String, Object> map=new HashMap<>();
		page=(page-1)*5;
		map.put("goodsid", goodsid);
		map.put("page", page);
		List<Comment> ls= commentService.findbygoodsid(map);
		for (Comment comment : ls) {
			System.out.println(comment.getGoodsId());
		}
		return ls;
	}
	//添加评论
	@RequestMapping(value="/addComment")
	public ModelAndView addComment(Comment comment){
		ModelAndView mView=new ModelAndView();
		int r=this.commentService.addComment(comment);
		mView.setViewName("/WEB-INF/admin/comment.jsp");
		mView.addObject("result", r);
		return mView;
	}
	//分页查询
	@RequestMapping(value="/findpageComment")
	public ModelAndView findpageComment(int page){
		ModelAndView mView=new ModelAndView();
		mView.addObject("page", page);
		page=(page-1)*10;
		List<Comment> ls=this.commentService.findbypage(page);
		int count=this.commentService.findpagecount();
		mView.setViewName("/WEB-INF/admin/comment.jsp");
		mView.addObject("commentList", ls);
		mView.addObject("count", count);
		return mView;
	}
	@RequestMapping(value="/findpageCommentList")
	@ResponseBody
	public List<Comment> findpageCommentList(int page){
		page=(page-1)*10;
		List<Comment> ls=this.commentService.findbypage(page);
		int count=this.commentService.findpagecount();
		return ls;
	}

	//通过userID查询一共有几页
	@RequestMapping(value="/pagecountComment")
	@ResponseBody
	public int pagecountComment(String userid){
		int count=this.commentService.pageCount(userid);
		return count;
	}
	//通过goodsID查询一共有几页
	@RequestMapping(value="/pagebygoodsidcountComment")
	@ResponseBody
	public int pagecountbygoodsidComment(String goodsid){
		int count=this.commentService.pageCountbyGoodsid(goodsid);
		return count;
	}
	//更新状态
	@RequestMapping(value="/statusComment")
	public ModelAndView deleteComment(Comment comment){
		ModelAndView mView=new ModelAndView();
		int r=this.commentService.deleteComment(comment);
		mView.setViewName("/WEB-INF/admin/comment.jsp");
		mView.addObject("result", r);
		return mView;
	}
	
	//通过id查询
	@RequestMapping(value="/selectbyidComment")
	public ModelAndView selectbyidComment(int commentId){
		ModelAndView mView=new ModelAndView();
		Comment comment=new Comment();
		comment.setCommentId(commentId);
		Comment comment2=this.commentService.selectbyidComment(comment);
		System.out.println("CommentId"+comment2);
		mView.addObject("comment", comment2);
		mView.setViewName("/WEB-INF/admin/updateComment.jsp");
		return mView;
	}
	
	//更新评论
	@RequestMapping(value="updateComment")
	public ModelAndView updateComment(Comment comment){
		System.out.println("222");
		ModelAndView mView=new ModelAndView();
		int r=this.commentService.updateComment(comment);
		System.out.println(r);
		mView.setViewName("/WEB-INF/admin/comment.jsp");
		mView.addObject("result", r);
		return mView;
	}
	
	//跳到更新页
	@RequestMapping(value="toupdComment")
	public ModelAndView update(Comment comment){
		ModelAndView mView=new ModelAndView();
		Comment comment2=this.commentService.selectbyidComment(comment);
		mView.setViewName("/WEB-INF/admin/updateComment.jsp");
		mView.addObject("comment", comment2);
		return mView;
	}
	
	//跳到添加页
	@RequestMapping(value="toinsertComment")
	public ModelAndView insert(){
		ModelAndView mView=new ModelAndView();
		mView.setViewName("/WEB-INF/admin/insertComment.jsp");
		return mView;
	}
	
	//图片上传
	@RequestMapping(value="uploadComment")
	@ResponseBody
	public String uploadImage(HttpServletRequest request,@RequestParam("file") MultipartFile file) throws Exception{
		//判断文件非空，写入上传路径
		if (file!=null && !file.isEmpty()) {
			//上传文件路径
			String path=request.getServletContext().getRealPath("/images/");
			System.out.println("path:"+path);
			//上传文件名
			String filename=file.getOriginalFilename();
			System.out.println("filename:"+filename);
			String time=new Date().getTime()+"";
			filename=time+"_"+filename;
			File filepath=new File(path,filename);//完整路径
			System.out.println("filepath:"+filepath);
			//判断路径是否存在
			if (!filepath.getParentFile().exists()) {
				filepath.getParentFile().mkdirs();
			}
			//上传图片
			file.transferTo(filepath);
			//生成缩略图
			String filesmallname=time+"_small_"+file.getOriginalFilename();
			File filesmallpath=new File(path,filesmallname);//完整路径
			System.out.println("filesmallpath"+filesmallname);
			Thumbnails.of(filepath).scale(0.2).toFile(filesmallpath);
			
			return filename;
		}
		
		return "error";
	}
	@RequestMapping(value="uploadsComment")
	@ResponseBody
	public Message uploadImages(HttpServletRequest request,
			@RequestParam(value="file",required=false) MultipartFile file,
			@RequestParam(value="file2",required=false) MultipartFile file2,
			@RequestParam(value="file3",required=false) MultipartFile file3
			) throws Exception{
		Message message = new Message();
		//判断文件非空，写入上传路径
		if (file!=null && !file.isEmpty()) {
			return ajaxUpload(file, request,message);
		}
		if (file2!=null && !file2.isEmpty()) {
			return ajaxUpload(file2, request,message);
		}
		if (file3!=null && !file3.isEmpty()) {
			return ajaxUpload(file3, request,message);
		}
		message.setCode(0);
		message.setInfo("error");
		return message;
	}
	private Message ajaxUpload(MultipartFile file, HttpServletRequest request,Message message) throws IOException {
		//ooo
		//上传文件路径
		String path = request.getServletContext().getRealPath("/images/");
		String filename = file.getOriginalFilename();//获取原始文件名
		System.out.println("path:"+path);
		System.out.println("filename:"+filename);
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
		String filesmallname="small_"+filename;
		File filesamllpath=new File(path, filesmallname);//完整路径
		System.out.println(filesamllpath);
		Thumbnails.of(filepath).scale(0.2).toFile(filesamllpath);
		message.setCode(1);
		message.setInfo(filename);
		return message;
	}
}
