// Geral
const String L_FORMADO_DATA = "dd/MM/yyyy";

// Coleções
const String C_LIVRO = "livros";
const String C_PESSOA = "pessoas";
const String C_EMPRESTIMO = "emprestimos";

// Campos
// Livros
const String C_LIVRO_ID = "id";
const String C_LIVRO_NOME = "nome";
const String C_LIVRO_AUTOR = "autor";
const String C_LIVRO_OBSERVACAO = "observacao";
// Pessoas
const String C_PESSOA_ID = "id";
const String C_PESSOA_NOME = "nome";
const String C_PESSOA_ENDERECO = "endereco";
const String C_PESSOA_TELEFONE = "telefone";
//Emprestimos
const String C_EMPRESTIMO_ID = "id";
const String C_EMPRESTIMO_LIVRO_ID = "idLivro";
const String C_EMPRESTIMO_PESSOA_ID = "idPessoa";
const String C_EMPRESTIMO_DATA_RETIRADA = "dataRetirada";
const String C_EMPRESTIMO_DATA_DEVOLUCAO = "dataDevolucao";

// Labels
const String L_VAZIO = "";
const String L_SALVAR = "Salvar";
const String L_DELETAR = "Deletar";
const String L_EMPRESTAR = "Emprestar";
const String L_SELECIONAR = "Selecionar";
// Livros
const String L_CATALOGO_DE_LIVROS = 'Catalogo de livros';
const String L_NENHUM_LIVRO_ENCONTRADO = "Nenhum livro encontrado";
const String L_CADASTRAR = "Cadastrar Livro";
const String L_LIVRO_NOME = "Nome";
const String L_LIVRO_AUTOR = "Autor";
const String L_LIVRO_OBSERVACAO = "Observação";
const String L_EDITAR = "Editar Livro";
// Pessoas
const String L_NENHUMA_PESSOA_ENCONTRADA = "Nenhuma pessoa encontrada";
const String L_PESSOA_NOME = "Nome";
const String L_PESSOA_ENDERECO = "Endereço";
const String L_PESSOA_TELEFONE = "Telefone";
//Emprestar Livros
const String L_EMPRESTAR_LIVRO = "Emprestar Livro";
const String L_EMPRESTAR_LIVRO_DATA_DEVOLUCAO = "Data de devolução";

// Rotas
// Livros
const String R_DASHBOARD_LIVRO = "/dashboard_livro";
const String R_CADASTRAR_LIVRO = "/cadastrar_livro";
const String R_EDITAR_LIVRO = "/editar_livro";
// Pessoas
const String R_DASHBOARD_PESSOA = "/dashboard_pessoa";
const String R_EDITAR_PESSOA = "/editar_pessoa";
const String R_CADASTRAR_PESSOA = "/cadastrar_pessoa";
// Emprestar Livros
const String R_EMPRESTAR_LIVRO_PARA_PESSOA = "/emprestar_livro_para_pessoa";

// Erros
const String E_CAMPO_OBRIGATORIO = "Campo obrigatório";
