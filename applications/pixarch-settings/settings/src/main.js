const { invoke } = window.__TAURI__.tauri;

// <div id="WelcomeText">Welcome to Pixarch settings!</div>
// <div id="FoxImage">
// <Image src="assets/settings.png" alt="Fox" id='Fox'></Image>
// </div>

function Settings(){
    $("#Viewport").empty()
    $('#Viewport').append('<div id="WelcomeText">Welcome to Pixarch settings!</div>'); 
    $('#Viewport').append('<div id="FoxImage"><Image src="assets/settings.png" alt="Fox" id="Fox"></Image></div>');
}; 

function Appearance(){
    $("#Viewport").empty()
    $('#Viewport').append('<div id="ChangeWallpaper">Change Wallpaper</div>'); 
};

function Audio(){};
function Bluetooth(){};
function Display(){};
function Documentation(){};
function Packages(){};
function Shortcuts(){};
function Users(){};
function WiFi(){};

window.onload = function(){
    $("#Settings").on("click", Settings())
    $("#Appearance").on("click", Appearance())
}