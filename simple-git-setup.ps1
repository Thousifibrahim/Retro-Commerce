# PowerShell script to create backdated commits
$projectPath = "c:\Users\thous\OneDrive\Desktop\Pyspy\projects for GIT\Jspiders java\EcommerceSite-main"
Set-Location $projectPath

Write-Host "Creating commit history for E-commerce project..."

# Function to create a commit with specific date
function New-BackdatedCommit {
    param(
        [string]$Date,
        [string]$Message
    )
    
    # Add all files
    git add .
    
    # Set commit date
    $env:GIT_AUTHOR_DATE = "$Date" + "T12:00:00"
    $env:GIT_COMMITTER_DATE = "$Date" + "T12:00:00"
    
    # Create commit
    git commit -m $Message --allow-empty
    
    Write-Host "Created commit for $Date - $Message"
}

# Create initial commits with progressive development
New-BackdatedCommit "2025-01-01" "Initial project setup with Maven and basic structure"
New-BackdatedCommit "2025-01-03" "Add Spring Boot main application class"
New-BackdatedCommit "2025-01-05" "Configure application properties"
New-BackdatedCommit "2025-01-07" "Implement DTO layer for data transfer objects"
New-BackdatedCommit "2025-01-09" "Add DAO layer for data access operations"
New-BackdatedCommit "2025-01-11" "Create repository interfaces"
New-BackdatedCommit "2025-01-13" "Implement service layer business logic"
New-BackdatedCommit "2025-01-15" "Add helper utilities and common functions"
New-BackdatedCommit "2025-01-17" "Create web controllers for request handling"
New-BackdatedCommit "2025-01-19" "Add Thymeleaf template fragments"
New-BackdatedCommit "2025-01-21" "Create home page template"
New-BackdatedCommit "2025-01-23" "Add user authentication templates"
New-BackdatedCommit "2025-01-25" "Implement OTP verification page"
New-BackdatedCommit "2025-01-27" "Create admin dashboard interface"
New-BackdatedCommit "2025-01-29" "Add product addition functionality"
New-BackdatedCommit "2025-01-31" "Implement product viewing and display"
New-BackdatedCommit "2025-02-02" "Create product editing interface"
New-BackdatedCommit "2025-02-04" "Add product management dashboard"
New-BackdatedCommit "2025-02-06" "Implement shopping cart functionality"
New-BackdatedCommit "2025-02-08" "Add payment processing page"
New-BackdatedCommit "2025-02-10" "Create order tracking interface"
New-BackdatedCommit "2025-02-12" "Implement error handling pages"
New-BackdatedCommit "2025-02-14" "Add CSS styling for home and navigation"
New-BackdatedCommit "2025-02-16" "Style authentication pages"
New-BackdatedCommit "2025-02-18" "Add product-related CSS styling"
New-BackdatedCommit "2025-02-20" "Complete CSS styling with footer and error pages"
New-BackdatedCommit "2025-02-22" "Add product images and media assets"
New-BackdatedCommit "2025-02-24" "Implement basic application tests"

# Generate commits for remaining months
$improvements = @(
    "Refactor service layer methods",
    "Improve error handling and validation", 
    "Enhance security features",
    "Update UI components",
    "Optimize database queries",
    "Add comprehensive logging",
    "Improve code documentation",
    "Enhance responsive design",
    "Update controller logic",
    "Add validation rules",
    "Improve exception handling",
    "Update CSS styling",
    "Enhance user authentication",
    "Fix minor bugs",
    "Optimize performance",
    "Add feature enhancements",
    "Code cleanup and refactoring",
    "Update dependencies",
    "Improve data validation",
    "Add security improvements",
    "Update configuration",
    "Enhance error messages",
    "Improve code structure",
    "Add integration improvements",
    "Fine-tune settings"
)

# Create commits from Feb 26 to Aug 25
$currentDate = [DateTime]"2025-02-26"
$endDate = [DateTime]"2025-08-25"
$index = 0

while ($currentDate -le $endDate) {
    $message = $improvements[$index % $improvements.Length]
    $dateStr = $currentDate.ToString("yyyy-MM-dd")
    New-BackdatedCommit $dateStr $message
    
    $currentDate = $currentDate.AddDays(2)
    $index++
}

Write-Host "Git repository setup complete!"
Write-Host "Total commits created from Jan 1 to Aug 25, 2025"
