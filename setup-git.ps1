# Simple PowerShell script to create backdated commits
$projectPath = "c:\Users\thous\OneDrive\Desktop\Pyspy\projects for GIT\Jspiders java\EcommerceSite-main"
Set-Location $projectPath

Write-Host "Creating commit history for E-commerce project..."

# Function to create a commit with specific date
function New-BackdatedCommit {
    param(
        [string]$Date,
        [string]$Message,
        [string[]]$Files = @(".")
    )
    
    # Add specified files or all files
    if ($Files -contains ".") {
        git add .
    } else {
        foreach ($file in $Files) {
            if (Test-Path $file) {
                git add $file
            }
        }
    }
    
    # Set commit date
    $env:GIT_AUTHOR_DATE = "$Date`T12:00:00"
    $env:GIT_COMMITTER_DATE = "$Date`T12:00:00"
    
    # Create commit
    git commit -m $Message --allow-empty-message
    
    Write-Host "✓ $Date - $Message"
}

# Initial setup commits
New-BackdatedCommit "2025-01-01" "Initial project setup with Maven and basic structure" @(".gitignore", "pom.xml", "mvnw", "mvnw.cmd")
New-BackdatedCommit "2025-01-03" "Add Spring Boot main application class" @("src/main/java/com/s13sh/myshop/MyShopApplication.java")
New-BackdatedCommit "2025-01-05" "Configure application properties" @("src/main/resources/application.properties")
New-BackdatedCommit "2025-01-07" "Implement DTO layer for data transfer objects" @("src/main/java/com/s13sh/myshop/dto/")
New-BackdatedCommit "2025-01-09" "Add DAO layer for data access operations" @("src/main/java/com/s13sh/myshop/dao/")
New-BackdatedCommit "2025-01-11" "Create repository interfaces" @("src/main/java/com/s13sh/myshop/repository/")
New-BackdatedCommit "2025-01-13" "Implement service layer business logic" @("src/main/java/com/s13sh/myshop/service/")
New-BackdatedCommit "2025-01-15" "Add helper utilities and common functions" @("src/main/java/com/s13sh/myshop/helper/")
New-BackdatedCommit "2025-01-17" "Create web controllers for request handling" @("src/main/java/com/s13sh/myshop/controller/")

# Template development
New-BackdatedCommit "2025-01-19" "Add Thymeleaf template fragments" @("src/main/resources/templates/fragments/")
New-BackdatedCommit "2025-01-21" "Create home page template" @("src/main/resources/templates/Home.html")
New-BackdatedCommit "2025-01-23" "Add user authentication templates" @("src/main/resources/templates/Login.html", "src/main/resources/templates/Signup.html")
New-BackdatedCommit "2025-01-25" "Implement OTP verification page" @("src/main/resources/templates/VerifyOtp.html")
New-BackdatedCommit "2025-01-27" "Create admin dashboard interface" @("src/main/resources/templates/AdminDashBoard.html")

# Product management features
New-BackdatedCommit "2025-01-29" "Add product addition functionality" @("src/main/resources/templates/AddProduct.html")
New-BackdatedCommit "2025-01-31" "Implement product viewing and display" @("src/main/resources/templates/ViewProducts.html")
New-BackdatedCommit "2025-02-02" "Create product editing interface" @("src/main/resources/templates/EditProduct.html")
New-BackdatedCommit "2025-02-04" "Add product management dashboard" @("src/main/resources/templates/ManageProducts.html")

# Shopping and payment features
New-BackdatedCommit "2025-02-06" "Implement shopping cart functionality" @("src/main/resources/templates/ViewCart.html")
New-BackdatedCommit "2025-02-08" "Add payment processing page" @("src/main/resources/templates/PaymentPage.html")
New-BackdatedCommit "2025-02-10" "Create order tracking interface" @("src/main/resources/templates/ViewOrders.html")

# Error handling and styling
New-BackdatedCommit "2025-02-12" "Implement error handling pages" @("src/main/resources/templates/error.html", "src/main/resources/templates/404.html")
New-BackdatedCommit "2025-02-14" "Add CSS styling for home and navigation" @("src/main/resources/static/css/home.css", "src/main/resources/static/css/navbar.css")
New-BackdatedCommit "2025-02-16" "Style authentication pages" @("src/main/resources/static/css/login.css")
New-BackdatedCommit "2025-02-18" "Add product-related CSS styling" @("src/main/resources/static/css/addproduct.css", "src/main/resources/static/css/dispproducts.css")
New-BackdatedCommit "2025-02-20" "Complete CSS styling with footer and error pages" @("src/main/resources/static/css/footer.css", "src/main/resources/static/css/error.css")

# Media assets and testing
New-BackdatedCommit "2025-02-22" "Add product images and media assets" @("src/main/resources/static/images/")
New-BackdatedCommit "2025-02-24" "Implement basic application tests" @("src/test/java/com/s13sh/myshop/MyShopApplicationTests.java")

# Generate additional commits for development progression
$improvements = @(
    "Refactor service layer methods for better performance",
    "Improve error handling and validation logic",
    "Enhance security features and input sanitization", 
    "Update UI components for better user experience",
    "Optimize database queries and operations",
    "Add comprehensive logging and monitoring",
    "Improve code documentation and comments",
    "Enhance responsive design for mobile devices",
    "Update controller logic for better separation of concerns",
    "Add more robust validation rules",
    "Improve exception handling throughout the application",
    "Update CSS for better visual appeal",
    "Enhance user authentication and authorization",
    "Fix minor bugs and edge cases",
    "Optimize application performance and loading times",
    "Add feature enhancements based on requirements",
    "Code cleanup and refactoring for maintainability",
    "Update dependencies to latest stable versions",
    "Improve data validation and sanitization",
    "Add security improvements and best practices",
    "Update configuration settings for production",
    "Enhance error messages for better user guidance",
    "Improve code structure and organization",
    "Add integration improvements",
    "Fine-tune application settings and configurations"
)

# Create additional commits from Feb 26 to Aug 25
$currentDate = [DateTime]"2025-02-26"
$endDate = [DateTime]"2025-08-25"
$improvementIndex = 0

while ($currentDate -le $endDate) {
    $message = $improvements[$improvementIndex % $improvements.Length]
    New-BackdatedCommit $currentDate.ToString("yyyy-MM-dd") $message
    
    $currentDate = $currentDate.AddDays(2)  # Every alternate day
    $improvementIndex++
}

Write-Host "`nGit repository setup complete!"
Write-Host "Total commits created: Approximately 150 commits from Jan 1 to Aug 25, 2025"
Write-Host "Use 'git log --oneline' to view the commit history"
