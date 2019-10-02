.class public Lcom/miui/video/service/share/target/WhatsAppShare;
.super Ljava/lang/Object;
.source "WhatsAppShare.java"

# interfaces
.implements Lcom/miui/video/service/share/target/ShareTarget;


# static fields
.field public static final CHANNEL:Ljava/lang/String; = "1"

.field private static final SHARE_REQUEST_CODE:I = 0x29a

.field private static final WHATSAPP:Ljava/lang/String; = "com.whatsapp"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x100

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private sendStatistics(Ljava/lang/String;Lcom/miui/video/service/share/data/ShareInfo;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "channel"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "item_id"

    invoke-virtual {p2}, Lcom/miui/video/service/share/data/ShareInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "playlist_id"

    invoke-virtual {p2}, Lcom/miui/video/service/share/data/ShareInfo;->getPlaylistId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "share"

    const-string v1, "share_button"

    invoke-static {p3, p1, v1}, Lcom/miui/video/base/common/statistics/TrackEntity;->createTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 p3, 0x2

    invoke-static {p2, p1, v0, p3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method


# virtual methods
.method public shareTo(Landroid/content/Context;Lcom/miui/video/service/share/data/ShareInfo;Lcom/miui/video/service/share/WebShareCallback;)V
    .locals 3

    const-string v0, "com.whatsapp"

    invoke-direct {p0, p1, v0}, Lcom/miui/video/service/share/target/WhatsAppShare;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/miui/video/service/share/data/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p2}, Lcom/miui/video/service/share/data/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.whatsapp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    check-cast p1, Landroid/app/Activity;

    const/16 v1, 0x29a

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object p1, Lcom/miui/video/service/share/ShareResult;->SUCCESS:Lcom/miui/video/service/share/ShareResult;

    invoke-virtual {p1}, Lcom/miui/video/service/share/ShareResult;->ordinal()I

    move-result p1

    invoke-interface {p3, p1}, Lcom/miui/video/service/share/WebShareCallback;->onShareResult(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/miui/video/service/share/ShareResult;->APP_NOT_FOUND:Lcom/miui/video/service/share/ShareResult;

    invoke-virtual {p1}, Lcom/miui/video/service/share/ShareResult;->ordinal()I

    move-result p1

    invoke-interface {p3, p1}, Lcom/miui/video/service/share/WebShareCallback;->onShareResult(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/video/service/share/ShareResult;->APP_NOT_FOUND:Lcom/miui/video/service/share/ShareResult;

    invoke-virtual {p1}, Lcom/miui/video/service/share/ShareResult;->ordinal()I

    move-result p1

    invoke-interface {p3, p1}, Lcom/miui/video/service/share/WebShareCallback;->onShareResult(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/miui/video/service/share/data/ShareInfo;->getFrom()Ljava/lang/String;

    move-result-object p1

    const-string p3, "com.whatsapp"

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/service/share/target/WhatsAppShare;->sendStatistics(Ljava/lang/String;Lcom/miui/video/service/share/data/ShareInfo;Ljava/lang/String;)V

    return-void
.end method
