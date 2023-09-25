function closeDrawer() {
    document.getElementById("DrawerAba").style.display = "none";
   }
function toggleDropdown() {
    var dropdownContent = document.getElementById("dropdownContent");
    if (dropdownContent.style.display === "block") {
closeDropdown();
    } else {
openDropdown();
    }
}

function openDropdown() {
    var dropdownContent = document.getElementById("dropdownContent");
    dropdownContent.style.display = "block";
    dropdownContent.style.transform = "scale(0,9)";
    setTimeout(function() {
        dropdownContent.style.transform = "scale(1)";
    }, 100);
}
function closeDropdown() {
    var dropdownContent = document.getElementById("dropdownContent");
    dropdownContent.style.transform = "scale(0,9)";
    setTimeout(function() {
        dropdownContent.style.display = "none";
    }, 100);
}

function changeFontSize(size) {
    document.body.style.fontSize = size + "px";
}
function toggleTheme() {
    var body = document.querySelector('body');
    body.classList.toggle('dark');
    toggleAccordionTheme();
    toggleAccordionButtonTheme();
}

function toggleAccordionTheme() {
    var accordion = document.querySelectorAll('.accordion');
    accordion.forEach(function(element) {
        element.classList.toggle('dark');
    });
}

function toggleAccordionButtonTheme() {
    var accordionButtons = document.querySelectorAll('.accordion-button');
    accordionButtons.forEach(function(element) {
        element.classList.toggle('dark');
    });
}

btnContatos.addEventListener('click', function() {
    if (DrawerAba.style.display === 'none') {
        DrawerAba.style.display = 'block';
    } else {
        DrawerAba.style.display = 'none';
    }
});
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.display === "block") {
      panel.style.display = "none";
      this.style.borderRadius = ""; //Retorna a configuração original para a borda
    } else {
      panel.style.display = "block";
      this.style.borderRadius = "10px 10px 0px 0px"; //Adiciona a propriedade border-radius
      this.style.fontSize = "none";
    }
  });
}