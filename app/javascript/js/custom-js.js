// function for displaying courses as per semester selected by the user
function showFilteredCourse(){
    const sem = document.getElementById('semester');
    const sem1 = document.getElementsByClassName('gdlr-core-course-item-list sem1');
    const sem2 = document.getElementsByClassName('gdlr-core-course-item-list sem2');
    const sem3 = document.getElementsByClassName('gdlr-core-course-item-list sem3');
    const sem4 = document.getElementsByClassName('gdlr-core-course-item-list sem4');
    const sem5 = document.getElementsByClassName('gdlr-core-course-item-list sem5');
    const sem6 = document.getElementsByClassName('gdlr-core-course-item-list sem6');
    if(sem.value === "sem1"){
        for(let i=0; i<sem1.length; i++){
            sem1[i].style.display = "block";
        }
        for(let i=0; i<sem2.length; i++){
            sem2[i].style.display = "none";
        }
        for(let i=0; i<sem3.length; i++){
            sem3[i].style.display = "none";
        }
        for(let i=0; i<sem4.length; i++){
            sem4[i].style.display = "none";
        }
        for(let i=0; i<sem5.length; i++){
            sem5[i].style.display = "none";
        }
        for(let i=0; i<sem6.length; i++){
            sem6[i].style.display = "none";
        }
    }
    else if(sem.value === "sem2"){
        for(let i=0; i<sem1.length; i++){
            sem1[i].style.display = "none";
        }
        for(let i=0; i<sem2.length; i++){
            sem2[i].style.display = "block";
        }
        for(let i=0; i<sem3.length; i++){
            sem3[i].style.display = "none";
        }
        for(let i=0; i<sem4.length; i++){
            sem4[i].style.display = "none";
        }
        for(let i=0; i<sem5.length; i++){
            sem5[i].style.display = "none";
        }
        for(let i=0; i<sem6.length; i++){
            sem6[i].style.display = "none";
        }
    }
    else if(sem.value === "sem3"){
        for(let i=0; i<sem1.length; i++){
            sem1[i].style.display = "none";
        }
        for(let i=0; i<sem2.length; i++){
            sem2[i].style.display = "none";
        }
        for(let i=0; i<sem3.length; i++){
            sem3[i].style.display = "block";
        }
        for(let i=0; i<sem4.length; i++){
            sem4[i].style.display = "none";
        }
        for(let i=0; i<sem5.length; i++){
            sem5[i].style.display = "none";
        }
        for(let i=0; i<sem6.length; i++){
            sem6[i].style.display = "none";
        }
    }
    else if(sem.value === "sem4"){
        for(let i=0; i<sem1.length; i++){
            sem1[i].style.display = "none";
        }
        for(let i=0; i<sem2.length; i++){
            sem2[i].style.display = "none";
        }
        for(let i=0; i<sem3.length; i++){
            sem3[i].style.display = "none";
        }
        for(let i=0; i<sem4.length; i++){
            sem4[i].style.display = "block";
        }
        for(let i=0; i<sem5.length; i++){
            sem5[i].style.display = "none";
        }
        for(let i=0; i<sem6.length; i++){
            sem6[i].style.display = "none";
        }
    }

    else if(sem.value === "sem5"){
        for(let i=0; i<sem1.length; i++){
            sem1[i].style.display = "none";
        }
        for(let i=0; i<sem2.length; i++){
            sem2[i].style.display = "none";
        }
        for(let i=0; i<sem3.length; i++){
            sem3[i].style.display = "none";
        }
        for(let i=0; i<sem4.length; i++){
            sem4[i].style.display = "none";
        }
        for(let i=0; i<sem5.length; i++){
            sem5[i].style.display = "block";
        }
        for(let i=0; i<sem6.length; i++){
            sem6[i].style.display = "none";
        }
    }

    else if(sem.value === "sem6"){
        for(let i=0; i<sem1.length; i++){
            sem1[i].style.display = "none";
        }
        for(let i=0; i<sem2.length; i++){
            sem2[i].style.display = "none";
        }
        for(let i=0; i<sem3.length; i++){
            sem3[i].style.display = "none";
        }
        for(let i=0; i<sem4.length; i++){
            sem4[i].style.display = "none";
        }
        for(let i=0; i<sem5.length; i++){
            sem5[i].style.display = "none";
        }
        for(let i=0; i<sem6.length; i++){
            sem6[i].style.display = "block";
        }
    }

    else{
        for(let i=0; i<sem1.length; i++){
            sem1[i].style.display = "block";
        }
        for(let i=0; i<sem2.length; i++){
            sem2[i].style.display = "block";
        }
        for(let i=0; i<sem3.length; i++){
            sem3[i].style.display = "block";
        }
        for(let i=0; i<sem4.length; i++){
            sem4[i].style.display = "block";
        }
        for(let i=0; i<sem5.length; i++){
            sem5[i].style.display = "block";
        }
        for(let i=0; i<sem6.length; i++){
            sem6[i].style.display = "block";
        }
    }
}

//js for inserting text into mca-programmes.html
var paragraph = document.getElementById("mca-programmes-overview");
var text = document.createTextNode("Master of Computer Applications (MCA) is a three-year (six semesters) professional Master's Degree in computer science awarded in India. The course was designed to meet the growing demand for qualified professionals in the field of Information Technology. It is a postgraduate course that can be taken up after obtaining a Bachelor's Degree. The MCA programme is inclined more toward Application Development and thus has more emphasis on latest programming language and tools to develop better and faster applications. The MCA program focuses on providing a sound theoretical background as well as good practical exposure to students in the relevant areas. It is intended to provide a modern, industry-oriented education in applied computer science. It aims at producing trained professionals who can successfully meet the demands of the information technology industry. Typically,an MCA is a full-time degree course with a duration of three years (six semesters). It covers various aspects of computational theory,programming, algorithm design and optimization, network and database management, mobile technologies, electronics, mathematics, probability, statistics, accounting, finance, etc. ");

paragraph.appendChild(text);


var paragraph = document.getElementById("mca-programmes-admission");
var text = document.createTextNode("The admission will be on the basis of performance in the prescribed entrance examination called NIMCET (National Institute of Technology MCA Entrance Test). The NIMCET is NIT MCA Common Entrance Test, a National Level Test conducted by NITs for admission in to their MCA programme. The admission to the MCA prgoramme in to NITs at Agartala, Allahabad, Bhopal, Calicut, Durgapur, Jamshedpur, Kurukshetra, Raipur, Surathkal, Tiruchirappalli and Warangal.");

paragraph.appendChild(text);


var paragraph = document.getElementById("mca-programmes-curriculum");
var text = document.createTextNode("The Curriculum and Syllabi of Master of Computer Applications (MCA) programme offered by NITs are designed considering the needs of different Information Technology firms in India and abroad. MCA graduates have high potential for jobs in IT Sector.");

paragraph.appendChild(text);

/*  js for inserting text into mtech-programmes.html  => didnt work => why?


var paragraph = document.getElementById("mtech-programmes-overview");
var text = document.createTextNode("Master of Technology (CDS) degree is a postgraduate program in engineering or technology field. This is 2-year specialization program in a specific branch of engineering or a technical field. Students enter the M.Tech(CDS) programs after completing a 4-year undergraduate program in engineering resulting in the award of a Bachelor of Engineering or Bachelor of Technology degree, or a 5-year program in Science or Applied Sciences resulting in the award of a Master of Science degree. Admission for M.Tech in CDS is done through Centralized Counselling for M.Tech./M.Arch./ M.Plan. (CCMT).");


paragraph.appendChild(text);


var paragraph = document.getElementById("mtech-programmes-ccmt");
var text = document.createTextNode("The Centralized Counseling for M.Tech./ M.Arch./ M.Plan. CCMT-2022 is a common platform for candidates to apply for M.Tech./ M.Arch./ M.Plan. programmes, based on their GATE score of years 2020, 2021 and 2022, in all NITs, IIEST Shibpur, and some IIITs and GFTIs (For details, please refer to the list of Participating Institutes on CCMT website). This centralized system provides a common and convenient platform for online counseling wherein the candidates can fill-in a single online application form from their home and apply to all programmes in all the participating institutions to which they are eligible. The CCMT was initiated in the year 2012 for centralized admission to PG programmes and since then has undergone several changes to make it more student-friendly and include newer institutions under its umbrella. MNIT Jaipur will be conducting CCMT third year in a row, after successfully conducting CCMT during the last two years i.e. CCMT-2020 and CCMT-2021 as well. In the CCMT-2022, some new features have been introduced. For this purpose, after seat allotment, the candidates will be required to upload the needful documents. The features such as online withdrawal and willingness change etc. have been inherited from the previous years. Thus, CCMT-2022 enormously increases the overall convenience of the candidates. Candidates are encouraged to participate in both regular rounds and special rounds even if one has obtained a seat in the regular round. The prospective candidates are advised to carefully read the information brochure and various other documents given on CCMT website.\nCentralized counseling for M.Tech./M.Plan./M.Arch. admissions will be conducted by the Malaviya National Institute of Technology (MNIT) Jaipur third year in a row after successfully organizing CCMT-2020 and CCMT-2021.");

paragraph.appendChild(text);

*/

