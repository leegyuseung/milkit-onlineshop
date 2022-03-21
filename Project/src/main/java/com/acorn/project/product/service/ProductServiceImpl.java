package com.acorn.project.product.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.acorn.project.product.dao.ProductDao;
import com.acorn.project.product.dto.ProductDto;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDao dao;

	@Override
	public void addProduct(ProductDto dto, ModelAndView mView, HttpServletRequest request) {
		//업로드된 파일의 정보를 가지고 있는 MultipartFile 객체의 참조값 얻어오기 
		MultipartFile myFile=dto.getMyFile();
		//원본 파일명
		String orgFileName=myFile.getOriginalFilename();
		
		// webapp/upload 폴더 까지의 실제 경로(서버의 파일시스템 상에서의 경로)
		String realPath=request.getServletContext().getRealPath("/upload");
		//저장할 파일의 상세 경로
		String filePath=realPath+File.separator;
		//디렉토리를 만들 파일 객체 생성
		File upload=new File(filePath);
		if(!upload.exists()) {//만일 디렉토리가 존재하지 않으면 
			upload.mkdir(); //만들어 준다.
		}
		//저장할 파일 명을 구성한다.
	 /*필요없을듯    String saveFileName=System.currentTimeMillis()+orgFileName;*/
		try {
			//upload 폴더에 파일을 저장한다.
			myFile.transferTo(new File(filePath+orgFileName));
			System.out.println(filePath+orgFileName);
		}catch(Exception e) {
			e.printStackTrace();
		}
		//dto 에 업로드된 파일의 정보를 담는다.
		dto.setImagePath("/upload/"+orgFileName);
		//fileDao 를 이용해서 DB 에 저장하기
		dao.insert(dto);
		//view 페이지에서 사용할 모델 담기 
		mView.addObject("dto", dto);
	}

	@Override
	public void getListProduct(ModelAndView mView) {
		List<ProductDto> list=dao.getList();
		mView.addObject("list", list);
	}

	@Override
	public void deleteProduct(String productId) {
		dao.delete(productId);
	}
	
	@Override
	public void getProduct(String productId, ModelAndView mView) {
		ProductDto dto=dao.getData(productId);
		mView.addObject("dto", dto);
	}

	@Override
	public void updateProduct(ProductDto dto) {
		dao.update(dto);
	}

	@Override
	public Map<String, Object> isExistProductId(String inputProductId) {
		 Map<String, Object> map= new HashMap<String, Object>();
	     map.put("isExist", dao.isExist(inputProductId));
	     return map;
	}

	
}
