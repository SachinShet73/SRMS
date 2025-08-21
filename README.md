# BIET Student Result Management System (SRMS)

A comprehensive web-based student result management system built with PHP and MySQL for BIET (Bharat Institute of Engineering and Technology). This system allows administrators to manage student records, subjects, classes, and results efficiently.

## Features

### Admin Features
- **Dashboard**: Overview of total students, subjects, classes, and declared results
- **Student Management**: Add, edit, and manage student records
- **Class Management**: Create and manage semester classes with sections
- **Subject Management**: Add subjects and manage subject combinations for classes
- **Result Management**: Declare results for students and edit existing results
- **Admin Authentication**: Secure login system with password change functionality

### Student Features
- **Result Lookup**: Students can search for their results using USN and semester
- **Print Results**: Built-in print functionality for result sheets
- **Responsive Design**: Mobile-friendly interface

## Technology Stack

- **Backend**: PHP 7+ with PDO for database operations
- **Database**: MySQL/MariaDB
- **Frontend**: HTML5, CSS3, Bootstrap 3.x
- **JavaScript**: jQuery for AJAX operations and interactivity
- **Build Tools**: Gulp.js for asset compilation and optimization

## Installation

### Prerequisites
- Web server (Apache/Nginx)
- PHP 7.0 or higher
- MySQL 5.7 or MariaDB 10.2+
- Node.js and npm (for development)

### Setup Instructions

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd student-result-management-system
   ```

2. **Database Setup**
   - Create a new MySQL database named `srms`
   - Import the database schema:
   ```bash
   mysql -u root -p srms < srms.sql
   ```

3. **Configure Database Connection**
   - Edit `includes/config.php` with your database credentials:
   ```php
   define('DB_HOST','localhost');
   define('DB_USER','your_username');
   define('DB_PASS','your_password');
   define('DB_NAME','srms');
   ```

4. **Install Dependencies (Optional - for development)**
   ```bash
   npm install
   ```

5. **Run Development Server**
   - Place the project in your web server directory
   - Access via `http://localhost/your-project-folder`

## Default Login Credentials

- **Username**: admin
- **Password**: admin
- **Note**: Change the default password immediately after first login

## Database Structure

### Core Tables
- `admin`: Administrator credentials
- `tblstudents`: Student information and records
- `tblclasses`: Semester classes and sections
- `tblsubjects`: Subject details
- `tblsubjectcombination`: Subject-class associations
- `tblresult`: Student results and marks

## File Structure

```
├── includes/
│   ├── config.php          # Database configuration
│   ├── leftbar.php         # Navigation sidebar
│   └── topbar.php          # Top navigation
├── css/                    # Stylesheets
├── js/                     # JavaScript files
├── images/                 # Image assets
├── dashboard.php           # Admin dashboard
├── index.php              # Main login page
├── find-result.php        # Student result search
├── result.php             # Result display page
├── add-students.php       # Student registration
├── manage-students.php    # Student management
├── create-class.php       # Class creation
├── manage-classes.php     # Class management
├── create-subject.php     # Subject creation
├── manage-subjects.php    # Subject management
├── add-result.php         # Result declaration
├── manage-results.php     # Result management
└── srms.sql              # Database schema
```

## Usage

### For Administrators

1. **Login**: Access the admin panel at `index.php`
2. **Setup Classes**: Create semesters and sections
3. **Add Subjects**: Define subjects and associate them with classes
4. **Register Students**: Add student information
5. **Declare Results**: Enter marks for students by subject

### For Students

1. **Search Results**: Go to the student portal
2. **Enter Details**: Provide USN and select semester
3. **View Results**: Results display with total marks and percentage
4. **Print**: Use the print function to get a hard copy

## Security Features

- Password hashing using MD5 (Note: Consider upgrading to bcrypt)
- Session management for admin authentication
- SQL injection prevention using PDO prepared statements
- Input validation and sanitization

## Development

### Build Process
The project uses Gulp for development automation:

```bash
# Compile Sass files
gulp styles

# Minify JavaScript
gulp scripts

# Watch for changes
gulp serve
```

### Code Standards
- PHP code follows basic PSR standards
- Database queries use PDO with prepared statements
- Frontend uses Bootstrap for responsive design

## Known Issues

1. **Password Security**: Currently uses MD5 hashing - should be upgraded to bcrypt
2. **Browser Compatibility**: Optimized for modern browsers
3. **Mobile Responsiveness**: Some admin pages may need mobile optimization

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is developed for educational purposes. Please check with the original authors for licensing terms.

## Support

For technical support or feature requests, please contact the development team or create an issue in the project repository.

## Changelog

### Version 1.0
- Initial release with core functionality
- Admin and student portals
- Basic result management system
- Print functionality

---

**Note**: This system is designed for educational institutions and may require customization based on specific requirements. Always backup your database before making significant changes.
