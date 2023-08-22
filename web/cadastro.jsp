<%-- 
    Document   : CadastroBateriasjsp
    Created on : 19 de ago. de 2023, 17:16:58
    Author     : cauan
--%>

<%@page import="Model.ConexaoDAO"%>
<%@page import="Model.ConexaoDAO"%>
<%@page import="Model.Cadastra"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Central baterias</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" 
              rel="stylesheet" 
              integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
              crossorigin="anonymous">
    </head>
    <body>
        <h1 class="p-3 bg-dark text-white">Central Baterias</h1>
        <p class="text-center">
            <%
                ConexaoDAO bateria = new ConexaoDAO();
                
                //recebe dado digitado pelo input e retorna para o atributo encapsulado *nome*
                String nome = request.getParameter("nomeBateria");
                bateria.setNome(nome);
                
                //converte de String para um dado tipo double oe passa o tipo de dado para o atributo encapsulado *ampere*
                String valorAmpere = request.getParameter("ampereBateria");
                double ampere = 0.0;
                try {
                    ampere = Double.parseDouble(valorAmpere);
                } catch (NumberFormatException e) {
                }
                bateria.setAmpere(ampere);
                
                // converte dado do input para double e passa o tipo de dado para o atributo encapsulado *preco*
                String valor = request.getParameter("valorBateria");
                double preco = 0.0;
                try {
                    preco = Double.parseDouble(valor);     
                } catch (NumberFormatException e) {
                    
                }  
               bateria.setPreco(preco);         
                    
                
                String qtnd = request.getParameter("quantidade");
                int quantidade = 0;
                
                try {
                    quantidade = Integer.parseInt(qtnd);
                } catch (NumberFormatException e) {
                }
                bateria.setQuantidade(quantidade);             
                Cadastra cadastraJSP = new Cadastra();                
                cadastraJSP.cadastra(bateria);
            %>
        </p>    
        <table class="mx-auto w-50 text-center">
            <h2 class="mx-auto text-center text-white bg-primary w-50">Cadastro de baterias</h2>
            <tr class="border-1 bg-primary text-white">
                <td  class="border-1">ID</td>
                <td  class="border-1">NOME</td>
                <td class="border-1 w-25">--</td>
                
                 
            </tr>
            <tr class="border-1">
                <td  class="border-1">asdasd</td>
                <td  class="border-1">asdasd</td>
                <td class="border-1">
                    <a href="alterar.jsp"><button type="submit" class="bg-dark text-white w-50 ">
                        Editar
                        </button></a>
                    <button class="bg-dark text-white">Deletar</button>
                </td>
            </tr>
            <tr class="border-1">
                <td  class="border-1">asdasd</td>
                <td  class="border-1">asdasd</td>
                  <td class="border-1 w-25">
                      <button class="bg-dark text-white w-50">Editar</button>
                      <button class="bg-dark text-white">Deletar</button>
                  </td> 
            </tr>                  
        </table>
    </body>
</html>
