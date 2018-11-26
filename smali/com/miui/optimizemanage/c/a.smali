.class public Lcom/miui/optimizemanage/c/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AA()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/optimizemanage/settings/c;->zC()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "never"

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static AB(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "enter_way"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "speedboost_enter_way"

    invoke-static {v1, v0}, Lcom/miui/optimizemanage/c/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static AC()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "slidedown"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "speedboost_results"

    invoke-static {v1, v0}, Lcom/miui/optimizemanage/c/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Av(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "speedboost_results"

    invoke-static {v1, v0}, Lcom/miui/optimizemanage/c/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Aw(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "speedboost_results"

    invoke-static {v1, v0}, Lcom/miui/optimizemanage/c/a;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static Ax(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/optimizemanage/c/a;->recordCountEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static Ay()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "toggle_speedboost_lock_apps_num"

    invoke-static {}, Lcom/miui/optimizemanage/settings/c;->zE()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v0, v4, v5}, Lcom/miui/optimizemanage/c/a;->recordCalculateEvent(Ljava/lang/String;J)V

    const-string/jumbo v0, "toggle_speedboost_clean_ram_lockscreen"

    invoke-static {}, Lcom/miui/optimizemanage/c/a;->Az()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/optimizemanage/c/a;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "toggle_optimize_ram_noti"

    invoke-static {}, Lcom/miui/optimizemanage/c/a;->AA()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/optimizemanage/c/a;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "toggle_optimize_cpu_noti"

    invoke-static {}, Lcom/miui/optimizemanage/settings/c;->zB()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/miui/optimizemanage/c/a;->recordNumericEvent(Ljava/lang/String;J)V

    const-string/jumbo v0, "toggle_speedboost_receive_recommendations"

    invoke-static {}, Lcom/miui/optimizemanage/settings/c;->zK()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/miui/optimizemanage/c/a;->recordNumericEvent(Ljava/lang/String;J)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static Az()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/miui/optimizemanage/settings/c;->zy()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "never"

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "min"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static recordCalculateEvent(Ljava/lang/String;J)V
    .locals 3

    const-string/jumbo v0, "com.miui.optimizemanage"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "com.miui.optimizemanage"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const-string/jumbo v0, "com.miui.optimizemanage"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordNumericEvent(Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "com.miui.optimizemanage"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "com.miui.optimizemanage"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
