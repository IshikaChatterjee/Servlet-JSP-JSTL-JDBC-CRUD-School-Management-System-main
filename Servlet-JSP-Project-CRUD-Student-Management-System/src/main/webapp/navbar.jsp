<style>
    /* Neumorphic Pink Navbar */

    .neumorphic-nav {
        background: #FFDDEE;
        box-shadow:  5px 5px 15px #FFC1D1, 
                    -5px -5px 15px #FFF0FF;
        border-radius: 15px;
        padding: 0 20px;
        max-width: 970px;  /* Adjust this to your preferred width */
        margin: 0 auto;  /* Center the navbar */
        max-height: 100px;
    }

    /* Neumorphic Pink Buttons */

    .neumorphic-btn {
        border: none;
        border-radius: 10px;
        padding: 10px 20px;
        background: #FFDDEE;
        box-shadow:  5px 5px 10px #FFC1D1, 
                    -5px -5px 10px #FFF0FF;
        cursor: pointer;
        transition: all 0.3s ease;
        margin-top: 20px;
    }

    .neumorphic-btn:hover {
        background: #FFC1D1; /* Slightly darker shade of pink */
    }

    .neumorphic-btn:active {
        box-shadow:  inset 5px 5px 10px #FFC1D1, 
                    inset -5px -5px 10px #FFF0FF;
    }

    /* Navbar Content */
    .neumorphic-nav .navbar-content {
        display: flex;
        justify-content: space-between;
        align-items: center;
        width: 300px;
        margin: 0 auto; /* Center the navbar-content */
    }
    
        .neumorphic-nav .navbar-content {
        display: flex;
        justify-content: space-between;
         width: 300px;  /* Adjust this value based on your requirements */
    margin: 0 auto; /* Center the navbar-content */
    }
    

</style>

<nav class="navbar navbar-expand-lg neumorphic-nav">
    <div class="container">
        <div class="navbar-content">
            <button onclick="location.href='index.jsp'" class="neumorphic-btn">Home</button>
            <button onclick="location.href='save-student.jsp'" class="neumorphic-btn">Save Student</button>
        </div>
    </div>
</nav>
