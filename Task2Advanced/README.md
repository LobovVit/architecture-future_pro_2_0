# Task2Advanced

## Локальная проверка

### 1. Создать .env

```bash
cp .env.example .env
```

Заполнить:

```bash
TF_VAR_token=...
TF_VAR_cloud_id=...
TF_VAR_folder_id=...

AWS_ACCESS_KEY_ID=...
AWS_SECRET_ACCESS_KEY=...
```

---

### 2. Загрузить переменные

```bash
export $(grep -v '^#' .env | xargs)
```

---

### 3. Init (remote state)

```bash
./scripts/tf_init.sh dev
```

Проверка: локального `.tfstate` нет

```bash
find . -name "*.tfstate"
```

---

### 4. Plan

```bash
./scripts/tf_plan.sh dev
```

---

### 5. Apply

```bash
./scripts/tf_apply.sh dev
```

---

### 6. Проверка state

В Object Storage должен появиться:

```
dev/terraform.tfstate
```

---

## Настройка GitLab CI

### 1. Добавить Variables (Settings → CI/CD → Variables)

#### Backend (S3)
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

#### Terraform (Yandex Cloud)
- `TF_VAR_token`
- `TF_VAR_cloud_id`
- `TF_VAR_folder_id`

Все переменные:
- Masked
- Protected

---

### 2. Запустить pipeline

```bash
git add .
git commit -m "Task2"
git push
```

---

### 3. Проверить pipeline

Pipeline выполняет:

- validate
- plan
- apply (manual)

---

### 4. Запуск apply

В GitLab:

```
apply:dev → ▶ Play
```
