.class public Lcom/miui/powercenter/powersaver/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ban()I
    .locals 2

    const-string/jumbo v0, "key_power_saver_start_percent"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static bao()I
    .locals 2

    const-string/jumbo v0, "key_show_save_mode_exit_notify_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static bap(I)V
    .locals 1

    const-string/jumbo v0, "key_show_save_mode_exit_notify_count"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static baq(I)V
    .locals 1

    const-string/jumbo v0, "key_power_saver_start_percent"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method
