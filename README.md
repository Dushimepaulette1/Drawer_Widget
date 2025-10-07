```markdown
# Flutter Drawer Widget Demo 🍔

A simple Pizza Palace app demonstrating the Flutter Drawer widget for navigation.

## 🚀 How to Run

1. **Prerequisites**: Make sure you have Flutter installed
2. **Clone the repository**:
   ```bash
   git clone <your-repo-url>
   cd <repository-name>
   ```
3. **Get dependencies**:
   ```bash
   flutter pub get
   ```
4. **Run the app**:
   ```bash
   flutter run
   ```

## 🎯 Using the App

1. Tap the hamburger icon 🍔 to open the Drawer
2. Tap any menu item to navigate between pages
3. Watch the content update automatically!

## 🔧 Three Key Properties

### 1. **`child` Property**
Defines the entire content of the sliding panel. We used a `Column` with `ListTile` widgets.

### 2. **Custom Header**
```dart
Container(
  height: 150,
  color: Colors.red,
  child: Center(child: Text('🍕 Pizza Palace!'))
)
```
Shows how to create a custom header section.

### 3. **`ListTile` for Menu Items**
```dart
ListTile(
  leading: Icon(Icons.home),
  title: Text('Home'),
  onTap: () {
    currentPage.value = 'Home';
    Navigator.pop(context);
  },
)
```
Creates beautiful menu items with icons and tap handling.

## 📱 App Preview

![Pizza Palace App Screenshot](abb.png)

---

**Happy coding!** 🚀
```