<%-- 
    Document   : CadastroBateriasjsp
    Created on : 19 de ago. de 2023, 17:16:58
    Author     : cauan
--%>

<%@page import="Conexao.ConexaoDAO"%>
<%@page import="Conexao.Cadastra"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Central baterias</title>
    </head>
    <body>
        <h1>Cadastro de baterias</h1>
        <p class="text-center">
            <%
                ConexaoDAO bateria = new ConexaoDAO();
                
                //recebe dado digitado pelo input e retorna para o atributo encapsulado *nome*
                String nome = request.getParameter("nomeBateria");
                bateria.setNome(nome);
                
                // converte dado do input para double e passa o tipo de dado para o atributo encapsulado *preco*
                String valor = request.getParameter("valorBateria");
                double preco = 0.0;
                try {
                    preco = Double.parseDouble(valor);     
                } catch (NumberFormatException e) {
                    
                }  
               // bateria.setPreco(preco);         
      
                
                //converte de String para um dado tipo double oe passa o tipo de dado para o atributo encapsulado *ampere*
                String valorAmpere = request.getParameter("ampereBateria");
                double ampere = 0.0;
                try {
                    ampere = Double.parseDouble(valorAmpere);
                } catch (NumberFormatException e) {
                }
                
                String qtnd = request.getParameter("quantidade");
                int quantidade = 0;
                
                try {
                    quantidade = Integer.parseInt(qtnd);
                } catch (NumberFormatException e) {
                }
                    //bateria.setQuantidade(quantidade);
                
                out.println(nome);
                out.println(preco);
                out.println(ampere);  
                
                Cadastra cadastraJSP = new Cadastra();                
                cadastraJSP.cadastra(bateria);
            %>
        </p>    
    </body>
</html>
