window.onload = function() {
    var slideslist = document.getElementsByClassName("slide");
    for (var pageno = 0; pageno < slideslist.length; pageno++) {
        var slidenumber = slideslist[pageno].getElementsByClassName("pagenumber");
        if (slidenumber.length != 0) {
            var ptag = slidenumber[0].getElementsByTagName("p")[0];
            ptag.innerHTML = pageno + 1;
        }
    }
}
