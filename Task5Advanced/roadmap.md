# Стратегический roadmap внедрения Data Mesh

## 1. Цель roadmap

Переход к Data Mesh в «Будущем 2.0» нужен не как самоцель, а как способ:
- ускорить доставку витрин и отчетности;
- разделить ответственность между доменами;
- обеспечить governed self-service analytics;
- упростить подключение новых направлений: финтех, фарма, медоборудование, AI.

---

## 2. Ключевые роли

| Роль | Ответственность |
|---|---|
| Data Product Owner | Определяет ценность, SLA, потребителей и roadmap data product |
| Data Engineer | Строит ingestion, трансформации, качество и delivery datasets |
| BI-аналитик | Формирует метрики, отчеты, semantic definitions и потребительские витрины |
| Domain Architect | Формирует bounded contexts, contracts и integration patterns |
| Platform Team | Предоставляет self-service tooling, catalog, governance и observability |
| Data Steward / Governance | Отвечает за качество, классификацию, доступ и lineage |
| Security / Compliance | Контролирует privacy, доступ и ограничения по медицинским данным |

---

## 3. Этапы roadmap

## Этап 1 — 0–6 месяцев: Пилот

### Цели
- определить домены и ownership;
- запустить платформенный baseline;
- выбрать 1–2 пилотных домена;
- создать первые data products.

### Основные активности
- domain discovery workshops;
- запуск event platform baseline;
- запуск data catalog / basic governance;
- выбор пилота: например Fintech + Patient Flow;
- создание первых governed datasets;
- публикация первых доменных событий и аналитических витрин.

### Результат
- появляются первые Data Product Owners;
- BI-аналитики получают первые self-service governed datasets;
- появляются шаблоны contracts, ownership и quality controls.

### Бизнес-цель
Сократить time-to-report и показать быстрый эффект на одном-двух направлениях.

---

## Этап 2 — 6–18 месяцев: Масштабирование

### Цели
- расширить число доменов;
- формализовать operating model data products;
- масштабировать semantic layer и self-service BI.

### Основные активности
- подключение Clinical Operations, Billing, AI и partner domains;
- формализация SLA/SLO data products;
- запуск lineage, masking и policy enforcement;
- развитие semantic layer;
- standard onboarding path для новых доменов;
- введение quality scorecards и domain data KPIs.

### Результат
- data products становятся стандартным способом публикации данных;
- аналитика все меньше зависит от legacy DWH;
- self-service BI масштабируется без ручной централизации всех запросов.

### Бизнес-цель
Ускорить выпуск новых отчетов, снизить узкие места в аналитике и упростить подключение новых партнеров.

---

## Этап 3 — 18–36 месяцев: Эксплуатация в масштабе

### Цели
- перейти к устойчивой operating model Data Mesh;
- минимизировать legacy dependencies;
- сделать domain-oriented analytics нормой.

### Основные активности
- убрать DWH из критического пути новых витрин;
- перевести большинство витрин на data products и semantic layer;
- масштабировать cost governance и domain accountability;
- ввести chargeback/showback по доменам;
- закрепить platform enablement модель.

### Результат
- домены владеют своими analytical products;
- self-service портал работает поверх governed catalog;
- legacy BI и Camel не определяют скорость изменений.

### Бизнес-цель
Обеспечить масштабирование компании по продуктам, регионам и числу источников данных без экспоненциального роста стоимости изменений.

---

## 4. Связь roadmap с бизнес-целями

| Бизнес-цель | Что в roadmap ее поддерживает |
|---|---|
| Быстрее выпускать отчеты и витрины | Self-service BI, semantic layer, domain data products |
| Подключать новые направления без больших переделок | Event platform, bounded contexts, contracts |
| Снизить зависимость от legacy DWH | Pilot → Scale → remove from critical path |
| Поддержать рост числа источников и событий | Data Mesh operating model + event-driven architecture |
| Соблюдать требования по мед. и фин. данным | Governance, classification, policy enforcement, ABAC |

---

## 5. Критические условия успеха

1. Назначить **Data Product Owner** в пилотных доменах.
2. Создать сильную **platform team**, которая снимает сложность с доменных команд.
3. Не внедрять Data Mesh как «анархию доменов» — governance должно быть встроено с начала.
4. Не пытаться масштабировать mesh до того, как отработан пилот.
5. Не развивать новую логику поверх legacy DWH.

---

## 6. Вывод

Стратегия внедрения Data Mesh для «Будущего 2.0» должна быть пошаговой:
- сначала пилот и platform baseline;
- затем масштабирование на домены;
- затем устойчивая operating model с ownership и governance.

Это позволит связать архитектурную трансформацию с реальными бизнес-результатами: быстрым выводом витрин, гибкостью интеграций и снижением зависимости от legacy-платформы.
