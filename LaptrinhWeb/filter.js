const btns = document.querySelectorAll(".btn");
const storeProducts = document.querySelectorAll(".store-product");


for (let i = 0; i < btns.length; i++) {
    btns[i].addEventListener("click", function (e) {
      const current = document.getElementsByClassName("actives");
      current[0].className = current[0].className.replace(" actives", "");
      this.className += " actives";
  
      // Switch Tab content
      const filter = e.target.dataset.filter;
      // console.log(filter);
      storeProducts.forEach((product) => {
        if (filter === "all") {
          product.style.display = "block";
        } else if (product.classList.contains(filter)) {
          product.style.display = "block";
        } else {
          product.style.display = "none";
        }
      });
    });
  }

//search filter
const search = document.getElementById("search");
search.addEventListener("keyup", (e) =>{
    e.preventDefault();
    const searchValue = search.value.toLowerCase().trim();

    for(i=0;i<storeProducts.length;i++)
    {
        if(storeProducts[i].classList.contains(searchValue))
        {
            storeProducts[i].style.display= "block";
        }
        else if (searchValue== "")
        {
            storeProducts[i].style.display= "block";
        }
        else
        {
            storeProducts[i].style.display= "none";
        }
    }
})
