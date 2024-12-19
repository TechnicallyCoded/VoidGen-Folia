package de.xtkq.voidgen.events;

import de.xtkq.voidgen.VoidGen;

public class EventManager {

    private final VoidGen javaPlugin;
    private PlayerLoginListener playerLogin;

    public EventManager(VoidGen paramPlugin) {
        this.javaPlugin = paramPlugin;
    }

    public void initialize() {
        this.playerLogin = new PlayerLoginListener(this.javaPlugin);
    }

    public void terminate() {
        if (this.playerLogin != null) {
            this.playerLogin.terminate();
        }
    }
}

