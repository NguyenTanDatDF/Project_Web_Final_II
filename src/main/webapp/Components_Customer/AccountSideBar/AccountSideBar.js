$(document).ready(function() {
    $("#accountslide_bar").before(`
    <nav id="sidebar">
    <div class="p-5 pt-5">
        <h2 class="account__h2" style="text-transform: uppercase;">Account</h2>
        <ul class="list-unstyled components mb-5">
            <li>
            
            <li>
                <a class="account__links" href="RegisterForward">Register</a>
            </li>
            <li>
                
            </li>
            <li>
                <a class="account__links" href="OrderHistoryForward">Order History</a>
            </li>
            <li>
                <a class="account__links" href="#">Become Our Seller (Coming soon)</a>
            </li>
        </ul>
    </div>
    <div class="p-5" style="margin-top: -100px;">
        <h2 class="account__h2" style="text-transform: uppercase;">Information</h2>
        <ul class="list-unstyled components mb-5">
            <li>
                <a class="account__links" href="../../Pages_Customer/Information/AboutUs/index.html">About Us</a>
            <li>
                <a class="account__links" href="../../Pages_Customer/Information/PrivacyPolicy/index.html">Privacy Policy</a>
            </li>
            <li>
                <a class="account__links" href="../../Pages_Customer/Information/TearmAndConditions/index.html">Terms & Conditions</a>
            </li>
            <li>
                <a class="account__links" href="../../Pages_Customer/Information/ContactUs/index.html">Contact Us</a>
            </li>
        </ul>
    </div>
</nav>
    `)
})