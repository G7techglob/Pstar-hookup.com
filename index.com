<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>PStar Dashboard</title>

<link rel="stylesheet" href="index.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
</head>

<body>

<!-- TOP BAR -->
<header class="topbar">
    <button id="menuBtn">☰</button>

    <h2>PStar Dashboard</h2>

    <div class="top-actions">
        <button id="themeBtn">🌙</button>
        <button id="notifyBtn">🔔</button>
        <span id="dateTime"></span>
    </div>
</header>

<div class="dashboard">

    <!-- SIDEBAR -->
    <aside class="sidebar">
        <h2>PStar</h2>

        <a href="#">Dashboard</a>
        <a href="#">Users</a>
        <a href="#">Messages</a>
        <a href="#">Matches</a>
        <a href="#">Reports</a>
        <a href="#">Settings</a>
        <a href="#">Logout</a>
    </aside>

    <!-- MAIN CONTENT -->
    <main class="content">

        <!-- STATS CARDS -->
        <div class="cards">

            <div class="card">
                <h3 id="usersCount">0</h3>
                <p>Total Users</p>
            </div>

            <div class="card">
                <h3 id="activeCount">0</h3>
                <p>Active Users</p>
            </div>

            <div class="card">
                <h3 id="premiumCount">0</h3>
                <p>Premium Members</p>
            </div>

            <div class="card">
                <h3 id="revenueCount">0</h3>
                <p>Revenue</p>
            </div>

        </div>

        <!-- USERS TABLE -->
        <div class="table-section">
            <h3>Recent Users</h3>

            <table>
                <tr>
                    <th>User</th>
                    <th>Profile</th>
                    <th>Country</th>
                    <th>Status</th>
                </tr>

                <tr>
                    <td>John Doe</td>
                    <td><img src="https://i.pravatar.cc/40?img=1" class="avatar"></td>
                    <td>USA</td>
                    <td><span class="status active">Active</span></td>
                </tr>

                <tr>
                    <td>Amina Ali</td>
                    <td><img src="https://i.pravatar.cc/40?img=5" class="avatar"></td>
                    <td>Libya</td>
                    <td><span class="status pending">Pending</span></td>
                </tr>

            </table>
        </div>

        <!-- MEDIA SECTION -->
        <div class="media-panel">
            <h3>Platform Media</h3>

            <div class="video-grid">

                <div class="video-card">
                    <video controls>
                        <source src="sample1.mp4" type="video/mp4">
                    </video>
                    <p>User Intro Video</p>
                </div>

                <div class="video-card">
                    <video controls>
                        <source src="sample2.mp4" type="video/mp4">
                    </video>
                    <p>Verification Video</p>
                </div>

            </div>
        </div>

    </main>

</div>

<script src="index.js"></script>

</body>
</html>
