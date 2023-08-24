package com.shop.app.product.dto;

import java.util.List;

import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import com.shop.app.product.entity.Product;
import com.shop.app.product.entity.ProductDetail;

import lombok.Data;

@Data
public class ProductCreateDto {
	@NotNull(message = "상품카테고리는 필수입력입니다.")
	private int categoryId;
	@NotNull(message = "상품명은 필수입력입니다.")
	private String productName;
	@NotNull(message = "상품가격은 필수입력입니다.")
	private int productPrice;
	private List<ProductDetail> productDetail;
//	private String optionName;
//	private String optionValue;
//	private int additionalPrice;
//	private int saleState;
	
	public Product toProduct() {
		return Product.builder()
				.categoryId(categoryId)
				.productName(productName)
				.productPrice(productPrice)
				.build();
	}
	
//	public ProductDetail toproductDetail() {
//		return ProductDetail.builder()
//				.optionName(optionName)
//				.optionValue(optionValue)
//				.additionalPrice(additionalPrice)
//				.saleState(saleState)
//				.build();
//	}
}
