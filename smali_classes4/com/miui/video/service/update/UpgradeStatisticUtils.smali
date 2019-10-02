.class public Lcom/miui/video/service/update/UpgradeStatisticUtils;
.super Ljava/lang/Object;
.source "UpgradeStatisticUtils.java"


# static fields
.field public static final APPEND_TYPE:Ljava/lang/String; = "type"

.field public static final APPEND_VERSION_NOW:Ljava/lang/String; = "version_now"

.field public static final APPEND_VERSION_TARGET:Ljava/lang/String; = "version_target"

.field public static final FROM_DETAIL_PAGE:Ljava/lang/String; = "detail_page"

.field public static final FROM_HOME_PAGE:Ljava/lang/String; = "home_page"

.field public static final FROM_LOCAL_PLAYER:Ljava/lang/String; = "local_player"

.field public static final FROM_PLAYER:Ljava/lang/String; = "player"

.field public static final RESULT_LATER:Ljava/lang/String; = "off"

.field public static final RESULT_UPDATE:Ljava/lang/String; = "on"

.field private static final TAG:Ljava/lang/String; = "UpgradeStatisticUtils"

.field private static final TYPE_CLICK_UPGRADE:Ljava/lang/String; = "upgrade_show_click"

.field private static final TYPE_EXPOSE_UPGRADE:Ljava/lang/String; = "upgrade_show_expose"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clickUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "upgrade_show_click"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "module"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "version_now"

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/utils/AppUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version_target"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "type"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x3

    invoke-static {p0, v0, p1, p2}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method public static exposeUpgrade(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "upgrade_show_expose"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "module"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "version_now"

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/video/framework/utils/AppUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version_target"

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {p1, v0, p0, v1}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method
