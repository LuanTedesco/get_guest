# Get_Guest - Sistema de Convites para Casamento Online

Bem-vindo ao Get_Guest, um aplicativo em Rails que oferece aos noivos uma forma conveniente de gerenciar convites para o casamento online. Com o Get_Guest, os noivos podem enviar convites personalizados para diferentes grupos de convidados (convidados normais, padrinhos e família) através de links exclusivos. Os convidados podem acessar os links para aceitar o convite e verificar detalhes importantes, como a localização do casamento.

## Funcionalidades Principais

1. **Convites Personalizados**: O Get_Guest permite que os noivos gerem links únicos para diferentes grupos de convidados. Esses links são enviados aos convidados correspondentes, garantindo uma experiência personalizada para cada grupo.

2. **Aceitação de Convites**: Os convidados podem acessar seus links de convite para visualizar o convite detalhado e confirmar a presença no casamento. Através dessa funcionalidade, os noivos podem ter uma visão clara do número de convidados que confirmaram a presença.

3. **Verificação de Localização**: Os convidados têm acesso a informações importantes, como a localização do casamento, facilitando a organização e o planejamento da participação no evento.

4. **Área Administrativa Protegida**: O aplicativo possui uma área administrativa protegida por login e senha, permitindo que os noivos acessem a lista de convidados que aceitaram o convite. Essa área é restrita e garante a privacidade dos dados dos convidados.

## Instalação

Para executar o Get_Guest localmente em sua máquina, siga estas etapas:

1. Certifique-se de ter o Ruby instalado em sua máquina.

2. Faça o clone deste repositório para sua máquina local.

3. Navegue até o diretório do projeto e instale as dependências do Ruby executando o seguinte comando:

   ```
   bundle install
   ```

4. Em seguida, configure o banco de dados executando as migrações:

   ```
   rails db:migrate
   ```

5. Crie um usuário administrativo para acessar a área administrativa:

   ```
   rails console
   User.create!(email: 'seu_email@example.com', password: 'sua_senha')
   ```

6. Inicie o servidor local com o comando:

   ```
   rails server
   ```

7. Abra seu navegador e acesse a aplicação em: `http://localhost:3000`

## Uso

1. **Envio de Convites**: Os noivos devem acessar a área administrativa para gerar os links de convite exclusivos para cada grupo de convidados (convidados normais, padrinhos e família). Os links são enviados aos convidados através de meios de comunicação apropriados, como e-mail ou mensagem de texto.

2. **Aceitação de Convites**: Os convidados devem acessar os links de convite recebidos e usar essa página para confirmar a presença no casamento. Eles também podem verificar detalhes importantes, como a localização do casamento, através do mesmo link.

3. **Acesso à Área Administrativa**: Para acessar a área administrativa, os noivos devem entrar em `http://localhost:3000/admin` e fazer login usando o e-mail e senha criados durante a instalação.

## Contribuição

Se você quiser contribuir com melhorias para o Get_Guest, ficaremos felizes em receber suas contribuições. Siga os passos abaixo para enviar suas alterações:

1. Faça um fork deste repositório.

2. Crie uma nova branch com o nome da sua feature ou correção:

   ```
   git checkout -b nome-da-sua-branch
   ```

3. Faça as alterações desejadas e adicione os commits.

4. Envie suas alterações para o seu repositório fork:

   ```
   git push origin nome-da-sua-branch
   ```

5. Abra um pull request para que possamos analisar suas mudanças e incorporá-las ao projeto principal.

## Autor

Este projeto foi criado com amor e dedicação por [Luan Tedesco](https://github.com/LuanTedesco).

## Licença

O Get_Guest é um software de código aberto licenciado sob a licença [MIT](https://opensource.org/licenses/MIT). Sinta-se à vontade para usar, modificar e distribuir o aplicativo de acordo com os termos da licença.

Agradecemos por utilizar o Get_Guest e esperamos que ele facilite o gerenciamento dos convites para o seu casamento. Se tiver alguma dúvida ou sugestão, sinta-se à vontade para abrir um problema no repositório. Desejamos a você um casamento incrível e repleto de momentos inesquecíveis!
