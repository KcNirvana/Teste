.class public interface abstract Lcom/ooyala/pulse/PauseInsertionPoint$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/pulse/PauseInsertionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract illegalOperationOccurred(Lcom/ooyala/pulse/Error;)V
.end method

.method public abstract pauseInsertionPointEnded()V
.end method

.method public abstract startAdDisplay(Lcom/ooyala/pulse/PulsePauseAd;)V
.end method
