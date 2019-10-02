.class public Lcom/miui/video/biz/videoplus/data/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final KEY_ALERT_NETWORK:Ljava/lang/String; = "alert_network"

.field public static final KEY_CODEC_DISABLE_CODEC_NAME:Ljava/lang/String; = "disable-codec-name"

.field public static final KEY_CODEC_LEVEL:Ljava/lang/String; = "codec-level"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAlertLocalCta(Landroid/content/Context;)Z
    .locals 0

    sget-boolean p0, Lcom/miui/video/base/common/internal/AppMagicConfig;->isForMiUi:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isAlertNetworkOn(Landroid/content/Context;)Z
    .locals 0

    sget-boolean p0, Lcom/miui/video/base/common/internal/AppMagicConfig;->isForMiUi:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
