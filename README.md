# 🚕 METERDOWN - Premium Ride Aggregator for Chennai

A sleek, visually striking, and intuitive Java Swing desktop application that serves as a premium ride-hailing aggregator for Chennai. Built with modern UI principles, cinematic themes, and local data storage powered by SQLite.

## ✨ Features

### 🎭 Theatrical Login & Onboarding
- **Immersive Background**: Stunning Chennai nightlife theme with light trails
- **Floating Panel**: Custom-painted rounded corners with Taxi Yellow glow effects
- **Secure Authentication**: SHA-256 password hashing with PreparedStatements
- **Password Recovery**: Multi-step security question verification
- **Smooth Animations**: Fade-in effects and shake animations for errors

### 🗺️ Dynamic Booking Dashboard
- **Intelligent Trip Planning**: Google Places API integration for destination search
- **Quick Access**: Saved locations for Home and Work
- **Vehicle Selection**: Bike, Auto, and Cab options with sub-categories
- **Live Fare Comparison**: Real-time pricing from Uber, Ola, and Rapido
- **Interactive Map**: Google Static Maps API integration with route visualization
- **Traffic Simulation**: Animated vehicle icons on static maps

### 🚀 Seamless Redirection
- **Cinematic Countdown**: 3-2-1 countdown sequence before browser redirection
- **Service Integration**: Direct links to official ride-hailing websites
- **Smooth Transitions**: CardLayout-based view switching

### 👤 Personal Hub
- **Profile Management**: User information editing and password changes
- **Ride History**: Complete trip log with filtering and search
- **Settings**: Theme switching (Dark/Light/System) and language selection

### 🛠️ Admin Dashboard
- **User Management**: Full CRUD operations for user accounts
- **Analytics**: JFreeChart integration for ride statistics
- **Data Export**: CSV export functionality for reports
- **Interactive Charts**: Pie charts for service distribution, bar charts for monthly trends

## 🏗️ Architecture

### Model-View-Controller (MVC) Pattern
- **Models**: User, SavedLocation, Ride entities
- **Views**: Swing-based UI components with custom animations
- **Controllers**: Service classes for business logic

### Database Schema (SQLite)
```sql
-- Users table
CREATE TABLE users (
    user_id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    role TEXT NOT NULL DEFAULT 'USER',
    security_question TEXT NOT NULL,
    security_answer_hash TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Saved locations
CREATE TABLE saved_locations (
    location_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    label TEXT NOT NULL,
    address TEXT NOT NULL,
    latitude REAL NOT NULL,
    longitude REAL NOT NULL,
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

-- Ride history
CREATE TABLE rides (
    ride_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    origin_address TEXT NOT NULL,
    destination_address TEXT NOT NULL,
    service_provider TEXT NOT NULL,
    estimated_fare_range TEXT,
    status TEXT NOT NULL DEFAULT 'REQUESTED',
    requested_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);
```

## 🚀 Getting Started

### Prerequisites
- Java 11 or higher
- Maven 3.6 or higher
- Google Maps API key (optional, for full functionality)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/meterdown.git
   cd meterdown
   ```

2. **Build the project**
   ```bash
   mvn clean compile
   ```

3. **Run the application**
   ```bash
   mvn exec:java -Dexec.mainClass="com.meterdown.MeterDownApp"
   ```

### Configuration

1. **Google Maps API Setup** (Optional)
   - Get API keys from [Google Cloud Console](https://console.cloud.google.com/)
   - Update `MapService.java` with your API keys:
     ```java
     private static final String GOOGLE_MAPS_API_KEY = "YOUR_API_KEY";
     private static final String GOOGLE_PLACES_API_KEY = "YOUR_API_KEY";
     ```

2. **Database Setup**
   - SQLite database is created automatically on first run
   - Default admin credentials: `admin@meterdown.com` / `admin123`

## 🎨 UI/UX Features

### Modern Design
- **FlatLaf Look and Feel**: Clean, modern component styling
- **Custom Animations**: Smooth transitions and hover effects
- **Responsive Layout**: Adaptive panels and split views
- **Accessibility**: Full keyboard navigation support

### Theming System
- **Night Rider (Dark)**: Professional dark theme
- **Day Tripper (Light)**: Clean light theme
- **System Default**: Follows OS theme preferences

### Internationalization
- **English**: Full language support
- **Tamil (தமிழ்)**: Complete Tamil localization
- **Extensible**: Easy to add more languages

## 🔧 Technical Specifications

### Dependencies
- **SQLite JDBC**: Database connectivity
- **FlatLaf**: Modern look and feel
- **JFreeChart**: Analytics and reporting
- **Apache HttpClient**: API integration
- **Jackson**: JSON processing
- **Logback**: Logging framework

### Security Features
- **Password Hashing**: SHA-256 with salt
- **SQL Injection Prevention**: PreparedStatements only
- **Input Validation**: Comprehensive data validation
- **Session Management**: Secure user sessions

### Performance Optimizations
- **Connection Pooling**: Efficient database connections
- **Lazy Loading**: On-demand data loading
- **Memory Management**: Proper resource disposal
- **Async Operations**: Non-blocking UI updates

## 📱 Usage Guide

### For Users
1. **Login**: Use your email and password to access the dashboard
2. **Book a Ride**: Enter destination, select vehicle type, and choose service
3. **View History**: Access your complete ride history
4. **Manage Profile**: Update personal information and change password

### For Administrators
1. **User Management**: View, edit, and manage user accounts
2. **Analytics**: Monitor ride statistics and trends
3. **Data Export**: Export user and ride data to CSV
4. **System Monitoring**: Track application usage and performance

## 🧪 Testing

### Running Tests
```bash
mvn test
```

### Test Coverage
- Unit tests for service classes
- Integration tests for database operations
- UI component testing
- Security validation tests

## 📊 Analytics & Reporting

### Admin Dashboard Features
- **User Statistics**: Total users, new registrations
- **Ride Analytics**: Service provider distribution
- **Monthly Trends**: Ride volume over time
- **Export Capabilities**: CSV data export

### Chart Types
- **Pie Charts**: Service provider distribution
- **Bar Charts**: Monthly ride trends
- **Interactive Filters**: Date range selection

## 🌐 API Integration

### Google Services
- **Places API**: Location autocomplete and suggestions
- **Static Maps API**: Route visualization and mapping
- **Geocoding API**: Address to coordinates conversion

### Fallback System
- **Mock Data**: Works without API keys
- **Offline Mode**: Basic functionality without internet
- **Error Handling**: Graceful degradation

## 🔒 Security Considerations

### Data Protection
- **Password Security**: SHA-256 hashing with salt
- **SQL Injection Prevention**: Parameterized queries only
- **Input Sanitization**: All user inputs validated
- **Session Security**: Secure session management

### Privacy Features
- **Data Encryption**: Sensitive data encrypted at rest
- **Access Control**: Role-based permissions
- **Audit Logging**: Complete activity tracking

## 🚀 Deployment

### JAR Creation
```bash
mvn clean package
```

### Distribution
- **Executable JAR**: `target/meterdown-1.0.0.jar`
- **Dependencies**: All dependencies included
- **Cross-Platform**: Works on Windows, macOS, Linux

### System Requirements
- **Java**: JRE 11 or higher
- **Memory**: 512MB RAM minimum
- **Storage**: 100MB disk space
- **Network**: Internet connection for full functionality

## 🤝 Contributing

### Development Setup
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Submit a pull request

### Code Standards
- **Java Conventions**: Follow standard Java naming
- **Documentation**: Comprehensive JavaDoc comments
- **Testing**: Unit tests for all new features
- **Security**: Security review for all changes

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Google Maps API**: For mapping and location services
- **FlatLaf**: For modern UI components
- **JFreeChart**: For analytics visualization
- **Apache Foundation**: For HTTP client library
- **SQLite**: For lightweight database solution

## 📞 Support

For support, email support@meterdown.com or create an issue in the GitHub repository.

---

**METERDOWN** - Premium Ride Aggregator for Chennai 🚕✨
