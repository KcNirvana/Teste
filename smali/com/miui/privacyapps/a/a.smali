.class public Lcom/miui/privacyapps/a/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byq()V
    .locals 1

    const-string/jumbo v0, "privacy_apps_page"

    invoke-static {v0}, Lcom/miui/privacyapps/a/a;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static byr(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/miui/privacyapps/b/a;

    invoke-direct {v0, p0}, Lcom/miui/privacyapps/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/privacyapps/b/a;->byx()Z

    move-result v0

    const-string/jumbo v1, "privacy_app_toggle"

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/miui/privacyapps/a/a;->recordNumericEvent(Ljava/lang/String;J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bys(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "packagename"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "add_privacy_app_name"

    invoke-static {v1, v0}, Lcom/miui/privacyapps/a/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static byt(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "packagename"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "open_privacy_app"

    invoke-static {v1, v0}, Lcom/miui/privacyapps/a/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "com.miui.privacyapps"

    invoke-static {v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const-string/jumbo v0, "com.miui.privacyapps"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordNumericEvent(Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "com.miui.privacyapps"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
