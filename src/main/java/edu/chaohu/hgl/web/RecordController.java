package edu.chaohu.hgl.web;


import edu.chaohu.hgl.dto.Result;
import edu.chaohu.hgl.entity.Record;
import edu.chaohu.hgl.entity.Stock;
import edu.chaohu.hgl.entity.User;
import edu.chaohu.hgl.service.RecordService;
import edu.chaohu.hgl.service.StockService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.List;


@Controller
@RequestMapping("/record")
public class RecordController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private RecordService recordService;
	@Autowired
	private StockService stockService;

	@RequestMapping(value = "/toAddRecord", method = RequestMethod.GET)
	private String toAddRecord(Model model, HttpServletRequest request, HttpServletResponse response) {
		try {
			User user = (User) request.getSession().getAttribute("user");
			if (user==null){
				response.sendRedirect(request.getContextPath()+"/main/toLogin");
			}
			model.addAttribute("stockList",stockService.queryAllStock());
		} catch (IOException e) {
			logger.error(e.getMessage(),e);
		}
		String type = request.getParameter("type");
		if ("RK".equals(type)){
			return "consumable_material_in";
		}else {
			return "consumable_material_out";
		}

	}

	@RequestMapping(value = "/addRecord", method = RequestMethod.POST)
	@ResponseBody
	private Result addRecord(HttpServletRequest request, HttpServletResponse response) {
        String type =request.getParameter("type");
		try {
			User user = (User) request.getSession().getAttribute("user");
			if (user==null){
				response.sendRedirect(request.getContextPath()+"/main/toLogin");
			}
			String productName = request.getParameter("productName");
			Record record = new Record();
			record.setProductName(stockService.queryOne(productName).getProductName());
			record.setPrice(new BigDecimal(request.getParameter("price")));
			record.setUpdateDate(new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("updateDate")));
			record.setType(type);
			record.setUpdateNumber(Integer.parseInt(request.getParameter("updateNumber")));
			record.setProductCode(productName);
			if (record!=null){
				int res =recordService.addRecord(record);
				if (res==1){
					if ("RK".equals(type)){
						return new Result(true,"入库成功");
					}else {
						return new Result(true,"出库成功");
					}
				}
			}else {
				return new Result(false,"表单不能为空");
			}

		} catch (Exception e) {
			logger.error(e.getMessage(),e);
		}
        if ("RK".equals(type)){
            return new Result(false,"入库失败");
        }else {
            return new Result(false,"出库失败");
        }

	}




}
