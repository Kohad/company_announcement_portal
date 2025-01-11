# Company Announcement Portal

This is a Ruby on Rails project for a Company Announcement Portal. The application includes features such as user registration, authentication, profile management, post creation, comments, and more.

## Features

1. **User Registration and Authentication**
   - Users can register, log in, and log out.
   - Devise is used for authentication.

2. **User Profiles**
   - Users have individual profile pages displaying basic information.
   - Users can view other users' profiles.

3. **Posts**
   - Users can create, view, edit, and delete posts.
   - Posts support text and image attachments.

4. **Comments**
   - Users can comment on posts.
   - Comments support nested replies (up to 4 levels deep).
   - Users can edit and delete their own comments.

5. **Profile Comments**
   - Users can leave comments on other users' profiles.

---

## Prerequisites

Ensure you have the following installed:

- Ruby (3.1.1)
- Rails (6.1.7 or compatible)
- SQLite3
- Node.js (18.20.0)

---

## Setup Instructions

1. **Clone the Repository**:
   ```bash
   git clone <repository_url>
   cd company_announcement_portal
   ```

2. **Install Dependencies**:
   ```bash
   bundle install
   ```

3. **Set Up the Database**:
   ```bash
   rails db:create
   rails db:migrate
   ```

4. **Run the Server**:
   ```bash
   rails server
   ```

5. **Access the Application**:
   Open your web browser and go to [http://localhost:3000](http://localhost:3000).

---

## Usage

1. **Sign Up**: Create a new user account.
2. **Sign In**: Sign in your account.
    **url**: [http://127.0.0.1:3000/users/sign_in](http://127.0.0.1:3000/users/sign_in)
3. **Create Posts**: Once logged in, create new posts by clicking "New Post."
4. **Comment**: Comment on posts and reply to existing comments.
5. **Edit Profile**: View and edit your profile information.
6. **Edit Profile**: View and edit your profile information.
7. **Sign Out**: Sign out your account.
    **url**: [http://127.0.0.1:3000/users/sign_out](http://127.0.0.1:3000/users/sign_out)
---
