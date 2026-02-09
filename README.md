<div align="center">

![Java](https://img.shields.io/badge/Java-17-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.2.1-6DB33F?style=for-the-badge&logo=spring&logoColor=white)
![Thymeleaf](https://img.shields.io/badge/Thymeleaf-005C0F?style=for-the-badge&logo=thymeleaf&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)

![Status](https://img.shields.io/badge/Status-Internship%20Project-blue?style=for-the-badge)
![Version](https://img.shields.io/badge/Version-1.0-orange?style=for-the-badge)



</div>

---
## Retro E-Commerce Platform

A full-featured e-commerce platform combining  backend architecture with a Windows 
XP-inspired retro interface. The simplified UI design aligns with clean backend patterns, 
showcasing the harmony between nostalgic aesthetics and professional development practices.

*Learning Approach: Self-developed by reverse-engineering e-commerce patterns and building 
the complete MVC stack independently to gain hands-on understanding of database integration, 
service layers, and frontend-backend communication.*

---

## ✨ Key Features

- **Product Catalog** - Browse products with search and filtering
- **Shopping Cart** - Real-time cart management
- **User Authentication** - Secure registration and login with OTP verification
- **Payment Integration** - Razorpay payment gateway
- **Order Management** - Track and view order history
- **Admin Dashboard** - Product and order management
- **Responsive Design** - Mobile-friendly retro interface

---

## 🛠️ Technical Stack

### **Backend Architecture**
```
Java 17 + Spring Boot 3.2.1
├── Spring Data JPA          → Database persistence
├── Spring Security          → Authentication & authorization
├── Spring Mail              → Email notifications
├── Hibernate ORM            → Object-relational mapping
└── Maven                    → Dependency management
```

### **Frontend Implementation**
```
Thymeleaf Server-Side Rendering
├── HTML5                    → Semantic markup
├── CSS3                     → Retro-styled design
├── Bootstrap                → Responsive grid system
└── JavaScript               → Client-side interactions
```

### **Database & Integration**
```
MySQL 8.0
├── JPA Repositories         → Data access layer
├── Optimized queries        → Performance tuning
└── Relationship mapping     → Entity associations

External Services
├── Razorpay API            → Payment processing
└── Gmail SMTP              → Email delivery
```

---

## 🏗️ Architecture Overview

### **MVC Pattern Implementation**

```
┌─────────────────────────────────────────────────┐
│                  Presentation Layer              │
│  (Thymeleaf Templates + Controllers)            │
└─────────────────┬───────────────────────────────┘
                  │
┌─────────────────▼───────────────────────────────┐
│                  Business Layer                  │
│  (Services + DTOs + Helper Classes)             │
└─────────────────┬───────────────────────────────┘
                  │
┌─────────────────▼───────────────────────────────┐
│                  Data Access Layer               │
│  (JPA Repositories + DAOs)                      │
└─────────────────┬───────────────────────────────┘
                  │
┌─────────────────▼───────────────────────────────┐
│                  Database Layer                  │
│  (MySQL with Hibernate ORM)                     │
└─────────────────────────────────────────────────┘
```

### **Project Structure**
```
src/main/java/com/s13sh/myshop/
├── controller/          → HTTP request handlers
├── service/             → Business logic
├── repository/          → Database operations
├── dto/                 → Data transfer objects
├── dao/                 → Database entities
├── helper/              → Utility classes
└── MyShopApplication    → Application entry point

src/main/resources/
├── application.properties → Configuration
├── templates/            → Thymeleaf views
└── static/
    ├── css/             → Stylesheets
    └── images/          → Static assets
```

---

## 🔧 Core Technical Features

### **1. Authentication & Security**
- Password encryption using BCrypt
- Session-based authentication with Spring Security
- OTP verification via email
- Role-based access control (User/Admin)
- CSRF protection on forms

### **2. Database Design**
- Entity relationships: One-to-Many, Many-to-Many
- JPA cascade operations for data consistency
- Optimized queries with indexed columns
- Transaction management with `@Transactional`

### **3. Payment Integration**
- Razorpay SDK integration
- Secure payment callback handling
- Order verification and status updates
- Payment failure recovery mechanisms

### **4. Email Functionality**
- JavaMailSender with Gmail SMTP
- Template-based email composition
- Async email sending for performance
- OTP generation and validation

---

## 🚀 Getting Started

### **Prerequisites**
- Java 17 or Java 21
- MySQL 8.0+
- Maven 3.6+
- Gmail account (for SMTP)
- Razorpay account (for payments)

### **Quick Setup**

1. **Clone the repository**
```bash
git clone https://github.com/Thousifibrahim/Retro-Commerce.git
cd retro-Commerce
```

2. **Configure Database**
```sql
CREATE DATABASE ecommerce;
```

3. **Update Configuration**

Edit `src/main/resources/application.properties`:
```properties
# Database
spring.datasource.url=jdbc:mysql://localhost:3306/ecommerce
spring.datasource.username=your_username
spring.datasource.password=your_password

# Email
spring.mail.username=your_email@gmail.com
spring.mail.password=your_app_password

# Razorpay
razorpay.key.id=your_key_id
razorpay.key.secret=your_secret
```

4. **Build & Run**
```bash
./mvnw clean install
./mvnw spring-boot:run
```

5. **Access Application**
```
http://localhost:80
```

---

## 💡 What I Learned

### **Technical Skills Gained:**
- Full-stack application architecture with Spring Boot
- MVC design pattern implementation
- RESTful API design principles
- Database schema design and optimization
- Third-party API integration (Razorpay, Gmail)
- Form validation and error handling
- Session management and security best practices

### **Professional Development:**
- Code review processes
- Git workflow and version control
- Debugging complex backend issues
- Writing maintainable, scalable code
- Project documentation standards

---

## 📊 Technical Metrics

| Aspect | Details |
|--------|---------|
| **Language Distribution** | Java (61.7%), HTML (35.6%), CSS (2.7%) |
| **Lines of Code** | ~5,000+ lines |
| **Database Tables** | 8+ entities |
| **API Endpoints** | 25+ routes |
| **Dependencies** | 15+ Maven dependencies |

---

## Contact

**Thousif Ibrahim**  
contact.thousif+github@gmail.com  
[LinkedIn](https://www.linkedin.com/in/smd-thousif-ibrahim-29050421b)  
[GitHub](https://github.com/Thousifibrahim)

---

<div align="center">

** If you find this project helpful, consider giving it a star! ⭐**

</div>
