.class public Lcom/hungama/movies/sdk/chromecast/CastUtils;
.super Ljava/lang/Object;
.source "CastUtils.java"


# static fields
.field private static final KEY_CONTENTID:Ljava/lang/String; = "contentID"

.field private static final KEY_CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field private static final KEY_DRM_URL:Ljava/lang/String; = "drm_url"

.field private static final KEY_PLAYING_TYPE:Ljava/lang/String; = "playingType"

.field private static final KEY_THUMBNAILIMG:Ljava/lang/String; = "thumbnailImage"

.field private static final KEY_UNIQUE_ID:Ljava/lang/String; = "uniqueApplicationID"

.field private static final KEY_VIDEOTYPE:Ljava/lang/String; = "videoType"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMediaType()Ljava/lang/String;
    .locals 1

    const-string v0, "video/mp4"

    return-object v0
.end method

.method public static initializeCast(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static startCasting(Lcom/hungama/movies/sdk/Model/Playback;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method
