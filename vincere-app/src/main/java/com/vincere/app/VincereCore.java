package com.vincere.app;

public class VincereCore {
    static {
        System.loadLibrary("vincere");
    }

    public native String GenerateKeyPairHex();
}