# Catalog of Domain Events

Ниже приведен каталог ключевых доменных событий. Для каждого события указаны:
- название;
- context-источник;
- краткая семантика;
- минимальный контракт;
- основные подписчики.

---

## 1. PatientRegistered
**Source context:** Patient Registry BC  
**Семантика:** в экосистеме зарегистрирован новый пациент  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `patient_id`
- `person_reference_id`
- `registration_channel`
**Подписчики:**
- Appointment & Scheduling BC
- Encounter Management BC
- Customer Finance Profile BC
- Analytical Data Product BC

---

## 2. PatientProfileUpdated
**Source context:** Patient Registry BC  
**Семантика:** изменены атрибуты профиля пациента  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `patient_id`
- `changed_attributes`
- `profile_version`
**Подписчики:**
- Clinical contexts
- Finance profile
- Analytical Data Product BC

---

## 3. AppointmentBooked
**Source context:** Appointment & Scheduling BC  
**Семантика:** пациент записан на визит/услугу  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `appointment_id`
- `patient_id`
- `service_code`
- `slot_time`
- `clinic_id`
**Подписчики:**
- Encounter Management BC
- Notification BC
- Analytical Data Product BC

---

## 4. PatientArrivedAtClinic
**Source context:** Appointment & Scheduling BC  
**Семантика:** пациент прибыл в клинику и готов к обслуживанию  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `appointment_id`
- `patient_id`
- `clinic_id`
**Подписчики:**
- Encounter Management BC

---

## 5. EncounterOpened
**Source context:** Encounter Management BC  
**Семантика:** начат клинический эпизод обслуживания  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `encounter_id`
- `patient_id`
- `clinic_id`
- `attending_staff_id`
**Подписчики:**
- Medical Research BC
- Account & Billing BC
- Analytical Data Product BC

---

## 6. TreatmentPlanAssigned
**Source context:** Encounter Management BC  
**Семантика:** назначен план лечения / исследований  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `encounter_id`
- `patient_id`
- `plan_id`
- `plan_items`
**Подписчики:**
- Medical Research BC
- Pharma Integration BC

---

## 7. ResearchOrdered
**Source context:** Medical Research BC  
**Семантика:** назначено конкретное исследование  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `research_order_id`
- `encounter_id`
- `patient_id`
- `research_type`
**Подписчики:**
- Medical Device Integration BC
- AI Inference BC
- Analytical Data Product BC

---

## 8. ResearchCompleted
**Source context:** Medical Research BC  
**Семантика:** исследование завершено  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `research_order_id`
- `encounter_id`
- `patient_id`
- `research_type`
- `source_system`
**Подписчики:**
- AI Inference BC
- Encounter Management BC
- Analytical Data Product BC

---

## 9. DiagnosticResultPrepared
**Source context:** Medical Research BC  
**Семантика:** подготовлен диагностический результат  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `diagnostic_result_id`
- `research_order_id`
- `result_status`
- `sensitivity_class`
**Подписчики:**
- Encounter Management BC
- Consent & Privacy BC
- Analytical Data Product BC (только метаданные/разрешенная часть)

---

## 10. AIInferenceRequested
**Source context:** AI Inference BC  
**Семантика:** сформирован запрос на запуск AI-модели  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `inference_request_id`
- `research_order_id`
- `model_id`
- `model_version`
**Подписчики:**
- Observability / audit
- Analytical Data Product BC

---

## 11. AIInferenceCompleted
**Source context:** AI Inference BC  
**Семантика:** AI-модель завершила обработку  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `inference_result_id`
- `inference_request_id`
- `model_version`
- `result_status`
- `confidence_score`
**Подписчики:**
- Encounter Management BC
- Notification BC
- Analytical Data Product BC

---

## 12. AIAnomalyDetected
**Source context:** AI Inference BC  
**Семантика:** выявлена аномалия, требующая внимания  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `inference_result_id`
- `patient_id`
- `severity`
- `anomaly_type`
**Подписчики:**
- Encounter Management BC
- Notification BC

---

## 13. InvoiceCreated
**Source context:** Account & Billing BC  
**Семантика:** сформирован счет клиенту  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `invoice_id`
- `customer_id`
- `amount`
- `currency`
- `billing_reason`
**Подписчики:**
- Payment Processing BC
- Credit Contract BC
- Analytical Data Product BC

---

## 14. InvoicePaid
**Source context:** Account & Billing BC  
**Семантика:** счет полностью оплачен  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `invoice_id`
- `customer_id`
- `paid_amount`
- `payment_reference`
**Подписчики:**
- Analytical Data Product BC
- Notification BC

---

## 15. DebtDetected
**Source context:** Account & Billing BC  
**Семантика:** зафиксирована задолженность клиента  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `account_id`
- `customer_id`
- `debt_amount`
**Подписчики:**
- Credit Contract BC
- Notification BC

---

## 16. CreditApplicationSubmitted
**Source context:** Credit Contract BC  
**Семантика:** клиент подал заявку на кредит/рассрочку  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `credit_application_id`
- `customer_id`
- `requested_amount`
- `product_code`
**Подписчики:**
- Scoring / underwriting
- Analytical Data Product BC

---

## 17. CreditApproved
**Source context:** Credit Contract BC  
**Семантика:** заявка одобрена  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `credit_application_id`
- `customer_id`
- `approved_amount`
- `decision_reference`
**Подписчики:**
- Account & Billing BC
- Notification BC
- Analytical Data Product BC

---

## 18. CreditRejected
**Source context:** Credit Contract BC  
**Семантика:** заявка отклонена  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `credit_application_id`
- `customer_id`
- `rejection_reason_code`
**Подписчики:**
- Notification BC
- Analytical Data Product BC

---

## 19. CreditContractCreated
**Source context:** Credit Contract BC  
**Семантика:** создан кредитный договор  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `credit_contract_id`
- `customer_id`
- `contract_amount`
- `contract_term`
**Подписчики:**
- Account & Billing BC
- Analytical Data Product BC

---

## 20. PaymentInitiated
**Source context:** Payment Processing BC  
**Семантика:** инициирована платежная операция  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `payment_id`
- `invoice_id`
- `customer_id`
- `amount`
**Подписчики:**
- Account & Billing BC
- Observability / fraud / audit

---

## 21. PaymentSucceeded
**Source context:** Payment Processing BC  
**Семантика:** платеж успешно завершён  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `payment_id`
- `invoice_id`
- `customer_id`
- `amount`
- `provider_reference`
**Подписчики:**
- Account & Billing BC
- Notification BC
- Analytical Data Product BC

---

## 22. PaymentFailed
**Source context:** Payment Processing BC  
**Семантика:** платеж завершился ошибкой  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `payment_id`
- `invoice_id`
- `failure_code`
**Подписчики:**
- Account & Billing BC
- Notification BC

---

## 23. PharmaOrderPlaced
**Source context:** Pharma Integration BC  
**Семантика:** оформлен заказ/запрос к фарма-партнеру  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `pharma_order_id`
- `customer_id`
- `partner_id`
- `order_type`
**Подписчики:**
- Notification BC
- Analytical Data Product BC

---

## 24. PharmaOrderDelivered
**Source context:** Pharma Integration BC  
**Семантика:** партнер подтвердил поставку/исполнение  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `pharma_order_id`
- `partner_id`
- `delivery_status`
**Подписчики:**
- Encounter / treatment related flows
- Analytical Data Product BC

---

## 25. DeviceTelemetryReceived
**Source context:** Medical Device Integration BC  
**Семантика:** получена телеметрия от медицинского оборудования  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `device_id`
- `capture_id`
- `telemetry_type`
- `source_location`
**Подписчики:**
- Observability
- Medical Research BC
- Analytical Data Product BC

---

## 26. DeviceStudyCaptured
**Source context:** Medical Device Integration BC  
**Семантика:** устройство зафиксировало исследование / данные для анализа  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `device_capture_id`
- `device_id`
- `research_type`
- `patient_reference`
**Подписчики:**
- Medical Research BC
- AI Inference BC

---

## 27. DeviceAlertRaised
**Source context:** Medical Device Integration BC  
**Семантика:** устройство или integration layer выявили тревожное событие  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `device_id`
- `alert_type`
- `severity`
**Подписчики:**
- Medical Research BC
- Notification BC
- Observability

---

## 28. ConsentGranted
**Source context:** Consent & Privacy BC  
**Семантика:** дано согласие на конкретный вид обработки данных  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `consent_id`
- `subject_id`
- `purpose_code`
- `effective_from`
**Подписчики:**
- Medical Research BC
- Self-Service Analytics BC
- Analytical Data Product BC

---

## 29. ConsentRevoked
**Source context:** Consent & Privacy BC  
**Семантика:** согласие отозвано  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `consent_id`
- `subject_id`
- `purpose_code`
- `effective_to`
**Подписчики:**
- Self-Service Analytics BC
- Analytical Data Product BC
- Medical Research BC

---

## 30. SensitiveDataAccessRequested
**Source context:** Consent & Privacy BC  
**Семантика:** запрошен доступ к чувствительным данным  
**Минимальный контракт:**
- `event_id`
- `event_time`
- `request_id`
- `subject_id`
- `requestor_id`
- `requested_scope`
**Подписчики:**
- Access workflow / audit
- Policy engine

---

## Минимальные требования ко всем событиям

Все доменные события должны содержать:
- `event_id`
- `event_type`
- `event_time`
- `source_context`
- `entity_id` или основной business key
- `schema_version`
- `trace_id` / `correlation_id`

Дополнительно:
- для финансово значимых событий — `idempotency_key`;
- для чувствительных клинических событий — `sensitivity_class`;
- для событий ИИ — `model_id` и `model_version`.
