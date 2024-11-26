-- E:MTC
print("Welcome client: " .. MTC.CL)
AddEventHandler("AnEvent", function(...)
    print(...)
end)
 
Citizen.CreateThread(function() 
    MTC.Xui("file:///ExampleMenuFE.html") -- or MTC.Xui("http://yoursite.com/ExampleMenuFE.html")
    print("Xui created.")

    Citizen.Wait(1000)
    print("Executing JS in Xui.")

    MTC.Xjs("document.querySelector('h1').innerText ='TEST';")
    print("Executed javascript.")

end)
