package edu.chaohu.hgl.web;


import edu.chaohu.hgl.dto.Result;
import edu.chaohu.hgl.entity.Stock;
import edu.chaohu.hgl.entity.User;
import edu.chaohu.hgl.service.StockService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@Controller
@RequestMapping("/stock")
public class StockController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private StockService stockService;

	@RequestMapping(value = "/toStockManage", method = RequestMethod.GET)
	private String toStockManage(Model model, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = (User) request.getSession().getAttribute("user");
			if (user==null){
				response.sendRedirect(request.getContextPath()+"/main/toLogin");
			}
			List<Stock> stocks = stockService.queryAllStock();

			model.addAttribute("stocks",stocks);

		} catch (IOException e) {
			logger.error(e.getMessage(),e);
		}
		return "storage_manage";
	}

	@RequestMapping(value = "/addStock", method = RequestMethod.POST)
	@ResponseBody
	private Result addStock(Stock stock, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = (User) request.getSession().getAttribute("user");
			if (user==null){
				response.sendRedirect(request.getContextPath()+"/main/toLogin");
			}
			if (stock!=null){
				if (stockService.queryOne(stock.getProductCode())!=null){
					return new Result(false,"增加失败，该编号已存在");
				}
				int res =stockService.addStock(stock);
				if (res==1){
					return new Result(true,"增加成功");
				}
			}else {
				return new Result(false,"表单不能为空");
			}

		} catch (IOException e) {
			logger.error(e.getMessage(),e);
		}
		return new Result(false,"增加失败");
	}

	@RequestMapping(value = "/updateStock", method = RequestMethod.POST)
	@ResponseBody
	private Result updateStock(Stock stock, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = (User) request.getSession().getAttribute("user");
			if (user==null){
				response.sendRedirect(request.getContextPath()+"/main/toLogin");
			}
			if (stock!=null){
				if (stockService.queryOne(stock.getProductCode())==null){
					return new Result(false,"修改失败，该编号不存在");
				}
				int res =stockService.updateStock(stock);
				if (res==1){
					return new Result(true,"修改成功");
				}
			}else {
				return new Result(false,"表单不能为空");
			}

		} catch (IOException e) {
			logger.error(e.getMessage(),e);
		}
		return new Result(false,"修改失败");
	}

	@RequestMapping(value = "/deleteStock", method = RequestMethod.POST)
	@ResponseBody
	private Result deleteStock(Stock stock, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = (User) request.getSession().getAttribute("user");
			if (user==null){
				response.sendRedirect(request.getContextPath()+"/main/toLogin");
			}
			if (stock!=null){
				if (stockService.queryOne(stock.getProductCode())==null){
					return new Result(false,"删除失败，该编号不存在");
				}
				int res =stockService.updateStock(stock);
				if (res==1){
					return new Result(true,"删除成功");
				}
			}else {
				return new Result(false,"表单不能为空");
			}

		} catch (IOException e) {
			logger.error(e.getMessage(),e);
		}
		return new Result(false,"删除失败");
	}

	@RequestMapping(value = "/queryStockByCode", method = RequestMethod.POST)
	@ResponseBody
	private Result queryStockByCode(HttpServletRequest request) {
		try {
			String productCode = request.getParameter("productName");
			Stock stock = stockService.queryOne(productCode);
			return new Result(true,stock);
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
		}
		return new Result(false,"查询失败");
	}

}
