# Task1Advanced

## Запуск Terraform

### 1. Перейдите в окружение

```bash
cd envs/dev      # или stage / prod
```

---

### 2. Инициализация

```bash
terraform init
```

---

### 3. Проверка

```bash
terraform validate
terraform fmt -recursive
```

---

### 4. План

```bash
terraform plan -var-file=terraform.tfvars
```

---

### 5. Применение

```bash
terraform apply -var-file=terraform.tfvars
```

Подтвердите:

```text
yes
```

---

### 6. Проверка outputs

```bash
terraform output
```

---

### 7. SSH подключение

```bash
ssh ubuntu@<external_ip>
```

---

## Удаление ресурсов

```bash
terraform destroy -var-file=terraform.tfvars
```