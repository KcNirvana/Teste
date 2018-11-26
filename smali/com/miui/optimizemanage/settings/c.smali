.class public Lcom/miui/optimizemanage/settings/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zA()J
    .locals 4

    const-string/jumbo v0, "key_last_show_memory_occupy_notify_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static zB()Z
    .locals 2

    const-string/jumbo v0, "key_show_cpu_overload_notification_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static zC()I
    .locals 2

    const-string/jumbo v0, "key_memory_occupy_notify_percent"

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static zD()Z
    .locals 2

    const-string/jumbo v0, "key_optimize_usage_tips_shown"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static zE()I
    .locals 2

    const-string/jumbo v0, "key_optimize_locked_app_num"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static zF(I)V
    .locals 2

    const-string/jumbo v0, "animation_time"

    mul-int/lit16 v1, p0, 0x3e8

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static zG(J)V
    .locals 2

    const-string/jumbo v0, "cloud_sync_time"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static zH(Z)V
    .locals 1

    const-string/jumbo v0, "key_show_cpu_overload_notification_enabled"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static zI(Z)V
    .locals 1

    const-string/jumbo v0, "key_recommend_news_enable"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static zJ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static zK()Z
    .locals 2

    const-string/jumbo v0, "key_recommend_news_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static zL(I)V
    .locals 1

    const-string/jumbo v0, "key_optimize_locked_app_num"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static zM(I)V
    .locals 1

    const-string/jumbo v0, "key_memory_occupy_notify_percent"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static zN()I
    .locals 2

    const-string/jumbo v0, "animation_time"

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static zO(J)V
    .locals 2

    const-string/jumbo v0, "key_last_clean_memory_time"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static zP(J)V
    .locals 2

    const-string/jumbo v0, "last_deep_clean_time"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static zQ()J
    .locals 4

    const-string/jumbo v0, "last_deep_clean_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static zy()J
    .locals 4

    const-string/jumbo v0, "key_last_clean_memory_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static zz()J
    .locals 4

    const-string/jumbo v0, "key_show_media_scan_timeout_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
