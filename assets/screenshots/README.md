# Screenshots Placeholder

This directory contains screenshots of the MyShop E-commerce application.

## How to Capture Screenshots

1. **Setup and Run the Application**
   ```bash
   # Fix Java version compatibility (use Java 17)
   # Update pom.xml if needed for Java 24 compatibility
   
   # Build and run
   ./mvnw clean install -DskipTests
   ./mvnw spring-boot:run
   ```

2. **Access the Application**
   - Open browser and go to `http://localhost:80`

3. **Capture Screenshots**
   Take screenshots of the following pages and save them with these names:

   - `home-page.png` - Main homepage
   - `login-page.png` - User login interface  
   - `signup-page.png` - User registration
   - `product-catalog.png` - Product listing page
   - `product-detail.png` - Individual product view
   - `shopping-cart.png` - Cart with items
   - `payment-page.png` - Payment processing
   - `admin-dashboard.png` - Admin management panel
   - `admin-add-product.png` - Add product form
   - `admin-manage-products.png` - Product management
   - `mobile-view.png` - Mobile responsive view
   - `order-history.png` - User order tracking

## Screenshot Guidelines

- Use 1920x1080 resolution for desktop screenshots
- Use 375x812 for mobile screenshots
- Ensure good lighting and clear visibility
- Include realistic sample data
- Show interactive elements (buttons, forms, etc.)

## Current Status

⚠️ **Build Issues Detected**
The project currently has compilation errors related to Lombok annotations not generating getters/setters properly. 

**To Fix:**
1. Ensure Java 17 is being used (project was built for Java 17)
2. Check Lombok setup in IDE
3. Verify annotation processor is enabled
4. Clean and rebuild project
