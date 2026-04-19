# План управления рисками

## 1. Подход к управлению рисками

Для программы трансформации «Будущего 2.0» управление рисками должно быть встроено в архитектурный и организационный контур.  
Риски делятся на:
- снижаемые техническими решениями;
- снижаемые управленческими мерами;
- требующие смешанного подхода.

---

## 2. Риски, минимизируемые техническими решениями

### 2.1. Дублирование логики в DWH и новых сервисах
**Меры:**
- зафиксировать authoritative source per domain;
- запретить развитие новой бизнес-логики в legacy DWH через архитектурные решения (ADR);
- ввести migration backlog по выносу правил из DWH;
- настроить reconciliation old vs new на переходном периоде.

### 2.2. Хаос в событиях и контрактах
**Меры:**
- обязательный schema registry;
- versioning правил событий и backward compatibility policy;
- review процесса для data contracts;
- CI-проверки совместимости схем;
- стандарты для idempotency, retry, DLQ и replay.

### 2.3. Попадание запрещенных медицинских данных в self-service аналитику
**Меры:**
- выделенный secure medical contour;
- classification / policy engine;
- автоматическая маркировка и masking;
- deny-by-default доступ для medical-sensitive datasets;
- аудит и lineage доступа к данным.

### 2.4. Нестабильность streaming pipelines
**Меры:**
- единые runtime patterns для event processing;
- DLQ, retry, replay;
- тестирование отказоустойчивости пайплайнов;
- SLO по data freshness и monitoring lag.

### 2.5. Слабая observability
**Меры:**
- единый observability stack: metrics, logs, traces, audit;
- correlation ID для API и событий;
- дашборды по задержкам, потерям сообщений и ошибкам обработки.

### 2.6. Низкая производительность self-service портала
**Меры:**
- semantic layer и precomputed marts;
- разделение ad-hoc и production BI workloads;
- query governor и кэширование;
- профилирование тяжелых запросов.

---

## 3. Риски, минимизируемые управленческими подходами

### 3.1. Неправильное разделение доменов
**Меры:**
- domain discovery workshops;
- участие бизнеса, архитекторов и владельцев процессов;
- регулярный пересмотр boundaries в первые 12 месяцев;
- ADR на ключевые boundary decisions.

### 3.2. Сопротивление подразделений
**Меры:**
- назначение domain owners и data product owners;
- KPI по качеству данных и скорости вывода витрин;
- прозрачный roadmap по доменам;
- запуск пилотов в доменах с сильным sponsor’ом.

### 3.3. Недостаток компетенций
**Меры:**
- программа обучения по cloud, Kafka, streaming, governance;
- создание platform enablement team;
- внутренние шаблоны сервисов и интеграций;
- привлечение внешних экспертов на старте программы.

### 3.4. Программа воспринимается как чисто техническая миграция
**Меры:**
- steering committee с участием бизнеса, ИБ, data office и IT;
- квартальные architecture review;
- бизнес-метрики успеха: time-to-report, lead time новой витрины, доля governed datasets, доля удаленных legacy-зависимостей.

---

## 4. Риски, требующие смешанного подхода

### 4.1. Миграция из legacy DWH / Camel
**Технические меры:**
- anti-corruption layer;
- CDC / batch bridges;
- dual run и reconciliation;
- data quality checks.

**Управленческие меры:**
- поэтапный sunset plan;
- freeze новых фич в legacy;
- отдельный migration backlog;
- согласованный coexistence period с бизнесом.

### 4.2. Рост стоимости платформы
**Технические меры:**
- lifecycle policies и tiered storage;
- разделение hot / warm / cold data;
- FinOps dashboards.

**Управленческие меры:**
- бюджеты и квоты по доменам;
- architecture review для дорогих решений;
- chargeback / showback model.

---

## 5. План действий по этапам

### Этап 1 — 0–6 месяцев
**Цели:**
- определить домены и owners;
- поднять event platform, schema registry и DLQ pattern;
- запустить пилот в Fintech и/или Patient Flow;
- ввести governance baseline для медицинских данных.

**Контроль рисков:**
- не развивать новые фичи в legacy DWH;
- ограничить пилот 1–2 доменами;
- внедрить минимальный observability stack.

### Этап 2 — 6–18 месяцев
**Цели:**
- масштабировать event-driven integration;
- запустить lakehouse / analytical storage;
- внедрить catalog, lineage и policy engine;
- запустить self-service портал;
- перевести часть legacy BI на semantic layer.

**Контроль рисков:**
- dual run для критических витрин;
- review доменных контрактов;
- регулярный аудит доступа к данным.

### Этап 3 — 18–36 месяцев
**Цели:**
- вывести из эксплуатации значимую часть PowerBuilder и legacy BI;
- оставить DWH только как архивный/остаточный слой либо полностью вывести;
- расширить внешние интеграции с pharma и device доменами;
- обеспечить near-real-time data products.

**Контроль рисков:**
- не отключать legacy без подтвержденного parity;
- вести FinOps и архитектурный контроль роста стоимости;
- использовать architecture review board для крупных изменений.

---

## 6. Вывод

Наиболее эффективно снижаются техническими средствами:
- риски data leakage;
- риски нестабильных streaming pipelines;
- риски отсутствия schema governance;
- риски слабой observability.

Наиболее эффективно снижаются управленческими мерами:
- риски неправильного domain ownership;
- риски сопротивления подразделений;
- риски отсутствия governance ролей;
- риски восприятия трансформации как purely technical migration.

Критические риски миграции legacy требуют смешанного подхода: одновременно архитектурных ограничений, технических мостов совместимости и управляемого roadmap трансформации.
