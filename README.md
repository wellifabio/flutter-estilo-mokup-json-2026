# Produtos
Exemplo de um app flutter que **abre dados Mockup** JSON, uma lista de produtos de papelaria.<br>Exemplo de arquivos de estilização com paleta de cores e tema.

## Tecnologias
- Flutter
- VsCode
- Android Studio

|Efeitos|WidGets|
|-|:-:|
|Tema|ThemeData.light().copyWith()|
|Imagens|Image.asset()|
|Assincronicidade|async|
|Carregar arquivos texto locais|rootBundle.loadString('assets/..');|
|Conversão de dados|json.encode(), json.decode()|
|Botões de controle de conteúdos em tela|ElevatedButton()|

|![Splash](./assets/slpash.png)|![Home](./assets/home.png)|
|-|-|
|Splash|Home|

# Para testar
- 1 Clone o repositório
- 2 Abra com VsCode, Abra o trminal **CTRL + "**, execute o comando `flutter pub get` para instalar as dependências
- 3 Navegue até o arquivo lib/main.dart e dê **play** ou execute o comando `flutter run` para rodar o projeto
- 4 Escolha navegador ou um emulador para testar
- O projeto irá abrir a tela de Splash com uma animação, preencha seu nome e clique em entrar.

## Aividades

## Entregas
crie um repositório público do github e hospede com prints das telas, tecnologias e instruções de como testar em README.md conforme este exemplo. Apresente ao seu professor.