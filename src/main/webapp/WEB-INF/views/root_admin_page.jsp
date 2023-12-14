<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Root Admin</title>
    <style>
        body {
            background: #1a237e;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column; /* Align children vertically */
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            color: #ecf0f1;
        }

        h3 {
            color: #ecf0f1;
            text-align: center;
            margin-bottom: 20px;
        }

        .container {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 80px;
            max-width: 800px;
            justify-content: center;
        }

        .content-card {
            background-color: #3498db; /* Revised color */
            color: #ecf0f1;
            padding: 20px;
            border-radius: 10px;
            width: 100%;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        .content-card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        h2 {
            margin-bottom: 10px;
        }

        p {
            font-size: 14px;
            margin-bottom: 20px;
        }

        a {
            display: block;
            background-color: #2980b9; /* Revised color */
            color: #ecf0f1;
            text-decoration: none;
            font-weight: bold;
            padding: 10px;
            border-radius: 5px;
            text-align: center;
            transition: background-color 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        a:hover {
            background-color: #1d6fa5; /* Revised color */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <h1>Welcome to Root Admin</h1>

    <div class="container">
        <div class="content-card">
            <h2>Admin Details</h2>
            <p>View and manage admin details.</p>
            <a href="admin_view">Go to Admin Details</a>
        </div>

        <div class="content-card">
            <h2>Trainer Access Page</h2>
            <p>Access and manage trainer details.</p>
            <a href="trainerView/trainer_view">Go to Trainer Details</a>
        </div>

        <div class="content-card">
            <h2>Trainee Access Page</h2>
            <p>Access and manage trainee details.</p>
            <a href="traineeView/trainee_view">Go to Trainee Details</a>
        </div>

        <div class="content-card">
            <h2>Course Edit Page</h2>
            <p>Edit and manage courses.</p>
            <a href="course/showCoursesList">Go to Course Edit</a>
        </div>

        <div class="content-card">
            <h2>Trainee Edit Page</h2>
            <p>Edit and manage trainees.</p>
            <a href="trainee/showTraineesList">Go to Trainee Edit</a>
        </div>

        <div class="content-card">
            <h2>Trainer Edit Page</h2>
            <p>Edit and manage trainers.</p>
            <a href="trainer/showTrainersList">Go to Trainer Edit</a>
        </div>
        <div class="content-card">
            <h2>Course Assigning</h2>
            <p>Edit and Assign Course.</p>
            <a href="courseView/openCourseViewPage">Go to Course Assign</a>
        </div>
        <div class="content-card">
            <h2>Assigned List</h2>
            <p>Showing Assign List</p>
            <a href="assign_list">Assigned List</a>
        </div>
        <div class="content-card">
            <h2>Attendance Trainer List</h2>
            <p>Showing Attendance Trainer List</p>
            <a href="openAllTrainerAttendance">Trainer Attendance List</a>
        </div>
        <div class="content-card">
            <h2>Attendance Trainee List</h2>
            <p>Showing Attendance Trainee List</p>
            <a href="openAllTraineeAttendance">Trainee Attendance List</a>
        </div>
    </div>
</body>
</html>
