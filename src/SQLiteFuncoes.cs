namespace SQLiteFuncoes;

using System.Reflection;
using Dapper;
using Microsoft.Data.Sqlite;
using ObjetoTabelas;

public class SQLiteFuncoes {
    public static void PesquisaBD(SqliteConnection conexao, string query, string tabela) {
        IEnumerable<dynamic> resultados = [];
        switch (tabela) {
            case "armaduras":
                resultados = conexao.Query<Armaduras>(query);
                break;
            case "armas":
                resultados = conexao.Query<Armas>(query);
                break;
            case "joias":
                resultados = conexao.Query<Joias>(query);
                break;
            case "conjuntos":
                resultados = conexao.Query<Conjuntos>(query);
                break;
            case "talismas":
                resultados = conexao.Query<Talismas>(query);
                break;
            case "habilidades":
                resultados = conexao.Query<Habilidades>(query);
                break;
        }

        foreach (PropertyInfo prop in resultados.First().GetType().GetProperties()) {
            Console.Write($"{prop.Name} | ");
        }

        Console.WriteLine();

        foreach (object linha in resultados) {
            foreach(PropertyInfo prop in linha.GetType().GetProperties()) {
                string strProp = prop.GetValue(linha).ToString();
                switch (strProp) {
                    case "True":
                        Console.Write("\u25cf | ");
                        break;
                    case "False":
                        Console.Write("\u25cb | ");
                        break;
                    default:
                        Console.Write($"{strProp} | ");
                        break;
                }
            }
            Console.WriteLine();
        }
    }

    public static string QueryBuilder(string operacao, string tabela, string[] opcoes, string[] argumentos) {
        string query = "";
        switch (operacao) {
            case "criar":
                query = $"INSERT INTO {tabela} ";
                break;
            case "listar":
                query = $"SELECT * FROM {tabela} ";
                break;
            case "atualizar":
                query = $"UPDATE {tabela} ";
                break;
            case "remover":
                query = $"DELETE FROM {tabela} ";
                break;
        }

        if (operacao == "criar") {
            query += "(";
            for (int i = 0; i < opcoes.Length; i++) {
                query += $"{opcoes[i]}";
            }
            query += ") VALUES (";
            for (int i = 0; i < argumentos.Length; i++) {
                query += $"{argumentos[i]}";
            }
            query += ")";
            return query;
        }

        if (operacao == "listar" && opcoes.Length > 0) {
            query += "WHERE ";
            for (int i = 0; i < opcoes.Length; i++) {
                if (i > 0) {
                    query += "AND ";
                }
                query += $"{opcoes[i]}={argumentos[i]} ";
            }
            return query;
        }

        if (operacao == "atualizar") {
            query += "SET ";
            bool set = false;
            int idIndex = 0;
            for (int i = 0; i < opcoes.Length; i++) {
                if (opcoes[i] == "id") {
                    idIndex = i;
                    continue;
                }
                if (i > 0 && i < opcoes.Length && set == true) {
                    query += ", ";
                }
                query += $"{opcoes[i]}={argumentos[i]}";
                set = true;
            }
            query += $"WHERE {opcoes[idIndex]}={argumentos[idIndex]}";
            return query;
        }

        if (operacao == "remover") {
            query += $"WHERE {opcoes[0]=argumentos[0]}";
            return query;
        }

        return query;
    }
}