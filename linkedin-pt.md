# Perfil LinkedIn — Eduardo Oliveira

---

## Título

Senior Software Engineer | .NET/C# + Java/Spring Boot | AWS · Microservices · Event-Driven | English C2 | Remote, US/EU time zones

<!-- Título em inglês de propósito: recruiters de empresas dos EUA buscam em inglês.
Alternativas:
A) Senior Backend Engineer | .NET & Java/Spring Boot on AWS | Microservices, DDD, 50M+ users | Fluent English (C2) | Remote (US hours)
B) Senior Software Engineer — .NET/C# + Java backend at 50M-user scale | AWS, microservices | English C2 | open to remote contract, US time zones
-->

---

## Sobre

Escrevo os serviços de backend de uma plataforma de recompensas de banco que uns 50 milhões de pessoas usam, em 3 segmentos de negócio. Você acumula pontos usando produtos do Itaú no app, sobe de nível e gasta esses pontos em cupons, descontos, taxas de empréstimo melhores, esse tipo de coisa. A parte interessante do meu trabalho é manter isso de pé quando uma campanha triplica (~3x) o tráfego de um dia para o outro — absorvemos sem downtime e cortamos o MTTR ~30% no caminho.

A maior parte é .NET e C# (ASP.NET Core, Web API), um pouco de Java e Spring Boot, tudo na AWS. Desenho as APIs, otimizo as queries lentas em DynamoDB e PostgreSQL, e passo um bom tempo no Datadog descobrindo por que a latência mexeu. Os últimos anos foram quase todos em sistemas event-driven, então é aí que eu rendo mais.

Me importo bastante com código claro o suficiente para ninguém ser acordado por causa dele às 2 da manhã. Uso Clean Architecture, DDD e SOLID quando ajudam e deixo de lado quando não — já vi os três virarem burocracia. Também faço bastante code review e pareio com os devs plenos do time, que acabou sendo a parte do trabalho que mais gosto.

No momento estou estudando para a AWS Solutions Architect Associate e terminando uma pós em Arquitetura de Software. Trabalho remoto com empresas dos EUA, tenho overlap tranquilo com os fusos americanos, e estou aberto a full-time ou contrato.

**Stack:** C#, .NET (Core/6/7/8+), ASP.NET Core, ASP.NET Core Web API, Java, Spring Boot, Entity Framework, Dapper · AWS (ECS, EC2, Lambda, DynamoDB, S3, SQS, SNS, CloudWatch), Docker, Kubernetes, Terraform · SQL Server, PostgreSQL, MariaDB · Microsserviços, Event-Driven, DDD, Clean/Arquitetura Hexagonal, TDD, CI/CD · Datadog, Splunk, Grafana, xUnit, Testcontainers, NBomber

Inglês (C2, certificado EF SET) · Português (nativo)

---

## Experiência

### Engenheiro de Software Sênior | C#/.NET & Java/Spring Boot | AWS

**CI&T** (cliente: Itaú) · Abril 2025 – Presente · Remoto (Brasil)

- Construí e evoluí microsserviços AWS em C#/.NET e Java/Spring Boot para uma plataforma de 50M+ usuários, suportando a expansão de 2 para 3 segmentos de negócio sem quebrar compatibilidade retroativa.
- Redesenhei contratos de domínio e fronteiras de serviço (mensageria assíncrona via Kafka) para reduzir o acoplamento entre times e habilitar entrega em paralelo para 4 times entre bounded contexts.
- Melhorei a observabilidade em produção com Datadog, Splunk e StackSpot para acelerar detecção de incidentes e análise de causa raiz, cortando o MTTR ~30%.
- Otimizei as camadas de DynamoDB, ECS e EC2 para absorver picos de ~3x de tráfego durante campanhas e suportar deploys sem downtime via canary releases e feature flags.
- Liderei code reviews (~15 PRs/semana), fiz mentoria de 2 engenheiros plenos em práticas event-driven e AWS, e coordenei a entrega com produto, QA e SRE.

### Engenheiro de Software Sênior | C# & .NET · Entity Framework · MariaDB | Docker e AWS

**Base2 Tecnologia** · Abril 2024 – Abril 2025 · Remoto (Brasil)

- Fui responsável pela entrega de APIs REST e integrações síncronas/assíncronas para uma plataforma de energia solar em .NET Core, C#, ASP.NET Core Web API, Entity Framework e Dapper, com responsabilidade ponta a ponta por design e implementação.
- Acelerei o MariaDB nas rotas mais movimentadas com indexação direcionada, tuning de queries e Dapper nos caminhos quentes, cortando o tempo de resposta ~40% nesses endpoints.
- Construí as suítes de teste que o projeto nunca teve e levei a cobertura de 0 a cerca de 90%: unitários e de integração com xUnit, NSubstitute e Testcontainers, carga e stress com NBomber, tudo no CI/CD.
- Construí ambientes de desenvolvimento baseados em Docker e dashboards no Grafana, e integrei AWS S3, SQS, SNS, CloudWatch e Lambda em fluxos assíncronos, padronizando o setup local e dando ao time visibilidade em tempo real dos fluxos assíncronos.
- Construí o frontend voltado ao cliente em React e TypeScript junto com as APIs, entregando features de ponta a ponta sem depender de repasse para outro time de frontend.
- Fui promovido de Pleno depois de ~15 meses em entregas críticas. Conduzi o onboarding de novos contratados e virei a pessoa que o time procurava sobre arquitetura backend.

### Engenheiro de Software Pleno | C# & .NET · Entity Framework · MariaDB | Docker e AWS

**Base2 Tecnologia** · Janeiro 2023 – Abril 2024 · Remoto (Brasil)

- Entreguei features de backend para a plataforma de energia solar — APIs REST, processamento em lote, integrações com terceiros — em .NET Core, ASP.NET Core Web API, Entity Framework e Dapper.
- Levei testes automatizados (unitários, integração, carga) para um time que só fazia QA manual, cortando regressões em produção ~50% e aumentando a confiança no código.
- Containerizei o desenvolvimento local com Docker Compose, cortando o setup de novos devs de ~1 dia para menos de 1 hora e padronizando o ambiente.
- Trabalhei com produto e QA para transformar as regras de negócio de energia renovável em código limpo e testável.

### Engenheiro de Software Júnior | C# & .NET Framework · Entity Framework · SQL Server | MVC

**Markup Sistemas** · Janeiro 2021 – Dezembro 2022 · Ipatinga, Brasil (Presencial)

- Construí 4 módulos ERP de ponta a ponta (manufatura, faturamento, entrega, ponto de venda) em C# / .NET Framework 4.8, ASP.NET MVC e Razor para clientes industriais.
- Fiz tuning de queries T-SQL, stored procedures e da integração do Entity Framework com SQL Server, cortando o tempo de execução dos relatórios ~50% enquanto o acesso a dados aguentava volumes grandes.
- Melhorei a interface do backoffice com HTML, CSS e jQuery para ~50 usuários internos, reduzindo o tempo de entrada de dados no dia a dia.

---

## Formação

- **Bacharelado, Ciência da Computação** — Estácio · Agosto 2023 – Dezembro 2027 (em andamento)
- **Pós-graduação, Arquitetura de Software** — Instituto Faculeste · Agosto 2024 – Agosto 2025
- **Pós-graduação, Desenvolvimento de Sistemas com C#** — Instituto Faculeste · Agosto 2024 – Agosto 2025

---

## Competências

O LinkedIn permite 50 competências e a busca do Recruiter filtra por essa lista — preencha todas. Fixe as 3 mais buscadas pelas vagas-alvo como "Principais Competências". Use os termos em inglês: recruiters globais buscam em inglês.

**Fixar como Top 3:** .NET · Microservices · AWS

**Lista completa (adicionar todas):**
.NET · .NET Core · C# · ASP.NET Core · ASP.NET Core Web API · Java · Spring Boot · Microservices · Event-Driven Architecture · Distributed Systems · AWS (Amazon Web Services) · Amazon DynamoDB · AWS Lambda · Amazon SQS · Amazon SNS · Amazon ECS · Amazon EC2 · Domain-Driven Design (DDD) · Clean Architecture · Hexagonal Architecture · SOLID · Software Architecture · System Design · REST APIs · LINQ · Entity Framework · EF Core · Dapper · PostgreSQL · Microsoft SQL Server · MariaDB · NoSQL · Docker · Kubernetes · Terraform · CI/CD · Test-Driven Development (TDD) · Unit Testing · Integration Testing · xUnit · Datadog · Splunk · Grafana · Observability · Scalability · High Availability · Performance Tuning · Message Queues · Apache Kafka · Backend Development · Full-Stack Development · Design Patterns · React · React.js · TypeScript · Git · GitHub Copilot · AI-Assisted Development · Agile Methodologies

---

## Certificações

- AWS Certified Solutions Architect – Associate (em andamento, previsão 2026)
- EF SET English Certificate 71/100 (C2 Proficient)

---

## Idiomas

- Português — Nativo
- Inglês — Proficiência Profissional Plena (C2)
