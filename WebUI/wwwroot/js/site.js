function SolMenu(alan = "#solMenuResponse", seciliSayfa = "Profil") {
    $.ajax({
        type: "POST",
        url: "/Home/SolMenu",
        data: {
            seciliSayfa: seciliSayfa
        },
        success: function (response) {
            $(alan).html(response);
        },
        error: function () {
            alert("Sol Menu Listeleme Hatası!");
        }
    });
}