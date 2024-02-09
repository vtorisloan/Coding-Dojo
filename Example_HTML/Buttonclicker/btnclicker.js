function hide(button){
   button.remove(button)
}

function logout(button){
    button.innerText = "Log out"
}

// likes core project:

//increase the like button by 1

function plus1(button){
    for (let i = 0; i < button.parentNode.children.length; i++) {
}
}

//change the lke button to increase by 1
let counter = 0;
function plus1(button){
    button.innerText = counter++;
}