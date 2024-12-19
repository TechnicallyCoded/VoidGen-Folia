# Keep your main class
-keep class * extends org.bukkit.plugin.java.JavaPlugin {
    public void onEnable();
	public void onDisable();
}

# Keep event handlers
-keep,allowobfuscation class * extends org.bukkit.event.Listener {
    @org.bukkit.event.EventHandler <methods>;
}

-keep class org.apache.commons.lang3.*** { *; }
-keep class de.xtkq.voidgen.lib.folialib.*** { *; }

-dontshrink
-dontoptimize
-dontwarn de.xtkq.voidgen.lib.folialib.**
-dontwarn org.apache.commons.lang3.**

-keepattributes !LocalVariableTable,!LocalVariableTypeTable,Exceptions,InnerClasses,Signature,Deprecated,LineNumberTable,*Annotation*,EnclosingMethod