.class public interface abstract Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkStateListener"
.end annotation


# virtual methods
.method public abstract onInternetConnected()V
.end method

.method public abstract onInternetDisConnected()V
.end method

.method public abstract onMobileConnect()V
.end method

.method public abstract onWifiConnected()V
.end method

.method public abstract onWifiDisconnected()V
.end method
