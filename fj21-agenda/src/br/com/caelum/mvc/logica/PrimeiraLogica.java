package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PrimeiraLogica implements Logica {

	@Override
	public String executa(HttpServletRequest reg, HttpServletResponse res) throws Exception {

		System.out.println("Executa a logica....");
		System.out.println("Retornando o nome da página JSP ...");
		return "primeira-logica.jsp";
	}

}
