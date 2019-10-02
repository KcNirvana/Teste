.class public interface abstract Lcom/ooyala/pulse/PulseSession;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract contentFinished()V
.end method

.method public abstract contentPaused()V
.end method

.method public abstract contentPositionChanged(F)V
.end method

.method public abstract contentStarted()V
.end method

.method public abstract extendSession(Lcom/ooyala/pulse/ContentMetadata;Lcom/ooyala/pulse/RequestSettings;Lcom/ooyala/pulse/PulseSessionExtensionListener;)V
.end method

.method public abstract startSession(Lcom/ooyala/pulse/PulseSessionListener;)V
.end method

.method public abstract stopSession()V
.end method
