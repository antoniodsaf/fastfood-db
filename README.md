# Banco de dados - RDS - PostgreSQL (fastfood-app)

Este repositorio contem configuracoes feitas em terraforms para subir uma instancia postgres na AWS (utilizando o servico Amazon RDS).

## Detalhes do RDS

Detalhes da instancia:
- Nome da instancia: fastfood-db
- Classe (**Instance Class**): db.t3.micro
- Nome do banco de dados (**DB Name**): fastfood
- Versão do mecanismo (**Engine Version**): 14
- IDs do grupo de segurança da VPC (**VPC Security Group IDs**):     sg-0af8c2b09564180ff, sg-0cc77bd74b5a59e66
- Nome do grupo de sub-redes do DB (**DB Subnet Group Name**): fastfood-db-subnet-group

## Motivação de utilizar Amazon RDS com pgsql

- **Facilidade de Gestão**: O Amazon RDS automatiza tarefas rotineiras de banco de dados, como provisionamento, aplicação de patches, backup e recuperação, permitindo que você se concentre em suas aplicações.

- **Escalabilidade**: Escalonamento do banco de dados PostgreSQL para cima ou para baixo com facilidade, conforme a necessidade de sua aplicação, sem nenhum tempo de inatividade.

- **Alta Disponibilidade**: O Amazon RDS suporta implantações Multi-AZ, proporcionando alta disponibilidade e suporte a failover para seus bancos de dados PostgreSQL.

- **Segurança**: O Amazon RDS oferece criptografia em repouso e em trânsito, junto com isolamento de rede usando Amazon VPC, garantindo que seus dados estejam seguros.

- **Monitoramento de Desempenho**: Com o Amazon CloudWatch, você pode monitorar o desempenho do seu banco de dados PostgreSQL e configurar alarmes para detectar e responder rapidamente a problemas.

## Diagrama

![Diagrama de entidade e relacionamento](/doc/ER-diagram.JPG)