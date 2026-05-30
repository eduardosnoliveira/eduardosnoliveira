# LinkedIn Profile — Eduardo Oliveira

---

## Headline

Senior Software Engineer | .NET/C# + Java/Spring Boot | AWS · Microservices · Event-Driven | English C2 | Remote, US/EU time zones

<!-- Alternatives:
A) Senior Backend Engineer | .NET & Java/Spring Boot on AWS | Microservices, DDD, 50M+ users | Fluent English (C2) | Remote (US hours)
B) Senior Software Engineer — .NET/C# + Java backend at 50M-user scale | AWS, microservices | English C2 | open to remote contract, US time zones
-->

---

## About

I write backend services for a bank rewards platform that about 50 million people use, across 3 business segments. You earn points using Itaú products in the app, climb tiers, and spend them on coupons, discounts, better loan rates, that kind of thing. The interesting part of my job is keeping it up when a campaign triples (~3x) traffic overnight — we absorb it with no downtime and cut MTTR ~30% along the way.

Most of it is .NET and C# (ASP.NET Core, Web API), some Java and Spring Boot, all on AWS. I design the APIs, tune the slow queries across DynamoDB and PostgreSQL, and spend a fair amount of time in Datadog working out why latency moved. The last few years have been mostly event-driven systems, so that's where I'm most useful.

I care a lot about code being clear enough that nobody gets paged over it at 2am. I reach for Clean Architecture, DDD and SOLID when they help and leave them alone when they don't — I've seen all three turn into busywork. I also review a lot of PRs and pair with the mid-level devs on the team, which turned out to be the part of the job I like most.

Currently studying for the AWS Solutions Architect Associate and wrapping up a postgrad in software architecture. I work remotely with US companies, overlap US time zones comfortably, and I'm open to full-time or contract.

**Stack:** C#, .NET (Core/6/7/8+), ASP.NET Core, ASP.NET Core Web API, Java, Spring Boot, Entity Framework, Dapper · AWS (ECS, EC2, Lambda, DynamoDB, S3, SQS, SNS, CloudWatch), Docker, Kubernetes, Terraform · SQL Server, PostgreSQL, MariaDB · Microservices, Event-Driven, DDD, Clean/Hexagonal Architecture, TDD, CI/CD · Datadog, Splunk, Grafana, xUnit, Testcontainers, NBomber

English (C2, EF SET certified) · Portuguese (native)

---

## Experience

### Senior Software Engineer | C#/.NET & Java/Spring Boot | AWS

**CI&T** (client: Itaú) · April 2025 – Present · Remote (Brazil)

- Built and evolved AWS microservices in C#/.NET and Java/Spring Boot for a 50M+ user platform, supporting expansion from 2 to 3 business segments while maintaining backward compatibility.
- Redesigned domain contracts and service boundaries (async Kafka messaging) to reduce cross-team coupling and enable parallel delivery for 4 teams across bounded contexts.
- Improved production observability with Datadog, Splunk, and StackSpot to accelerate incident detection and root-cause analysis, cutting MTTR ~30%.
- Optimized DynamoDB, ECS, and EC2 layers to absorb ~3x traffic spikes during marketing campaigns and support zero-downtime deploys via canary releases and feature flags.
- Led code reviews (~15 PRs/week), mentored 2 mid-level engineers on event-driven and AWS practices, and coordinated delivery with product, QA, and SRE stakeholders.

### Senior Software Engineer | C# & .NET · Entity Framework · MariaDB | Docker and AWS

**Base2 Tecnologia** · April 2024 – April 2025 · Remote (Brazil)

- Owned REST API and sync/async integration delivery for a solar energy platform in .NET Core, C#, ASP.NET Core Web API, Entity Framework, and Dapper, with end-to-end responsibility for design and implementation.
- Sped up MariaDB on the busiest routes with targeted indexing, query tuning, and Dapper in the hot paths, cutting response time ~40% on those endpoints.
- Built the test suites the project never had and took coverage from 0 to about 90%: unit and integration with xUnit, NSubstitute, and Testcontainers, load and stress with NBomber, all in CI/CD.
- Built Docker-based dev environments and Grafana dashboards, and integrated AWS S3, SQS, SNS, CloudWatch, and Lambda for asynchronous workflows, standardizing local setup and giving the team real-time visibility into async flows.
- Built customer-facing frontend in React and TypeScript alongside the APIs, so I could ship features end to end instead of waiting on a separate frontend handoff.
- Got promoted from mid-level after ~15 months on critical features. Ran onboarding for new hires and became the person people came to about backend architecture.

### Mid-Level Software Engineer | C# & .NET · Entity Framework · MariaDB | Docker and AWS

**Base2 Tecnologia** · January 2023 – April 2024 · Remote (Brazil)

- Delivered core backend features for the solar energy platform — REST APIs, batch processing, third-party integrations — in .NET Core, ASP.NET Core Web API, Entity Framework, and Dapper.
- Brought automated testing (unit, integration, load) to a team that had only done manual QA, cutting production regressions ~50% and raising trust in the code.
- Containerized local development with Docker Compose, cutting new-dev setup from ~1 day to under 1 hour and standardizing the environment.
- Worked with product and QA to turn renewable energy business rules into clean, testable code.

### Junior Software Engineer | C# & .NET Framework · Entity Framework · SQL Server | MVC

**Markup Sistemas** · January 2021 – December 2022 · Ipatinga, Brazil (On-site)

- Built 4 ERP modules end to end (manufacturing, billing, delivery, point-of-sale) in C# / .NET Framework 4.8, ASP.NET MVC, and Razor for industrial clients.
- Tuned T-SQL queries, stored procedures, and Entity Framework on SQL Server, cutting report run times ~50% while data access held up on big datasets.
- Improved the backoffice UI with HTML, CSS, and jQuery for ~50 internal users, cutting daily data-entry time.

---

## Education

- **Bachelor's in Computer Science** — Estácio · August 2023 – December 2027 (in progress)
- **Postgraduate Specialization, Software Architecture** — Instituto Faculeste · August 2024 – August 2025
- **Postgraduate Specialization, C# Systems Development** — Instituto Faculeste · August 2024 – August 2025

---

## Skills

LinkedIn allows 50 skills and Recruiter search filters on this list — fill all of them. Pin the 3 your target roles search most as "Top Skills".

**Pin as Top 3:** .NET · Microservices · AWS

**Full list (add all):**
.NET · .NET Core · C# · ASP.NET Core · ASP.NET Core Web API · Java · Spring Boot · Microservices · Event-Driven Architecture · Distributed Systems · AWS (Amazon Web Services) · Amazon DynamoDB · AWS Lambda · Amazon SQS · Amazon SNS · Amazon ECS · Amazon EC2 · Domain-Driven Design (DDD) · Clean Architecture · Hexagonal Architecture · SOLID · Software Architecture · System Design · REST APIs · LINQ · Entity Framework · EF Core · Dapper · PostgreSQL · Microsoft SQL Server · MariaDB · NoSQL · Docker · Kubernetes · Terraform · CI/CD · Test-Driven Development (TDD) · Unit Testing · Integration Testing · xUnit · Datadog · Splunk · Grafana · Observability · Scalability · High Availability · Performance Tuning · Message Queues · Apache Kafka · Backend Development · Full-Stack Development · Design Patterns · React · React.js · TypeScript · Git · GitHub Copilot · AI-Assisted Development · Agile Methodologies

---

## Certifications

- AWS Certified Solutions Architect – Associate (in progress, target 2026)
- EF SET English Certificate 71/100 (C2 Proficient)

---

## Languages

- Portuguese — Native or Bilingual
- English — Full Professional
