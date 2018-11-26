.class public Lcom/miui/powercenter/quickoptimize/p;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aPv(J)V
    .locals 2

    const-string/jumbo v0, "key_last_kill_running_app_time"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static aPw()J
    .locals 4

    const-string/jumbo v0, "key_last_kill_running_app_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
