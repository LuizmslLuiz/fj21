package br.com.caelum.mvc.logica;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class ListaContatosLogic implements Logica {
	
	public String executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		
				List<Contato> contato = new ContatoDao().getLista();
				req.setAttribute("contatos", contato);
				return "ListaContato.jsp";
	}

}
