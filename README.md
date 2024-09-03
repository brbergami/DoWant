# DoWant!
DoWant! is a SwiftUI app that helps you save, organize, and track your purchase links in a beautiful Pinterest-like interface. It integrates with Firebase for user authentication, real-time database, and storage.

### Key Features
* **Save purchase links** with images from various e-commerce sites
* **Organize links** into customizable wishlists
* **Monitor price changes** and get alerts on price drops
* **Compare prices** across different marketplaces
* **Budgeting tools** to set spending limits
* **Dark/Light mode** support
* **Cross-device sync** of wishlists via Firebase
* **Secure authentication** with Firebase

### Some raw screenshots:
![Login](https://github.com/brbergami/ux/blob/main/ux/dowant/screenshots/1.png?raw=true)

![Register](https://github.com/brbergami/ux/blob/main/ux/dowant/screenshots/2.png?raw=true)

![Image items](https://github.com/brbergami/ux/blob/main/ux/dowant/screenshots/3.png?raw=true)

### Architecture
DoWant! follows a clean architecture with the MVVM design pattern. Key components:
* **Views**: SwiftUI views for the UI
* **ViewModels**: Contain the business logic and interact with the model
* **Models**: Data models like **WishlistItem**, **Wishlist**, **User**, etc.
* **Services**: Encapsulate Firebase interactions for authentication, database, and storage.

### Setup [TBD]
**1** **Install Dependencies**:

**2** **Configure Firebase**:
	
**3** **Run the app** and enjoy!

⠀Roadmap
* **Price Tracking**: Implement web scraping to monitor prices and send alerts.
* **Sharing**: Allow sharing wishlists.
* **Collaborative Wishlists**: Multiple users can contribute to a shared wishlist.
* **Notifications**: Get notified of price drops, restocks, and wishlist updates.
* **Integrations**: Support for well known e-commerce sites.

### License
This project is licensed under the MIT License.
