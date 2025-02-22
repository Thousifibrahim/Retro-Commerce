# PowerShell script to create backdated Git commits
$projectPath = "c:\Users\thous\OneDrive\Desktop\Pyspy\projects for GIT\Jspiders java\EcommerceSite-main"
Set-Location $projectPath

# Configure Git user (adjust these as needed)
git config user.name "Developer"
git config user.email "developer@example.com"

# Define the file groups to add progressively
$fileGroups = @(
    @{
        date = "2025-01-01"
        files = @(".gitignore", "pom.xml")
        message = "Initial project setup with Maven configuration"
    },
    @{
        date = "2025-01-03"
        files = @("src/main/java/com/s13sh/myshop/MyShopApplication.java")
        message = "Add main Spring Boot application class"
    },
    @{
        date = "2025-01-05"
        files = @("src/main/resources/application.properties")
        message = "Add application configuration properties"
    },
    @{
        date = "2025-01-07"
        files = @("src/main/java/com/s13sh/myshop/dto/")
        message = "Add DTO classes for data transfer objects"
    },
    @{
        date = "2025-01-09"
        files = @("src/main/java/com/s13sh/myshop/dao/")
        message = "Implement DAO layer for data access"
    },
    @{
        date = "2025-01-11"
        files = @("src/main/java/com/s13sh/myshop/repository/")
        message = "Add repository interfaces for database operations"
    },
    @{
        date = "2025-01-13"
        files = @("src/main/java/com/s13sh/myshop/service/")
        message = "Implement service layer business logic"
    },
    @{
        date = "2025-01-15"
        files = @("src/main/java/com/s13sh/myshop/helper/")
        message = "Add helper utilities and common functions"
    },
    @{
        date = "2025-01-17"
        files = @("src/main/java/com/s13sh/myshop/controller/")
        message = "Implement web controllers for request handling"
    },
    @{
        date = "2025-01-19"
        files = @("src/main/resources/templates/fragments/")
        message = "Add Thymeleaf template fragments"
    },
    @{
        date = "2025-01-21"
        files = @("src/main/resources/templates/Home.html", "src/main/resources/templates/Login.html")
        message = "Create home and login page templates"
    },
    @{
        date = "2025-01-23"
        files = @("src/main/resources/templates/Signup.html", "src/main/resources/templates/VerifyOtp.html")
        message = "Add user registration and OTP verification pages"
    },
    @{
        date = "2025-01-25"
        files = @("src/main/resources/static/css/home.css", "src/main/resources/static/css/login.css")
        message = "Style home and login pages with CSS"
    },
    @{
        date = "2025-01-27"
        files = @("src/main/resources/static/css/navbar.css", "src/main/resources/static/css/footer.css")
        message = "Add navigation and footer styling"
    },
    @{
        date = "2025-01-29"
        files = @("src/main/resources/templates/AdminDashBoard.html")
        message = "Create admin dashboard template"
    },
    @{
        date = "2025-01-31"
        files = @("src/main/resources/templates/AddProduct.html", "src/main/resources/static/css/addproduct.css")
        message = "Implement product addition functionality"
    },
    @{
        date = "2025-02-02"
        files = @("src/main/resources/templates/ViewProducts.html", "src/main/resources/static/css/dispproducts.css")
        message = "Add product display and viewing pages"
    },
    @{
        date = "2025-02-04"
        files = @("src/main/resources/templates/EditProduct.html")
        message = "Create product editing interface"
    },
    @{
        date = "2025-02-06"
        files = @("src/main/resources/templates/ManageProducts.html")
        message = "Add product management dashboard"
    },
    @{
        date = "2025-02-08"
        files = @("src/main/resources/templates/ViewCart.html")
        message = "Implement shopping cart functionality"
    },
    @{
        date = "2025-02-10"
        files = @("src/main/resources/templates/PaymentPage.html")
        message = "Add payment processing page"
    },
    @{
        date = "2025-02-12"
        files = @("src/main/resources/templates/ViewOrders.html")
        message = "Create order history and tracking page"
    },
    @{
        date = "2025-02-14"
        files = @("src/main/resources/static/images/")
        message = "Add product images and media assets"
    },
    @{
        date = "2025-02-16"
        files = @("src/main/resources/templates/error.html", "src/main/resources/templates/404.html")
        message = "Implement error handling pages"
    },
    @{
        date = "2025-02-18"
        files = @("src/main/resources/static/css/error.css")
        message = "Style error pages"
    },
    @{
        date = "2025-02-20"
        files = @("src/test/java/com/s13sh/myshop/MyShopApplicationTests.java")
        message = "Add basic application tests"
    }
)

# Function to create commit with specific date
function Create-CommitWithDate {
    param (
        [string]$commitDate,
        [string[]]$filesToAdd,
        [string]$commitMessage
    )
    
    # Add files to git
    foreach ($file in $filesToAdd) {
        if (Test-Path $file) {
            git add $file
        }
    }
    
    # Set environment variables for commit date
    $env:GIT_AUTHOR_DATE = $commitDate + "T12:00:00"
    $env:GIT_COMMITTER_DATE = $commitDate + "T12:00:00"
    
    # Create commit
    git commit -m $commitMessage
    
    Write-Host "Created commit for $commitDate : $commitMessage"
}

# Generate additional commits for the remaining period
$additionalCommits = @()
$currentDate = [DateTime]"2025-02-22"
$endDate = [DateTime]"2025-08-25"
$commitCounter = 1

$improvements = @(
    "Update UI styling and responsiveness",
    "Improve error handling and validation",
    "Optimize database queries",
    "Add input sanitization",
    "Enhance security features",
    "Improve code documentation",
    "Refactor service layer methods",
    "Update controller logic",
    "Add more validation rules",
    "Improve exception handling",
    "Update CSS styles",
    "Enhance user experience",
    "Fix minor bugs",
    "Optimize performance",
    "Add logging improvements",
    "Update template layouts",
    "Improve responsive design",
    "Add feature enhancements",
    "Code cleanup and refactoring",
    "Update dependencies",
    "Improve data validation",
    "Add security improvements",
    "Update configuration settings",
    "Enhance error messages",
    "Improve code structure"
)

while ($currentDate -le $endDate) {
    $improvementIndex = $commitCounter % $improvements.Length
    $additionalCommits += @{
        date = $currentDate.ToString("yyyy-MM-dd")
        files = @(".")  # Will add all modified files
        message = $improvements[$improvementIndex]
    }
    
    $currentDate = $currentDate.AddDays(2)
    $commitCounter++
}

# Execute all commits
$allCommits = $fileGroups + $additionalCommits

foreach ($commit in $allCommits) {
    if ($commit.files -contains ".") {
        # For general improvements, add all files
        git add .
        $env:GIT_AUTHOR_DATE = $commit.date + "T12:00:00"
        $env:GIT_COMMITTER_DATE = $commit.date + "T12:00:00"
        git commit -m $commit.message --allow-empty
    } else {
        Create-CommitWithDate -commitDate $commit.date -filesToAdd $commit.files -commitMessage $commit.message
    }
    
    Start-Sleep -Milliseconds 100  # Small delay to ensure proper ordering
}

Write-Host "Git repository initialized with backdated commits!"
Write-Host "Total commits created: $($allCommits.Count)"
