.class public Lcom/miui/video/player/service/corelocalvideo/CLVPreference;
.super Lcom/miui/video/framework/FrameworkPreference;
.source "CLVPreference.java"


# static fields
.field protected static final APP_UPDATE_FILEPATH:Ljava/lang/String; = "APP_UPDATE_FILEPATH"

.field protected static final APP_UPDATE_SKIPTIME:Ljava/lang/String; = "APP_UPDATE_SKIPTIME"

.field protected static final VIDEOS_HIDE_PASSWORD:Ljava/lang/String; = "VIDEOS_HIDE_PASSWORD"

.field protected static final VIDEOS_HIDE_PROMPT:Ljava/lang/String; = "VIDEOS_HIDE_PROMPT"

.field protected static final VIDEOS_UNHIDE_PROMPT:Ljava/lang/String; = "VIDEOS_UNHIDE_PROMPT"

.field protected static mInstance:Lcom/miui/video/player/service/corelocalvideo/CLVPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/framework/FrameworkPreference;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/player/service/corelocalvideo/CLVPreference;
    .locals 1

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/CLVPreference;->mInstance:Lcom/miui/video/player/service/corelocalvideo/CLVPreference;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/player/service/corelocalvideo/CLVPreference;

    invoke-direct {v0}, Lcom/miui/video/player/service/corelocalvideo/CLVPreference;-><init>()V

    sput-object v0, Lcom/miui/video/player/service/corelocalvideo/CLVPreference;->mInstance:Lcom/miui/video/player/service/corelocalvideo/CLVPreference;

    :cond_0
    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/CLVPreference;->mInstance:Lcom/miui/video/player/service/corelocalvideo/CLVPreference;

    return-object v0
.end method


# virtual methods
.method public getAppUpdateSkiptime()J
    .locals 3

    const-string v0, "APP_UPDATE_SKIPTIME"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/player/service/corelocalvideo/CLVPreference;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppUpdateVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "APP_UPDATE_FILEPATH"

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/corelocalvideo/CLVPreference;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHidePassword()Ljava/lang/String;
    .locals 1

    const-string v0, "VIDEOS_HIDE_PASSWORD"

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/corelocalvideo/CLVPreference;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHidePrompt()Z
    .locals 2

    const-string v0, "VIDEOS_HIDE_PROMPT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/corelocalvideo/CLVPreference;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVideoUnHidePrompt()Z
    .locals 2

    const-string v0, "VIDEOS_UNHIDE_PROMPT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/corelocalvideo/CLVPreference;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAppUpdateSkiptime(J)V
    .locals 1

    const-string v0, "APP_UPDATE_SKIPTIME"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/video/player/service/corelocalvideo/CLVPreference;->setValueApply(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAppUpdateVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "APP_UPDATE_FILEPATH"

    invoke-virtual {p0, v0, p1}, Lcom/miui/video/player/service/corelocalvideo/CLVPreference;->setValueApply(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVideoHidePassword(Ljava/lang/String;)V
    .locals 1

    const-string v0, "VIDEOS_HIDE_PASSWORD"

    invoke-virtual {p0, v0, p1}, Lcom/miui/video/player/service/corelocalvideo/CLVPreference;->setValueApply(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVideoHidePrompt(Z)V
    .locals 1

    const-string v0, "VIDEOS_HIDE_PROMPT"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/video/player/service/corelocalvideo/CLVPreference;->setValueApply(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVideoUnHidePrompt(Z)V
    .locals 1

    const-string v0, "VIDEOS_UNHIDE_PROMPT"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/video/player/service/corelocalvideo/CLVPreference;->setValueApply(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
