.class public Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private available:Z

.field private mNetworkStateListener:Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "NetWorkStateReceiver"

    iput-object v0, p0, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;->mNetworkStateListener:Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-boolean p2, p0, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;->available:Z

    if-nez p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;->available:Z

    return-void

    :cond_0
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " connection is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;->mNetworkStateListener:Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MOBILE connection is true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "NetWorkStateReceiver"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;->mNetworkStateListener:Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;

    invoke-interface {p1}, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;->onInternetConnected()V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;->mNetworkStateListener:Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;

    invoke-interface {p1}, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;->onMobileConnect()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WIFI connection is true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "NetWorkStateReceiver"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;->mNetworkStateListener:Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;

    invoke-interface {p1}, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;->onInternetConnected()V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;->mNetworkStateListener:Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;

    invoke-interface {p1}, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;->onWifiConnected()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "NetWorkStateReceiver"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;->mNetworkStateListener:Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;

    invoke-interface {p1}, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;->onInternetDisConnected()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;->available:Z

    return-void
.end method

.method public setNetworkStateListener(Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/player/NetworkStateReceiver;->mNetworkStateListener:Lcom/miui/video/biz/ugc/player/NetworkStateReceiver$NetworkStateListener;

    return-void
.end method
