.class public Lcom/miui/video/base/common/internal/AppMagicConfig;
.super Ljava/lang/Object;
.source "AppMagicConfig.java"


# static fields
.field public static API:Ljava/lang/String; = "/api/a3/"

.field public static FORMAL_HOST:Ljava/lang/String; = "m.video.xiaomi.com"

.field public static FORMAL_SCHEMA:Ljava/lang/String; = "https://"

.field public static Link_Scheme:Ljava/lang/String; = "mv"

.field public static MAIN_TAB_ACTIVITY_NAME:Ljava/lang/String; = "MainTabActivity"

.field public static NEED_ACCEPT_DECLARATION:Z = true

.field public static NEED_REPORT_IR:Z = true

.field public static TRACKER_ADEVENT:Ljava/lang/String; = "video_adevent"

.field public static TRACKER_ADLOG:Ljava/lang/String; = "video_adlog"

.field public static TRACKER_BUSINESS:Ljava/lang/String; = "gmivideo_business"

.field public static TRACKER_BUSINESSV10:Ljava/lang/String; = "gmivideo_businessv10"

.field public static TRACKER_CLOUD:Ljava/lang/String; = "video_cloud"

.field public static TRACKER_CLOUD_GLOBLE:Ljava/lang/String; = "video_cloud_globle"

.field public static TRACKER_CLOUD_POLLING:Ljava/lang/String; = "video_cloudpolling"

.field public static TRACKER_TEST:Ljava/lang/String; = "gmivideo_testkey"

.field public static Wx_AppID:Ljava/lang/String; = "wx6ce43e18fb122ce2"

.field public static isForMiUi:Z = true

.field public static trackerConfigKey:Ljava/lang/String; = "video_"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initTrackInfo(Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lcom/miui/video/base/common/internal/AppMagicConfig;->trackerConfigKey:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/miui/video/base/common/internal/AppMagicConfig;->trackerConfigKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "business"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/video/base/common/internal/AppMagicConfig;->TRACKER_BUSINESS:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/miui/video/base/common/internal/AppMagicConfig;->trackerConfigKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cloud"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/video/base/common/internal/AppMagicConfig;->TRACKER_CLOUD:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/miui/video/base/common/internal/AppMagicConfig;->trackerConfigKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "adlog"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/video/base/common/internal/AppMagicConfig;->TRACKER_ADLOG:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/miui/video/base/common/internal/AppMagicConfig;->trackerConfigKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "adevent"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/video/base/common/internal/AppMagicConfig;->TRACKER_ADEVENT:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/miui/video/base/common/internal/AppMagicConfig;->trackerConfigKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cloudpolling"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/miui/video/base/common/internal/AppMagicConfig;->TRACKER_CLOUD_POLLING:Ljava/lang/String;

    return-void
.end method
