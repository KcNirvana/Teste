.class public Lcom/miui/monthreport/m;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bvA(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "key_update_located_address"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bvv()Z
    .locals 2

    const-string/jumbo v0, "key_month_report_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bvw(Z)V
    .locals 1

    const-string/jumbo v0, "key_month_report_enabled"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bvx(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "key_update_located_address"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bvy(J)V
    .locals 2

    const-string/jumbo v0, "key_last_located_time"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static bvz()J
    .locals 4

    const-string/jumbo v0, "key_last_located_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
