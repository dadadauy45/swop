package com.swop.web.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import com.swop.domain.Product;
import com.swop.service.ProductService;
import com.swop.utils.CommenUUIDUtils;

public class AnnounceProductServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");

		String pname = "";
		// 商品名称
		String desc = ""; // 商品描述
		String goods_sort = ""; // 商品分类
		String address = ""; // 地址
		String want = ""; // 想要换
		String telephone = ""; // 联系电话
		String level_id = ""; // 新旧程度
		String cid = ""; // 类别
		String uid = ""; // 所属个人
		String fileName = ""; // 文件名
		// 表单字段元素的name属性值
		String filedName = ""; // 获取文件名称

		// 文件上传的名字

		//判断对应的文件是否处理完毕
		boolean flag = true;
		boolean flag_1 = true;
		boolean flag_2 = true;
		boolean flag_3 = true;
		boolean flag_4 = true;

		Product product = new Product();

		// 请求信息中的内容是否是multipart类型 (是否是文件上传的表单)
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);

		if (isMultipart) {
			// 创建爱你磁盘文件项工厂
			FileItemFactory factory = new DiskFileItemFactory();
			// 创建文件上传核心类
			ServletFileUpload upload = new ServletFileUpload(factory);
			upload.setHeaderEncoding("utf-8");
			try {
				// 解析from表单中所有文件
				@SuppressWarnings("unchecked")
				List<FileItem> items = upload.parseRequest(request);
				Iterator<FileItem> iter = items.iterator();
				while (iter.hasNext()) {
					FileItem item = (FileItem) iter.next();
					if (item.isFormField()) {
						// 判断，是普通表单
						fileName = item.getFieldName(); // 获得name属性值
						// 表单字段的name属性
						if (fileName.equals("pname")) {
							pname = item.getString("utf-8"); // 获得name属性的value值
						} else if (fileName.equals("desc")) {
							desc = item.getString("utf-8");
						} else if (fileName.equals("goods_sort")) {
							goods_sort = item.getString("utf-8");
						} else if (fileName.equals("address")) {
							address = item.getString("utf-8");
						} else if (fileName.equals("want")) {
							want = item.getString("utf-8");
						} else if (fileName.equals("telephone")) {
							telephone = item.getString("utf-8");
						} else if (fileName.equals("level_id")) {
							level_id = item.getString("utf-8");
						} else if (fileName.equals("cid")) {
							cid = item.getString("utf-8");
						} else if (fileName.equals("uid")) {
							uid = item.getString("utf-8");
						}
					} else {
						// 文件表单字段
						// 表单字段的name属性
						// 第一张

						// 获得文件名
						filedName = item.getName();
						if (filedName != null && filedName != "" && flag) {
							// 还有文件
							// 获得上传文件的内容
							InputStream in = item.getInputStream();
							String path_store = "F:\\upload";
							OutputStream out = new FileOutputStream(path_store + "/" + filedName);
							IOUtils.copy(in, out);
							in.close();
							out.close();

							// 删除临时文件
							item.delete();
							product.setPimage("/upload/" + filedName);
							flag = false;
						} else if (filedName != null && filedName != "" && flag_1) {
							InputStream in = item.getInputStream();
							String path_store = "F:\\upload";
							OutputStream out = new FileOutputStream(path_store + "/" + filedName);
							IOUtils.copy(in, out);
							in.close();
							out.close();

							// 删除临时文件
							item.delete();
							product.setPimage_1("/upload/" + filedName);
							flag_1 = false;
						} else if (filedName != null && filedName != "" && flag_2) {
							InputStream in = item.getInputStream();
							String path_store  = "F:\\upload";
							OutputStream out = new FileOutputStream(path_store + "/" + filedName);
							IOUtils.copy(in, out);
							in.close();
							out.close();

							// 删除临时文件
							item.delete();
							product.setPimage_2("/upload/" + filedName);
							flag_2 = false;
						} else if (filedName != null && filedName != "" && flag_3) {
							InputStream in = item.getInputStream();
							String path_store = "F:\\upload";
							OutputStream out = new FileOutputStream(path_store + "/" + filedName);
							IOUtils.copy(in, out);
							in.close();
							out.close();

							// 删除临时文件
							item.delete();
							product.setPimage_3("/upload/" + filedName);
							flag_3 = false;
						} else if (filedName != null && filedName != "" && flag_4) {
							InputStream in = item.getInputStream();
							String path_store = "F:\\upload";
							OutputStream out = new FileOutputStream(path_store + "/" + filedName);
							IOUtils.copy(in, out);
							in.close();
							out.close();

							// 删除临时文件
							item.delete();
							product.setPimage_4("/upload/" + filedName);
							flag_4 = false;
						}

					}
				}
			} catch (Exception ex) {
				ex.printStackTrace();
			}

			product.setPid(CommenUUIDUtils.getUUID());
			product.setPname(pname);
			product.setPrice(0d);
			product.setPdate(new Date());
			product.setIs_hot(1);
			product.setDesc(desc);
			product.setFun_sort("1");
			product.setGoods_sort(goods_sort);
			product.setAddress(address);
			product.setWant(want);
			product.setTelephone(telephone);
			product.setLevel_id(level_id);
			product.setState(0);
			product.setCid(cid);
			product.setUid(uid);
			product.setState(0);


			ProductService service = new ProductService();
			boolean flagProduct = service.announceProduct(product);
			if (flagProduct) {
				// 发布商品之后重定向到个人中心
				response.sendRedirect(request.getContextPath() + "/personalProduct");
			} else {
				
				 request.setAttribute("errorInfo", "发布失败，请重新发布！");
				 request.getRequestDispatcher("/exchange.jsp").forward(request, response);
			}

		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
