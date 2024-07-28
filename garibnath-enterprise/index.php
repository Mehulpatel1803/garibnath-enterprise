<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Garibnath Enterprise</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
</head>
<body>
    <!-- nav container -->
    <nav class="nav-container">
        <!-- left: Logo -->
        <img class="logo" src="image/garibnath.jpg" alt="Garibnath Logo">

        <!-- middle container: Header -->
        <div class="header">
            <h1 class="header-item">GARIBNATH <span style="color: #04ddb2;">ENTERPRISE</span></h1>
        </div>

        <!-- right: Download Button -->
        <h3 class="download-btn">
            Stone crusher all parts.
        </h3>
    </nav>

    
    <!-- Content for the rest of your page -->
    <div class="content">
        <!-- Page content goes here -->
    </div>


    <section class="section">
        <!-- Search Bar -->
<div class="search-container">
        <input class="search-bar" type="text" id="searchBar" placeholder="Search for items..." onkeyup="filterItems()">
    </div>
        <div class="upper-hero-container">
            <button class="item-btn">
                <a href="nut bolt/nutbolt.php">NUT BOLT</a>
            </button>
            <button class="item-btn">
                <a href="stud bolt/studbolt.php">STUD-BOLT</a>
            </button>
            <button class="item-btn">
                <a href=" chaaki/chaaki.php ">CHAAKI</a>
            </button>
            <button class="item-btn">
                <a href="crenk bearing/cr_bearing.php">CRENK BEARING</a>
            </button>
            <button class="item-btn">
                <a href="PILLOW BEARING/p_bearing.php">PILLOW BEARING</a>
            </button>
            <button class="item-btn">
                <a href="PATTA-BOLT/p_bolt.php">PATTA BOLT</a>
            </button>
            <button class="item-btn">
                <a href="H.J ROLLER/hJ_r.php">H.J ROLLER</a>
            </button>
            <button class="item-btn">
                <a href="H.J RETRUN ROLLER/hj_rr.php">H.J RETRUN ROLLER</a>
            </button>
            <button class="item-btn">
                <a href="JAY KHODIYAR ROLLER/jk_roller.php">JAY KHODIYAR ROLLER</a>
            </button>
            <button class="item-btn">
                <a href="JAY KHODIYAR RITRUN ROLLER/jkr_roller.php">JAY KHODIYAR RITRUN ROLLER  </a>
            </button>
            <button class="item-btn">
                <a href="DAYFREM/dayfrem.php">DAYFREM</a>
            </button>
            <button class="item-btn">
                <a href="HAFHROUND/hafhround.php">HAFHROUND</a>
            </button>
            <button class="item-btn">
                <a href="TOGAL PIN/t_pin.php">TOGAL PIN</a>
            </button> 
            <button class="item-btn">
                <a href="OIL MOTAR/o_motar.php">OIL MOTOR</a>
            </button> 
            <button class="item-btn">
                <a href="GEAR/gear.php">GEAR</a>
            </button> 
            <button class="item-btn">
                <a href="THROSS SPRINGS/t_spring.php">THROSS SPRINGS</a>
            </button> 
            <button class="item-btn">
                <a href="THROSS SPRINGS RAD/ts_rod.php">THROSS SPRINGS ROD</a>
            </button> 
            <button class="item-btn">
                <a href="TOGAL SPRINGS/togal_spring.php">TOGAL SPRINGS</a>
            </button> 
            <button class="item-btn">
                <a href="JAADI/jaadi.php">JAADI</a>
            </button> 
            <button class="item-btn">
                <a href="PULLEY/pulley.php">PULLEY</a>
            </button> 
            <button class="item-btn">
                <a href="ROLLER FREAM/r_fream.php">ROLLER FREAM</a>
            </button> 
            <button class="item-btn">
                <a href="HAIGHLET/haighlet.php">HAIGHLET</a>
            </button> 
            <button class="item-btn">
                <a href="GEAR SETTING BOLT/gs_bolt.php">GEAR SPRINGS BOLT</a>
            </button> 
            <button class="item-btn">
                <a href="TOGAL/togal.php">TOGAL</a>
            </button> 
            <button class="item-btn">
                <a href="V-BELT/v_belt.php">V-BELT</a>
            </button> 
            <button class="item-btn">
                <a href="OIL SEAL'S/oil_seal.php">OIL SEAL'SS</a>
            </button> 
            
        </div>
        
    </section>

    <script>
        function filterItems() {
            const input = document.getElementById('searchBar').value.toUpperCase();
            const items = document.querySelectorAll('.item-btn a');

            items.forEach(item => {
                const text = item.textContent || item.innerText;
                if (text.toUpperCase().indexOf(input) > -1) {
                    item.parentElement.style.display = "";
                } else {
                    item.parentElement.style.display = "none";
                }
            });
        }
    </script>
</body>
</html>
