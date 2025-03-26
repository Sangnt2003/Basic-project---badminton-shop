document.addEventListener("DOMContentLoaded", function () {
    var stars = document.querySelectorAll("#starRating .bi-star");
    var ratingInput = document.getElementById("rating");

    stars.forEach(function (star, index) {
        star.addEventListener("click", function () {
            var value = this.getAttribute("data-value");
            if (value === ratingInput.value) {
                ratingInput.value = 0; 
            } else {
                ratingInput.value = value;
            }

            stars.forEach(function (s, i) {
                if (i < value) {
                    s.classList.add("bi-star-fill");
                    s.classList.remove("bi-star");
                } else {
                    s.classList.add("bi-star");
                    s.classList.remove("bi-star-fill");
                }
            });
        });

        star.addEventListener("mouseout", function () {
            var value = ratingInput.value;

            stars.forEach(function (s, i) {
                if (i < value) {
                    s.classList.add("bi-star-fill");
                    s.classList.remove("bi-star");
                } else {
                    s.classList.add("bi-star");
                    s.classList.remove("bi-star-fill");
                }
            });
        });
    });
});

function autoResize(textarea) {
    textarea.style.height = "auto"; 
    textarea.style.height = (textarea.scrollHeight) + "px";
}
