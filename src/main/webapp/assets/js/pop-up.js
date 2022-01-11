/**
 * 
 */
// chiudi il pupup quando clicchi sulla X
 document.getElementById("close").onclick = function(e){
    document.getElementById('pop').style.display="none";
}

// chiudi il popup quando clicchi sullo sfondo nero
document.getElementById("pop").onclick = function(e){
    document.getElementById('pop').style.display="none";
}