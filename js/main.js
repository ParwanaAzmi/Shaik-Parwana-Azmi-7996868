const checkBtn = document.querySelector("#checkBtn");

const output = document.querySelector("#output");


checkBtn.addEventListener("click", function(){

    try{

        const seats = 0;


        if(seats <= 0){

            throw new Error(
                "No Seats Available"
            );

        }


        output.textContent = `
            Registration Successful
        `;

    }

    catch(error){

        output.textContent = error.message;

        output.style.color = "red";

        console.log("Error Found:");
        console.log(error);

    }

    finally{

        console.log(
            "Execution Completed"
        );

    }

});