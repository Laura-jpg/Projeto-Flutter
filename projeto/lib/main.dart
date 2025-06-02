import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: ListaEscritoresNacionais(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Livro {
  final String titulo;
  final String imagemUrl;

  const Livro({required this.titulo, required this.imagemUrl});
}

class Escritor {
  final String nome;
  final String imagemUrl;
  final String tagHero;
  final String biografia;
  final List<Livro> livros;

  const Escritor({
    required this.nome,
    required this.imagemUrl,
    required this.tagHero,
    required this.biografia,
    required this.livros,
  });
}

class ListaEscritoresNacionais extends StatefulWidget {
  const ListaEscritoresNacionais({Key? key}) : super(key: key);

  @override
  State<ListaEscritoresNacionais> createState() =>
      _ListaEscritoresNacionaisState();
}

class _ListaEscritoresNacionaisState extends State<ListaEscritoresNacionais> {
  final TextEditingController _searchController = TextEditingController();
  String _busca = '';

  final List<Escritor> escritores = const [
    Escritor(
      nome: 'Clarice Lispector',
      imagemUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/%281920-1977%29_Clarice_Lispector_6zxkp_please_credit%28palette.fm%29_%28cropped%29.png/250px-%281920-1977%29_Clarice_Lispector_6zxkp_please_credit%28palette.fm%29_%28cropped%29.png',
      tagHero: 'clarice',
      biografia:
          'Clarice Lispector (1920-1977) foi um dos maiores nomes da literatura brasileira do Século XX. Com seu romance inovador e com sua linguagem altamente poética, sua obra se destacou diante dos modelos narrativos tradicionais. Seu primeiro livro, “Perto do Coração Selvagem”, recebeu o Prêmio Graça Aranha.',
      livros: [
        Livro(
          titulo: 'Perto do Coração Selvagem - 1943',
          imagemUrl:
              'https://m.media-amazon.com/images/I/71jFv8WMDwL._AC_UF1000,1000_QL80_.jpg',
        ),
        Livro(
          titulo: 'Água viva - 1973',
          imagemUrl:
              'https://m.media-amazon.com/images/I/71hiWlcQceL._AC_UF1000,1000_QL80_.jpg',
        ),
        Livro(
          titulo: 'A Hora da Estrela - 1977',
          imagemUrl:
              'https://images-na.ssl-images-amazon.com/images/I/61TaHURu27L._AC_UL210_SR210,210_.jpg',
        ),
        Livro(
          titulo: 'Um sopro de vida - 1978',
          imagemUrl:
              'https://m.media-amazon.com/images/I/61NFU1vh7PL._AC_UF1000,1000_QL80_.jpg',
        ),
      ],
    ),
    Escritor(
      nome: 'Machado de Assis',
      imagemUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Machado_de_Assis_by_Marc_Ferrez.jpg/800px-Machado_de_Assis_by_Marc_Ferrez.jpg',
      tagHero: 'machado',
      biografia:
          'Machado de Assis (1839-1908) foi um escritor brasileiro, um dos nomes mais importantes da literatura brasileira do século XIX. Destacou-se principalmente no romance e no conto, embora tenha escrito crônicas, poesias, crítica literária e peças de teatro.',
      livros: [
        Livro(
          titulo: 'Helena - 1876',
          imagemUrl:
              'https://m.media-amazon.com/images/I/61POZw-4eKL._AC_UF1000,1000_QL80_.jpg',
        ),

        Livro(
          titulo: 'Memórias Póstumas de Brás Cubas - 1881',
          imagemUrl:
              'https://m.media-amazon.com/images/I/815u+SBDpJL._AC_UF1000,1000_QL80_.jpg',
        ),

        Livro(
          titulo: 'Quincas Borba - 1891',
          imagemUrl:
              'https://m.media-amazon.com/images/I/81v+PzH0aoL._UF894,1000_QL80_.jpg',
        ),

        Livro(
          titulo: 'Dom Casmurro - 1899',
          imagemUrl:
              'https://m.media-amazon.com/images/I/81XpG2iKTlL._AC_UF1000,1000_QL80_.jpg',
        ),
      ],
    ),
    Escritor(
      nome: 'Lima Barreto',
      imagemUrl:
          'https://images.prismic.io/maralto/ZxkGqoF3NbkBX7l2_LimaBarreto.jpg?auto=format,compress',
      tagHero: 'lima',
      biografia:
          'Lima Barreto (1881-1922) foi um importante escritor brasileiro da fase Pré Modernista da literatura. Sua obra está impregnada de fatos históricos e de uma perspectiva da sociedade carioca. Analisa os ambientes e os costumes do Rio de Janeiro e faz uma crítica à mentalidade burguesa da época.',
      livros: [
        Livro(
          titulo: 'O homem que sabia Javanês - 1911',
          imagemUrl:
              'https://m.media-amazon.com/images/I/61L-AOebsPL._AC_UF1000,1000_QL80_.jpg',
        ),
        Livro(
          titulo: 'Triste fim de Policarpo Quaresma - 1915',
          imagemUrl: 'https://m.media-amazon.com/images/I/71SL01dqwwL.jpg',
        ),
        Livro(
          titulo: 'Os Bruzundangas - 1922 ',
          imagemUrl:
              'https://m.media-amazon.com/images/I/71IMM-dEtZL._AC_UF1000,1000_QL80_.jpg',
        ),
        Livro(
          titulo: 'Clara dos anjos - 1948',
          imagemUrl:
              'https://m.media-amazon.com/images/I/91NSoZEiKDL._UF894,1000_QL80_.jpg',
        ),
      ],
    ),
    Escritor(
      nome: 'João do Rio',
      imagemUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/João_do_Rio_1921.png/800px-João_do_Rio_1921.png',
      tagHero: 'joao',
      biografia:
          'João do Rio (1881-1921), pseudônimo de Paulo Barreto, nasceu no Rio de Janeiro, no dia 5 de agosto de 1881. Filho de um professor de matemática e de uma dona de casa estudou no colégio São Bento onde mostrou seus dons literários.',
      livros: [
        Livro(
          titulo: 'As religiões no Rio - 1904',
          imagemUrl:
              'https://m.media-amazon.com/images/I/81kzf6l3lsL._AC_UF1000,1000_QL80_.jpg',
        ),
        Livro(
          titulo: 'A Alma Encantadora das Ruas - 1908',
          imagemUrl: 'https://m.media-amazon.com/images/I/71gH0qe5ifL.jpg',
        ),

        Livro(
          titulo: 'A bela madame Vargas - 1912',
          imagemUrl: 'https://m.media-amazon.com/images/I/61a-8JtOw+L.jpg',
        ),
        Livro(
          titulo: 'A mulher e os espelhos - 1919',
          imagemUrl: 'https://m.media-amazon.com/images/I/7131RqHnflL.jpg',
        ),
      ],
    ),
  ];

  List<Escritor> get escritoresFiltrados {
    if (_busca.isEmpty) return escritores;
    return escritores
        .where((e) => e.nome.toLowerCase().contains(_busca.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escritores nacionais')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                labelText: 'Buscar escritor',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (valor) {
                setState(() {
                  _busca = valor;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: escritoresFiltrados.length,
              itemBuilder: (context, index) {
                final escritor = escritoresFiltrados[index];
                return ListTile(
                  leading: Hero(
                    tag: escritor.tagHero,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        escritor.imagemUrl,
                        width: 60,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(escritor.nome),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetalheEscritor(escritor: escritor),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DetalheEscritor extends StatelessWidget {
  final Escritor escritor;

  const DetalheEscritor({Key? key, required this.escritor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(escritor.nome)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Hero(
              tag: escritor.tagHero,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  escritor.imagemUrl,
                  width: 200,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              escritor.biografia,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.book),
              label: const Text(
                'Livros',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TelaLivrosEscritor(escritor: escritor),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TelaLivrosEscritor extends StatelessWidget {
  final Escritor escritor;

  const TelaLivrosEscritor({Key? key, required this.escritor})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Principais obras de ${escritor.nome}')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: escritor.livros.length,
        itemBuilder: (context, index) {
          final livro = escritor.livros[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      livro.imagemUrl,
                      width: 80,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      livro.titulo,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
