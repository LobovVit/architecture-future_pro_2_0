# Технический радар

Ниже приведён расширенный технический радар в стиле **AOE Technology Radar**.

## Кольца
- **Adopt** — использовать как стандарт целевой архитектуры;
- **Trial** — внедрять через пилоты и ограниченные домены;
- **Assess** — изучать и применять точечно;
- **Hold** — не развивать как основу целевой платформы.

## Квадранты
- **Языки и фреймворки**
- **Практики и паттерны**
- **Платформы и эксплуатация**
- **Инструменты**

---

## 1. Языки и фреймворки

| Элемент | Статус | Обоснование |
|---|---|---|
| Go | Adopt | Основной стек для новых финтех- и интеграционных сервисов |
| Java + Spring Boot | Adopt | Подходит для enterprise- и финансовых сервисов |
| Python | Adopt | Основной стек для AI/ML и data processing |
| SQL | Adopt | Базовый язык для аналитики, витрин и semantic layer |
| dbt | Trial | Подходит для управляемых трансформаций и governed metrics |
| Kafka Streams / Flink APIs | Trial | Перспективный стек для near-real-time обработки |
| PowerBuilder | Hold | Legacy UI, не должен развиваться |
| SQL Server 2008 T-SQL как центр логики | Hold | Не должен быть точкой развития целевой платформы |

## 2. Практики и паттерны

| Элемент | Статус | Обоснование |
|---|---|---|
| Событийная архитектура (Event-Driven Architecture) | Adopt | Основной способ междоменных интеграций |
| Domain-Driven Design (DDD) | Adopt | Основа bounded contexts и domain ownership |
| Data Product Thinking | Adopt | Нужен для domain-oriented аналитики |
| Self-Service BI | Adopt | Прямая бизнес-цель трансформации |
| Data Governance by Design | Adopt | Критично для медицинских и финансовых данных |
| API First для синхронных команд | Adopt | Нужен для командных сценариев и публичных API |
| Data Mesh | Trial | Внедрять поэтапно через пилоты |
| CQRS для отдельных доменов | Assess | Полезно точечно, но не как глобальный стандарт |
| Event Sourcing | Assess | Подходит не для всех контекстов, дорог в эксплуатации |
| ESB-centric integration | Hold | Camel должен остаться только как compatibility bridge |
| DWH-centric business logic | Hold | Нужно выводить из критического пути |

## 3. Платформы и эксплуатация

| Элемент | Статус | Обоснование |
|---|---|---|
| Kafka / Managed Kafka | Adopt | Основа событийной платформы |
| Schema Registry | Adopt | Обязателен для data contracts и эволюции схем |
| Object Storage + Lakehouse (Iceberg/Delta) | Adopt | Базовый аналитический слой |
| Kubernetes | Adopt | Основная платформа запуска сервисов |
| Observability stack | Adopt | Нужен для контроля сервисов, data freshness и аудита |
| IAM / SSO / RBAC / ABAC | Adopt | Основа security и модели доступа |
| CDC / Connectors | Trial | Полезны для мягкой миграции из legacy |
| Платформа stream processing | Trial | Следующий шаг после пилота event platform |
| FinOps / cost governance | Trial | Нужен по мере роста облачной платформы |
| Serverless для вспомогательных интеграций | Assess | Можно использовать точечно |
| Multi-region active-active | Assess | Возможен для части критичных сервисов, но дорог для старта |
| Apache Camel как центральная интеграционная шина | Hold | Не должен быть целевой интеграционной шиной |
| Legacy on-prem DWH как центральная платформа | Hold | Не соответствует целевому горизонту 3 лет |

## 4. Инструменты

| Элемент | Статус | Обоснование |
|---|---|---|
| GitLab CI / GitHub Actions / Jenkins | Adopt | Стандартный слой CI/CD |
| Terraform | Adopt | Базовый инструмент IaC |
| PlantUML / C4-PlantUML | Adopt | Подходит для архитектурных артефактов |
| Data Catalog / Lineage tool | Adopt | Нужен для governed self-service |
| Policy engine / masking tooling | Adopt | Нужен для privacy и доступа к чувствительным данным |
| BI-платформа с semantic layer | Adopt | Целевой аналитический инструмент |
| dbt Cloud / orchestration tooling | Trial | Имеет смысл после пилота data products |
| OpenMetadata / DataHub / аналоги | Trial | Выбор через пилот и сравнительную оценку |
| Miro Event Storming | Adopt | Подходит для DDD discovery и работы с доменами |
| Power BI поверх legacy DWH как основной BI слой | Hold | Временное состояние, не целевой стандарт |
