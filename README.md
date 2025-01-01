# 🛒 MyShop - Modern E-commerce Platform

<div align="center">

![Java](https://img.shields.io/badge/Java-17-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.2.1-6DB33F?style=for-the-badge&logo=spring&logoColor=white)
![Thymeleaf](https://img.shields.io/badge/Thymeleaf-005C0F?style=for-the-badge&logo=thymeleaf&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Maven](https://img.shields.io/badge/Maven-C71A36?style=for-the-badge&logo=apache-maven&logoColor=white)

![License](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)
![Version](https://img.shields.io/badge/Version-1.0-blue?style=for-the-badge)

</div>

## 📖 Overview

MyShop is a full-featured e-commerce platform built with Spring Boot and Thymeleaf. It provides a complete online shopping experience with user authentication, product management, shopping cart functionality, and integrated payment processing through Razorpay.

## ✨ Features

### 🏪 **Core E-commerce Features**
- 🛍️ **Product Catalog** - Browse and search products with detailed views
- 🛒 **Shopping Cart** - Add, remove, and manage items in cart
- 👤 **User Authentication** - Secure registration, login, and OTP verification
- 📱 **Responsive Design** - Mobile-friendly interface
- 💳 **Payment Integration** - Razorpay payment gateway integration
- 📦 **Order Management** - Track orders and view order history

### 🔧 **Admin Features**
- 📊 **Admin Dashboard** - Comprehensive management interface
- ➕ **Product Management** - Add, edit, and delete products
- 📈 **Order Tracking** - Monitor and manage customer orders
- 👥 **User Management** - Manage customer accounts

### 🔒 **Security & Validation**
- 🔐 **Secure Authentication** - Password encryption and session management
- ✅ **Input Validation** - Comprehensive form validation
- 📧 **Email Verification** - OTP-based email verification
- 🛡️ **Error Handling** - Graceful error pages and exception handling

## 🛠️ Tech Stack

### **Backend**
- **Java 17** - Programming language
- **Spring Boot 3.2.1** - Application framework
- **Spring Data JPA** - Data persistence layer
- **Spring Security** - Authentication and authorization
- **Spring Mail** - Email functionality
- **Hibernate** - ORM framework

### **Frontend**
- **Thymeleaf** - Server-side templating engine
- **HTML5 & CSS3** - Markup and styling
- **Bootstrap** - Responsive design framework
- **JavaScript** - Client-side functionality

### **Database**
- **MySQL** - Primary database
- **JPA/Hibernate** - Database abstraction layer

### **Payment & External APIs**
- **Razorpay** - Payment gateway integration
- **Gmail SMTP** - Email service

### **Build & Deployment**
- **Maven** - Dependency management and build tool
- **Spring Boot DevTools** - Development utilities
- **Lombok** - Code generation library

## 🚀 Getting Started

### Prerequisites

Before running this application, make sure you have the following installed:

- ☕ **Java 17** or higher
- 🗄️ **MySQL 8.0** or higher
- 🔧 **Maven 3.6** or higher
- 📧 **Gmail account** (for email functionality)
- 💳 **Razorpay account** (for payment processing)

### Installation & Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/EcommerceSite.git
   cd EcommerceSite
   ```

2. **Configure MySQL Database**
   ```sql
   CREATE DATABASE ecommerce;
   ```

3. **Update Application Properties**
   
   Edit `src/main/resources/application.properties`:
   ```properties
   # Database Configuration
   spring.datasource.url=jdbc:mysql://localhost:3306/ecommerce?createDatabaseIfNotExist=true
   spring.datasource.username=your_mysql_username
   spring.datasource.password=your_mysql_password
   
   # Email Configuration
   spring.mail.username=your_email@gmail.com
   spring.mail.password=your_app_password
   
   # Razorpay Configuration (Add to application.properties)
   razorpay.key.id=your_razorpay_key_id
   razorpay.key.secret=your_razorpay_secret
   ```

4. **Build and Run the Application**
   ```bash
   # Using Maven
   mvn clean install
   mvn spring-boot:run
   
   # OR using Maven Wrapper
   ./mvnw clean install
   ./mvnw spring-boot:run
   ```

5. **Access the Application**
   
   Open your browser and navigate to: `http://localhost:80`

## 📸 Screenshots

### 🏠 Home Page
![Home Page](assets/screenshots/home-page.png)
*Clean and modern homepage with featured products and navigation*

### 🔐 User Authentication
![Login Page](assets/screenshots/login-page.png)
*Secure login interface with form validation*

### 🛍️ Product Catalog
![Product Catalog](assets/screenshots/product-catalog.png)
*Browse products with detailed information and images*

### 🛒 Shopping Cart
![Shopping Cart](assets/screenshots/shopping-cart.png)
*Intuitive cart management with quantity controls*

### 💳 Payment Process
![Payment Page](assets/screenshots/payment-page.png)
*Secure payment processing with Razorpay integration*

### 📊 Admin Dashboard
![Admin Dashboard](assets/screenshots/admin-dashboard.png)
*Comprehensive admin panel for managing the store*

### 📱 Mobile Responsive
![Mobile View](assets/screenshots/mobile-view.png)
*Fully responsive design for mobile devices*

## 🏗️ Project Structure

```
EcommerceSite/
├── 📁 src/
│   ├── 📁 main/
│   │   ├── 📁 java/com/s13sh/myshop/
│   │   │   ├── 📄 MyShopApplication.java
│   │   │   ├── 📁 controller/
│   │   │   ├── 📁 dao/
│   │   │   ├── 📁 dto/
│   │   │   ├── 📁 helper/
│   │   │   ├── 📁 repository/
│   │   │   └── 📁 service/
│   │   └── 📁 resources/
│   │       ├── 📄 application.properties
│   │       ├── 📁 static/
│   │       │   ├── 📁 css/
│   │       │   └── 📁 images/
│   │       └── 📁 templates/
│   └── 📁 test/
├── 📄 pom.xml
├── 📄 README.md
└── 📁 assets/
    └── 📁 screenshots/
```

## 🌐 API Endpoints

### **User Authentication**
- `GET /` - Home page
- `GET /login` - Login page
- `POST /login` - Process login
- `GET /signup` - Registration page
- `POST /signup` - Process registration
- `GET /verify-otp` - OTP verification page

### **Product Management**
- `GET /products` - View all products
- `GET /product/{id}` - View single product
- `POST /add-to-cart` - Add product to cart

### **Admin Panel**
- `GET /admin` - Admin dashboard
- `GET /admin/add-product` - Add product page
- `POST /admin/add-product` - Process add product
- `GET /admin/manage-products` - Manage products

## 🔧 Configuration

### Database Configuration
The application uses MySQL with automatic table creation. Configure your database connection in `application.properties`.

### Email Configuration
Set up Gmail SMTP for email functionality:
1. Enable 2-factor authentication
2. Generate an app password
3. Update the email credentials in configuration

### Payment Gateway
Configure Razorpay for payment processing:
1. Create a Razorpay account
2. Get API keys from dashboard
3. Add keys to application configuration

## 🧪 Testing

Run the test suite using Maven:

```bash
mvn test
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Thousif Ibrahim**
- 📧 Email: thousifibrahim07@gmail.com
- 💼 LinkedIn: [Connect with me](https://linkedin.com/in/thousif-ibrahim)
- 🐙 GitHub: [@thousif-ibrahim](https://github.com/thousif-ibrahim)

## 🙏 Acknowledgments

- Spring Boot team for the excellent framework
- Thymeleaf community for the templating engine
- Razorpay for payment integration
- All contributors and supporters

---

<div align="center">

**⭐ Star this repository if you found it helpful! ⭐**

Made with ❤️ by Thousif Ibrahim

</div>
