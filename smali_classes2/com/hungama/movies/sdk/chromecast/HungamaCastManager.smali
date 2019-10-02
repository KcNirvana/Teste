.class public Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;
.super Ljava/lang/Object;
.source "HungamaCastManager.java"


# static fields
.field private static sInstance:Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;->initChromeCast()V

    return-void
.end method

.method public static getInstance()Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;
    .locals 1

    sget-object v0, Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;->sInstance:Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;

    invoke-direct {v0}, Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;-><init>()V

    sput-object v0, Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;->sInstance:Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;

    :cond_0
    sget-object v0, Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;->sInstance:Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;

    return-object v0
.end method

.method private initChromeCast()V
    .locals 0

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;->sInstance:Lcom/hungama/movies/sdk/chromecast/HungamaCastManager;

    return-void
.end method

.method public disconnectCasting()V
    .locals 0

    return-void
.end method

.method public isCastIconShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public registerForEvents(Lcom/hungama/movies/sdk/Model/IHungamaCastEventListener;)V
    .locals 0

    return-void
.end method

.method public unRegisterForEvents()V
    .locals 0

    return-void
.end method
