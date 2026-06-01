// SIDEBAR TOGGLE
const menuBtn = document.getElementById("menuBtn");
const sidebar = document.querySelector(".sidebar");

menuBtn.addEventListener("click", () => {
    sidebar.classList.toggle("active");
});

// CLOCK
const dateTime = document.getElementById("dateTime");

setInterval(() => {
    const now = new Date();
    dateTime.textContent = now.toLocaleString();
}, 1000);

// COUNTERS
function counter(id, target){
    let el = document.getElementById(id);
    let count = 0;
    let speed = target / 100;

    let interval = setInterval(() => {
        count += speed;

        if(count >= target){
            count = target;
            clearInterval(interval);
        }

        el.textContent = Math.floor(count).toLocaleString();
    }, 20);
}

counter("usersCount",12450);
counter("activeCount",8320);
counter("premiumCount",520);
counter("revenueCount",4250);

// NOTIFICATIONS
document.getElementById("notifyBtn").addEventListener("click", () => {
    alert(
        "Notifications:\n\n" +
        "• 15 New Users\n" +
        "• 8 New Messages\n" +
        "• 3 Reports Pending"
    );
});

// DARK MODE
document.getElementById("themeBtn").addEventListener("click", () => {
    document.body.classList.toggle("dark");
});
