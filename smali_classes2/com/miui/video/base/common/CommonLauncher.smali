.class public Lcom/miui/video/base/common/CommonLauncher;
.super Ljava/lang/Object;
.source "CommonLauncher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonLauncher"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static haveAppSupportDeepLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-lt v0, v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x20000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v3

    :cond_4
    :goto_0
    return v1
.end method

.method private static launchAppByLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p0, p2, p1}, Lcom/miui/video/base/common/CommonLauncher;->haveAppSupportDeepLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0

    :catch_0
    return v0
.end method

.method public static launchLinkerAction(Landroid/content/Context;Lcom/miui/video/framework/uri/LinkEntity;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/video/framework/uri/LinkEntity;",
            "Ljava/util/List<",
            "Lcom/miui/video/framework/uri/LinkEntity;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "new_task"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;Z)Z

    move-result p2

    const-string v1, "is_link_pkgname"

    invoke-virtual {p1, v1, v0}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "deeplink"

    invoke-virtual {p1, v2}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "link_url"

    invoke-virtual {p1, v3}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "package_name"

    invoke-virtual {p1, v4}, Lcom/miui/video/framework/uri/LinkEntity;->getParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    :try_start_0
    invoke-static {p0, v2, p1, p2}, Lcom/miui/video/base/common/CommonLauncher;->launchAppByLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p2, ""

    invoke-static {v0, v2, p2, p1}, Lcom/miui/video/base/common/statistics/TrackerEventCreator;->createLinkerEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V

    return-void

    :cond_1
    if-eqz v1, :cond_2

    move-object v1, p1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-static {p0, v3, v1, p2}, Lcom/miui/video/base/common/CommonLauncher;->launchAppByLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, ""

    invoke-static {v0, p2, v3, p1}, Lcom/miui/video/base/common/statistics/TrackerEventCreator;->createLinkerEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    const/4 p2, 0x0

    const-string v0, ""

    invoke-static {p2, v2, v0, p1}, Lcom/miui/video/base/common/statistics/TrackerEventCreator;->createLinkerEvent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    new-array p2, v4, [I

    fill-array-data p2, :array_2

    invoke-static {p2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->createTarget([I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x1
    .end array-data
.end method
