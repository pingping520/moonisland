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
import cn.com.moonisland.pojo.ReturnOrder;
import cn.com.moonisland.service.CommentService;
import cn.com.moonisland.service.ReturnorderService;
import net.coobird.thumbnailator.Thumbnails;
import sun.invoke.empty.Empty;

@Controller
@RequestMapping(value="returnOrder")
public class ReturnOrderController {
	
	@Autowired
	private ReturnorderService returnorderService;
	
	//通过goodsID分页查询
	@RequestMapping(value="findbygoodsidpageReturn")
	public ModelAndView findbygoodsidpageReturn(String goodsid,int page){
		ModelAndView mView=new ModelAndView();
		Map<String, Object> map=new HashMap<>();
		if (goodsid==null) {
			goodsid=null;
		}
		page=(page-1)*10;
		map.put("goodsid", goodsid);
		map.put("page",page);
		List<ReturnOrder> ls=this.returnorderService.findbygoodsidPage(map);
		mView.setViewName("/WEB-INF/admin/returnorder.jsp");
		mView.addObject("returngoodsList", ls);
		mView.addObject("goodsid", goodsid);
		return mView;
	}
	//添加退货订单
	@RequestMapping(value="addReturn")
	public ModelAndView addReturn(ReturnOrder order){
		ModelAndView mView=new ModelAndView();
		int r=this.returnorderService.addReturn(order);
		mView.setViewName("/WEB-INF/admin/returnorder.jsp");
		mView.addObject("result", r);
		return mView;
	}
	
	//分页查询
	@RequestMapping(value="findpageReturn")
	public ModelAndView findpageReturn(int page){
		ModelAndView mView=new ModelAndView();
		page=(page-1)*10;
		List<ReturnOrder> ls=this.returnorderService.findbypage(page);
		int count=this.returnorderService.pageCount();
		mView.setViewName("/WEB-INF/admin/returnorder.jsp");
		mView.addObject("returnList", ls);
		mView.addObject("count", count);
		return mView;
	}

	//通过userID分页查询
	@RequestMapping(value="findbyuseridpageReturn")
	public ModelAndView findpageReturn2(String userid,int page){
		ModelAndView mView=new ModelAndView();
		Map<String, Object> map=new HashMap<>();
		if (userid==null) {
			userid=null;
		}
		page=(page-1)*10;
		map.put("userid", userid);
		map.put("page",page);
		List<ReturnOrder> ls=this.returnorderService.findbyuserid(map);
		mView.setViewName("/WEB-INF/admin/returnorder.jsp");
		mView.addObject("returnList", ls);
		mView.addObject("userid", userid);
		return mView;
	}
	
	//查询一共有几页	
	@RequestMapping(value="pagecountReturn")
	@ResponseBody
	public int pagecountReturn(){
		ModelAndView mView=new ModelAndView();
		mView.setViewName("/WEB-INF/admin/returnorder.jsp");
		int count=this.returnorderService.pageCount();
		return count;
	}
	//通过userID查询一共有几页	
	@RequestMapping(value="pagecountReturn2")
	@ResponseBody
	public int pagecountReturn2(String userid){
		ModelAndView mView=new ModelAndView();
		mView.setViewName("/WEB-INF/admin/returnorder.jsp");
		int count=this.returnorderService.pageCount2(userid);
		return count;
	}
	//通过goodsID查询一共有几页	
	@RequestMapping(value="goodspagecountReturn2")
	@ResponseBody
	public int goodspagecountReturn2(String goodsid){
		System.out.println("1111111111111111111111111");
		ModelAndView mView=new ModelAndView();
		mView.setViewName("/WEB-INF/admin/returnorder.jsp");
		System.out.println("============================"+goodsid);
		int count=this.returnorderService.findbygoodsidCount(goodsid);
		return count;
	}
	//更新状态
	@RequestMapping(value="statusReturn")
	public ModelAndView deleteReturn(ReturnOrder order){
		ModelAndView mView=new ModelAndView();
		int r=this.returnorderService.deleteReturn(order);
		mView.setViewName("/WEB-INF/admin/returnorder.jsp");
		mView.addObject("result", r);
		return mView;
	}
	
	//通过id查询
	@RequestMapping(value="selectbyidReturn")
	public ModelAndView selectbyidReturn(int id,HttpSession session){
		ModelAndView mView=new ModelAndView();
		ReturnOrder order2=this.returnorderService.selectReturnbyid(id);
		mView.setViewName("/WEB-INF/admin/returnorder.jsp");
		session.setAttribute("return", order2);
		return mView;
	}
	
	//跳到添加页
	@RequestMapping(value="toinsertReturn")
	public ModelAndView insert(){
		ModelAndView mView=new ModelAndView();
		mView.setViewName("/WEB-INF/admin/insertReturn.jsp");
		return mView;
	}
	
}
