.class Lcom/kaltura/playkit/player/PlayerEngineFactory;
.super Ljava/lang/Object;
.source "PlayerEngineFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/player/PlayerEngineFactory$PlayerInitializationException;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initializePlayerEngine(Landroid/content/Context;Lcom/kaltura/playkit/player/PlayerEngineType;Lcom/kaltura/playkit/player/PlayerSettings;)Lcom/kaltura/playkit/player/PlayerEngine;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaltura/playkit/player/PlayerEngineFactory$PlayerInitializationException;
        }
    .end annotation

    sget-object v0, Lcom/kaltura/playkit/player/PlayerEngineFactory$1;->$SwitchMap$com$kaltura$playkit$player$PlayerEngineType:[I

    invoke-virtual {p1}, Lcom/kaltura/playkit/player/PlayerEngineType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    invoke-direct {p1, p0, p2}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;-><init>(Landroid/content/Context;Lcom/kaltura/playkit/player/PlayerSettings;)V

    return-object p1

    :pswitch_0
    :try_start_0
    const-string p1, "com.kaltura.playkitvr.DefaultVRPlayerFactory"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kaltura/playkit/player/vr/VRPlayerFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    invoke-interface {p1, p0}, Lcom/kaltura/playkit/player/vr/VRPlayerFactory;->newVRViewInstance(Landroid/content/Context;)Lcom/kaltura/playkit/player/BaseExoplayerView;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;-><init>(Landroid/content/Context;Lcom/kaltura/playkit/player/BaseExoplayerView;Lcom/kaltura/playkit/player/PlayerSettings;)V

    invoke-interface {p1, p0, v0}, Lcom/kaltura/playkit/player/vr/VRPlayerFactory;->newInstance(Landroid/content/Context;Lcom/kaltura/playkit/player/PlayerEngine;)Lcom/kaltura/playkit/player/PlayerEngine;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/kaltura/playkit/player/PlayerEngineFactory$PlayerInitializationException;

    const-string p2, "Illegal package access to VRPlayerFactory. Failed to create."

    invoke-direct {p1, p2, p0}, Lcom/kaltura/playkit/player/PlayerEngineFactory$PlayerInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/kaltura/playkit/player/PlayerEngineFactory$PlayerInitializationException;

    const-string p2, "Failed to create new instance of VRPlayerFactory"

    invoke-direct {p1, p2, p0}, Lcom/kaltura/playkit/player/PlayerEngineFactory$PlayerInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/kaltura/playkit/player/PlayerEngineFactory$PlayerInitializationException;

    const-string p2, "Could not find com.kaltura.playkitvr.DefaultVRPlayerFactory class. Please check if com.kaltura.playkitvr library exist in project structure"

    invoke-direct {p1, p2, p0}, Lcom/kaltura/playkit/player/PlayerEngineFactory$PlayerInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_1
    new-instance p1, Lcom/kaltura/playkit/player/MediaPlayerWrapper;

    invoke-direct {p1, p0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;-><init>(Landroid/content/Context;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static selectPlayerType(Lcom/kaltura/playkit/PKMediaFormat;Z)Lcom/kaltura/playkit/player/PlayerEngineType;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/kaltura/playkit/player/PlayerEngineType;->VRPlayer:Lcom/kaltura/playkit/player/PlayerEngineType;

    return-object p0

    :cond_0
    sget-object p1, Lcom/kaltura/playkit/PKMediaFormat;->wvm:Lcom/kaltura/playkit/PKMediaFormat;

    if-ne p0, p1, :cond_1

    sget-object p0, Lcom/kaltura/playkit/player/PlayerEngineType;->MediaPlayer:Lcom/kaltura/playkit/player/PlayerEngineType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/kaltura/playkit/player/PlayerEngineType;->Exoplayer:Lcom/kaltura/playkit/player/PlayerEngineType;

    return-object p0
.end method
