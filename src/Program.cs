namespace HuntersCompanion;

using Dapper;
using LinhaComando;
using Microsoft.Data.Sqlite;
using SQLiteFuncoes;
using System.Reflection;

class Program {
    static void Main(string[] args) {
        // Inicia e valida os argumentos dados pelo usuario
        LinhaComando cli = new();
        cli.ValidarComandos(args);

        // Divide os argumentos em suas devidas partes para criar posteriormente uma instrucao SQL
        string operacao = args[0];
        string tabela = args[1];

        string[] opcoes;
        if ( (args.Length - 2) % 2 == 1 ) {
            opcoes = new string[ ( (args.Length - 2) / 2) + 1 ];
        } else {
            opcoes = new string[ (args.Length - 2) / 2 ];
        }

        string[] argumentos = new string[opcoes.Length];

        int opcoesNullI = 0;
        int argsNullI = 0;
        for (int i = 2; i < args.Length; i++) {
            switch (args[i]) {
                case "--atirador":
                case "--espadachim":
                    opcoes[opcoesNullI] = args[i].Remove(0, 2);
                    opcoesNullI += 1;
                    argumentos[argsNullI] = "true";
                    argsNullI += 1;
                    continue;
                case "--id":
                case "--habilidade":
                case "--raridade":
                case "--engastes":
                case "--elemento":
                case "--tipo":
                case "--arma":
                    opcoes[opcoesNullI] = args[i].Remove(0, 2);
                    opcoesNullI += 1;
                    continue;
            }
            argumentos[argsNullI] = args[i];
            argsNullI += 1;
        }
        string query = SQLiteFuncoes.QueryBuilder(operacao, tabela, opcoes, argumentos);
        string db = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), "resources/HuntersCompanion.db");
        SqliteConnection conexao = new($"Data Source={db}");
        if (operacao == "listar") {
            SQLiteFuncoes.PesquisaBD(conexao, query, tabela);
        } else {
            int result = conexao.Execute(query);
            Console.WriteLine($"Modificado(s) {result} entradas.");
        }
    }
}