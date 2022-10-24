$(function(){
    var operacao   = "A"; // "A" = Adição
    var indice_selecionado = -1; 
    var tbLista = localStorage.getItem("tbLista");//Recuperar os dados armazenados
    tbLista     = JSON.parse(tbLista);//Convertendo a String para Objeto

    //adicionar som 
    var add       = new Audio();
    var comprado  = new Audio();
    var editar    = new Audio();
    var estoque   = new Audio();

    add.src       = "som/Adicionar.mp3";
    comprado.src  = "som/comprado.mp3";
    editar.src    = "som/editar.mp3";
    estoque.src   = "som/sem_estoque.mp3";

    if(tbLista  == null) // Caso não exista conteudo, iniciamos um vetor vazio!
        tbLista = [];

        //Adiciona novo registro
        function adicionar(){
            var cli = GetLista("Codigo", $("#txtCódigo").val());
            if(cli != null){ //Verifica se o codigo já está cadastrado
                alert("Código já cadastrado!");
                return;
            }
            var cliente    = JSON.stringify({
                Codigo     : $("#txtCódigo").val(),
                Descricao  : $("#txtDescrição").val(),
                Quantidade : $("#txtQuantidade").val()
            });
            tbLista.push(cliente);
            localStorage.setItem("tbLista", JSON.stringify(tbLista));
            add.play();
            alert("Registro cadastrado com sucesso!");

            validar();
            
            return true;

           
        }
        
        function validar(){
            var txtCodigo     = document.getElementById("txtCódigo").value;
            var txtDescrição  = document.getElementById("txtDescrição").value;
            var txtQuantidade = document.getElementById("txtQuantidade").value;

            if(!txtCodigo.value == ""){
                alert("Código não informado!")

                txtCodigo.focus();
                return false;
            }
            if(!txtDescrição.value == ""){
                alert("Descrição não informada!")

                txtDescrição.focus();
                return false;
            }
            if(!txtQuantidade.value == ""){
                alert("Quantidade não informada!")

                txtQuantidade.focus();
                return false;
            }
            

        }

        //Edita registro cadastrado
        function Editar(){
            tbLista[indice_selecionado] = JSON.stringify({
                Codigo     : $("#txtCódigo").val(),
                Descrição  : $("#txtDescricao").val(),
                Quantidade : $("#txtQuantidade").val()
                
            });
            localStorage.setItem("tbLista", JSON.stringify(tbLista));
            alert("Informações editadas com sucesso!")
            operacao = "A";
            return true;
        
        }

        //Listar conteúdo
        function Listar(){
            $("#tblListar").html("");
            $("#tblListar").html(
                "<thead>" + "<tr>" + "<th></th>" + 
                "<th>Código</th>" +
                "<th>Descrição</th>" +
                "<th>Quantidade</th>" +
                "</tr>" +
                "</thead>" +
                "<tbody>" +
                "</tbody>"
            );
            for(var i in tbLista){
                var cli = JSON.parse(tbLista[i]);
                    $("#tblListar tbody").append("<tr>" + //.append() method inserts a set of Node objects or string
                    "	<td><img src='img/editar.png' alt='"+i+"' class='btnEditar'/><img src='img/sem_estoque.png' alt='"+i+"' class='btnEstoque'/><img src='img/comprado.png' alt='"+i+"' class='btnCompra'/></td>" +
                    "	<td>"+cli.Codigo+"</td>" + 
                    "	<td>"+cli.Descricao+"</td>" + 
                    "	<td>"+cli.Quantidade+"</td>" +
                    "</tr>");
        }

        }

        //Função que exclui o resgitro
        function Estoque(){
            indice_selecionado = parseInt($(this).attr("alt"));
            tbLista.splice(indice_selecionado, 1);//O método splice() aletera o conteudo de uma lista, adicionando novos elementos enquanto remove elementos antigos.
            localStorage.setItem("tbLista", JSON.stringify(tbLista));
           
            alert("Sem Estoque");
        }

        function Comprar(){
            indice_selecionado = parseInt($(this).attr("alt"));
            localStorage.setItem("tbLista", JSON.stringify(tbLista));

            alert("Item Comprado!");
        }

        function GetLista(propriedade, valor){
            var cli   = null;
            for(var item in tbLista){
                var i = JSON.parse(tbLista[item]);
                if(i[propriedade] == valor)
                cli   = i;
            }
            return cli;
        }
        Listar();

        $("#frmCadastro").bind("submit", function(){
            if(operacao == "A")
                return adicionar();
            else
                return Editar();

        });

        $(".btnEditar").bind("click", function(){
            operacao = "E";
            indice_selecionado = parseInt($(this).attr("alt"));
            var cli  = JSON.parse(tbLista[indice_selecionado]);
                $("#txtCódigo").val(cli.Codigo);
                $("#txtDescrição").val(cli.Descricao);
                $("#txtQuantidade").val(cli.Quantidade);
                $("#txtCódigo").attr("readonly", "readonly");
                $("#txtCódigo").focus();
            editar.play();
        });

        $(".btnEstoque").bind("click", function(){
            indice_selecionado = parseInt($(this).attr("alt"));
            Estoque();
            Listar();
            estoque.play();
        });

        $('.btnCompra').bind('click', function(){
            indice_selecionado = parseInt($(this).attr("alt"));
            
            Comprar();
            Listar();
            comprado.play();
        });

});
