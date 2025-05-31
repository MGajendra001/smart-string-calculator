# 🧮 String Calculator (Ruby on Rails)

A simple web-based String Calculator built using **Ruby on Rails** with **TDD** and **Continuous Integration**.

![Ruby](https://img.shields.io/badge/Ruby-3.2.2-red.svg)
![Rails](https://img.shields.io/badge/Rails-7.x-brightgreen.svg)

---


## 📌 Features

- ✅ Accepts input strings like `1,2,3` or `1\n2,3`.
- ✅ Supports custom delimiters (e.g., `//;\n1;2` → **3**).
- ✅ Handles quoted numbers like `"1"` or `"1","2"` correctly.
- ✅ Ignores empty or invalid tokens.
- ❌ Rejects negative numbers and shows the full list of invalid values in the error message:


<img width="1678" alt="Screenshot 2025-05-30 at 9 27 47 PM" src="https://github.com/user-attachments/assets/5aa36eab-c81e-4ff7-be36-5f664eb3f739" />
<img width="1680" alt="Screenshot 2025-05-30 at 9 28 20 PM" src="https://github.com/user-attachments/assets/16581401-5ef5-402b-a7e6-6ba3a31c3820" />


---

## 🧪 Test-Driven Development

This project is built following TDD practices:

- ✅ **RSpec** used for test suite.
- ✅ Tests written **before** implementing logic.
- ✅ Validates edge cases like:
  - Empty strings
  - Negative numbers
  - Quoted values
  - Custom delimiters

---

## 🚀 Continuous Integration (CI)

Every push and pull request triggers automatic CI checks:

- 🔍 Static Analysis (`rubocop`)
- 🧪 Full test suite with RSpec

### ✅ CI ensures:
- No broken code enters the `master` branch.
- All code follows consistent style and passes tests.

### 📸 PR CI Screenshot

> _Example of commit checks running on a PR:_

<img width="1680" alt="Screenshot 2025-05-30 at 9 07 17 PM" src="https://github.com/user-attachments/assets/abc354c5-668b-428d-9406-3048f452eb8f" />
---

## 🧠 Calculator Logic

The calculator follows this logic:

1. Accepts numbers separated by `,` or `\n`.
2. Supports custom delimiters like:
   ```text
    "1,2"          → 3
    "1\n2,3"       → 6
    "//;\n1;2"     → 3
    "\"1\",\"2\""   → 3

⚙️ Setup & Run Locally

1. Clone the Repository

git clone https://github.com/MGajendra001/smart-string-calculator.git
OR
git clone git@github.com:MGajendra001/smart-string-calculator.git
cd string_calculator

2. Install Dependencies

bundle install

3. Setup the Database

Option A — All in one:

bin/rails db:setup

Option B — Step-by-step:

bin/rails db:create
bin/rails db:migrate
bin/rails db:seed   # Optional

4. Run the Test Suite

bundle exec rspec

5. Start the Rails Server

bin/rails server

Visit http://localhost:3000 to try the calculator!
