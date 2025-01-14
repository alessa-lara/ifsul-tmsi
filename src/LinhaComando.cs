namespace LinhaComando;

using System.CommandLine;

public class LinhaComando {
    public void ValidarComandos(string[] args) {
        Option idOpcao = new Option<int> ("--id", "") {IsRequired = true};
        Option habilidadeOpcao = new Option<int[]> ("--habilidade", "") {AllowMultipleArgumentsPerToken = true, Arity = ArgumentArity.OneOrMore};
        Option raridadeOpcao = new Option<int> ("--raridade", "");
        Option engastesOpcao = new Option<int[]> ("--engastes", "") {AllowMultipleArgumentsPerToken = true, Arity = ArgumentArity.OneOrMore};
        Option atiradorOpcao = new Option<bool> ("--atirador", "") {Arity = ArgumentArity.Zero};
        Option espadachimOpcao = new Option<bool> ("--espadachim", "") {Arity = ArgumentArity.Zero};
        Option elementoOpcao = new Option<string> ("--elemento", "");
        Option tipoOpcao = new Option<string> ("--tipo", "");
        Option armaOpcao = new Option<int> ("--arma");


        Command armadurasComando = new("armaduras", "") {
            habilidadeOpcao, engastesOpcao, atiradorOpcao, espadachimOpcao, raridadeOpcao
        };
        Command armasComando = new("armas", "") {
            engastesOpcao, tipoOpcao, elementoOpcao, raridadeOpcao
        };
        Command joiasComando = new("joias", "") {
            habilidadeOpcao, raridadeOpcao
        };
        Command talismasComando = new("talismas", "") {
            habilidadeOpcao, engastesOpcao, raridadeOpcao
        };
        Command habilidadesComando = new("habilidades", "") {
            habilidadeOpcao
        };
        Command conjuntosComando = new("conjuntos", "") {
            habilidadeOpcao, engastesOpcao, elementoOpcao, armaOpcao, raridadeOpcao
        };


        Command conjuntosAtualizar = new("conjuntos") {
            idOpcao, habilidadeOpcao, engastesOpcao, elementoOpcao, armaOpcao, raridadeOpcao
        };
        Command talismasAtualizar = new("talismas", "") {
            idOpcao, habilidadeOpcao, engastesOpcao, raridadeOpcao
        };

        Command conjuntosRemover = new("conjuntos") {idOpcao};
        Command talismasRemover = new("talismas") {idOpcao};


        Command criarComando = new("criar", "Cria uma nova entrada na tabela") {
            conjuntosComando, talismasComando
        };
        Command listarComando = new("listar", "Lista os items de uma tabela") {
            armadurasComando, armasComando, joiasComando, conjuntosComando, talismasComando, habilidadesComando
        };
        Command atualizarComando = new("atualizar", "Atualiza um item de uma tabela") {
            conjuntosAtualizar, talismasAtualizar
        };
        Command removerComando = new("remover", "Remove uma entrada de uma tabela") {
            conjuntosRemover, talismasRemover
        };


        RootCommand root = [criarComando, listarComando, atualizarComando, removerComando];

        int exit = root.Invoke(args);

        if (args.Length == 0 | exit == 1) {
            System.Environment.Exit(1);
        }
    }
}