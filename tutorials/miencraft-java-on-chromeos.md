# Installing Minecraft: Java Edition on Chromebooks!

This is the only tutorial on here where it's a bit more complicated than just following a premade tutorial. Well.. Sorta.

If you don't already have linux mode installed you'll need to do that, go to `chrome://os-settings` and scroll all the way down to here ![](/images/t1-c-1.png)

This should say "Turn On" if you don't already have it installed. Pick a username and a storage size above like 6GB and install. Once the terminal opens run `sudo apt update && sudo apt upgrade -y`. When that finishes, right click on the Terminal and click "Shut down Linux".

After it shuts down follow https://flatpak.org/setup/Chrome%20OS. When you get flatpak installed run `flatpak install flathub org.prismlauncher.PrismLauncher` in the terminal. When PrismLauncher is done installing it should show up in your app menu (the circle on the bottom left of your chromebook). Open that and make sure that you set Minimum memory allocation and Maximum memory allocation to the same, and select `/app/jdk/17/bin/java` for 1.17+, `/app/jdk/8/bin/java` for 1.16.5 and under (including 1.8.x versions). That should be good, just log in and make a new instance.