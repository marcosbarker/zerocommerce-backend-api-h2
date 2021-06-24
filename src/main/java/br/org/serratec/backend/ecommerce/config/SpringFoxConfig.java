package br.org.serratec.backend.ecommerce.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class SpringFoxConfig {

	@Bean
	public Docket api() {
		return new Docket(DocumentationType.SWAGGER_2)
				.select()
				.apis(RequestHandlerSelectors.basePackage("backend.ecommerce.controller"))
				.paths(PathSelectors.any())
				.build()
				.apiInfo(apiInfo());
	}
	
	private ApiInfo apiInfo() {
			return new ApiInfo(
				"Documentação ZeroCommerce",
				"API desenvolvida e consumida pelo site ZEROCOMMERCE",
				"Versão 3.0",
				"https://github.com/OsZeressemos/zeroCommerce",
				"Apache License Version 2.0",
				"https://github.com/OsZeressemos",
				Collections.emptyList() // Vendor Extensions
	 		);
  	}
 	}