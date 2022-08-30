let user=parseInt(prompt("Tapez votre nom ici !"))
alert("" .user)


let mainTitle = document.getElementById("Title")
let userUnput = parseInt(prompt("Tapez sur 1 si vous êtes un homme \n Tapez sur 2 si vous êtes une femme"))
// if(userUnput==1)
// {
//     mainTitle.innerHTML="Bonjour Monsieur !"
//     flag=0
// }
// else
// {
//   mainTitle.innerHTML="Bonjour Madame !"
//   flag=0
// }
// setTimeout(()=>
// {
//     mainTitle.innerHTML="Santa Dave"
// },5000)
Pub(1)
function Pub(flag)
{
    if(flag==0)
    {
        mainTitle.innerHTML= '<span style="color: blue">Santa Dave</span>'
        flag=1
    }
    else if(userUnput==1)
    {
        mainTitle.innerHTML= '<span style="color: black">Bonjour Monsieur !</span>'
        flag=0
    }
    else
    {
       mainTitle.innerHTML=('<span style="color: yellow">Bonjour Madame !</span>')
       flag=0
    }
    setTimeout(()=>Pub(flag),5000);
}


let pubzalando=document.getElementById("pubzalando")
       
let pubswapfiets=document.getElementById("pubswapfiets")

let pubdelhaize=document.getElementById("pubdelhaize")

let innerHTMLpubzalando=pubzalando.innerHTML

let innerHTMLpswapfiets=pubswapfiets.innerHTML

let innerHTMLpdelhaize=pubdelhaize.innerHTML

function PubImg (compteur)
{
    if(compteur==0)
    {
        pubzalando.innerHTML=innerHTMLpubzalando
        pubswapfiets.innerHTML=""
        pubdelhaize.innerHTML=""
    }
    else if (compteur==1)
    {
        pubswapfiets.innerHTML=innerHTMLpubzalando
        pubzalando.innerHTML=""
        pubdelhaize.innerHTML=""
    }
    else if(compteur==2)
    {
        pubdelhaize.innerHTML=innerHTMLPubAUDI
        pubzalando.innerHTML=""
        pubswapfiets.innerHTML=""
    }
    compteur++

    if (compteur==3)
    {
        compteur=0
    }

    setTimeout(() => PubImg(compteur), 5000);
}
PubImg(0)



document.getElementById("DaveImage1").addEventListener("click", function(){document.getElementById("audio1").play()});

let body= document.getElementById("Body")
function ChangeColor()
{
  if (body.style.background!="black")
  {
    body.style.background!="black"
    body.style.color="white"
  }
  else
  {
    body.style.background="white"
    body.style.color="black"
  }
}
document.getElementById("Botton").addEventListener("Lick",ChangeColor)
