.class public Lcom/miui/powercenter/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beL(Z)V
    .locals 1

    const-string/jumbo v0, "on_time_boot_enabled"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static beM(Z)V
    .locals 1

    const-string/jumbo v0, "shutdown_on_time_enabled"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static beN(I)V
    .locals 1

    const-string/jumbo v0, "on_time_boot_time"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static beO(I)V
    .locals 1

    const-string/jumbo v0, "on_time_shutdown_time"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static beP(I)V
    .locals 1

    const-string/jumbo v0, "on_time_boot_repeat"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static beQ(I)V
    .locals 1

    const-string/jumbo v0, "on_time_shutdown_repeat"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static beR()Z
    .locals 2

    const-string/jumbo v0, "on_time_boot_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static beS()Z
    .locals 2

    const-string/jumbo v0, "shutdown_on_time_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static beT()I
    .locals 2

    const-string/jumbo v0, "on_time_boot_time"

    const/16 v1, 0x1a4

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static beU()I
    .locals 2

    const-string/jumbo v0, "on_time_shutdown_time"

    const/16 v1, 0x582

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static beV()I
    .locals 2

    const-string/jumbo v0, "on_time_boot_repeat"

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static beW()I
    .locals 2

    const-string/jumbo v0, "on_time_shutdown_repeat"

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static beX()J
    .locals 4

    const-string/jumbo v0, "saved_shutdown_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static beY(I)V
    .locals 1

    const-string/jumbo v0, "key_memory_clean_time"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static beZ()I
    .locals 2

    const-string/jumbo v0, "key_memory_clean_time"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static bfA(J)V
    .locals 2

    const-string/jumbo v0, "key_battery_last_drain_time_duration"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static bfB(J)V
    .locals 2

    const-string/jumbo v0, "key_battery_info_charge_full_time_ac"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static bfC(J)V
    .locals 2

    const-string/jumbo v0, "key_battery_info_charge_full_time_usb"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static bfD(J)V
    .locals 2

    const-string/jumbo v0, "key_last_show_over_heat_time"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static bfa()J
    .locals 4

    const-string/jumbo v0, "key_battery_last_charge_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bfb()J
    .locals 4

    const-string/jumbo v0, "key_battery_last_drain_time_duration"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bfc()I
    .locals 2

    const-string/jumbo v0, "key_battery_last_drain_percent"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static bfd()I
    .locals 2

    const-string/jumbo v0, "key_battery_over_heat_value"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static bfe(Z)V
    .locals 1

    const-string/jumbo v0, "key_show_battery_consume_abnormal"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bff()Z
    .locals 2

    const-string/jumbo v0, "key_show_battery_consume_abnormal"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bfg()I
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "key_disable_mobile_data_time"

    invoke-static {v0, v3}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    aget v0, v1, v3

    mul-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Lcom/miui/powercenter/a;->bfh(I)V

    :cond_0
    return v0
.end method

.method public static bfh(I)V
    .locals 1

    const-string/jumbo v0, "key_disable_mobile_data_time"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static bfi()Z
    .locals 2

    const-string/jumbo v0, "key_auto_exit_power_save_mode_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bfj()Z
    .locals 2

    const-string/jumbo v0, "key_power_save_alarm_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bfk()I
    .locals 2

    const-string/jumbo v0, "key_power_save_open_time"

    const/16 v1, 0x564

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static bfl()I
    .locals 2

    const-string/jumbo v0, "key_power_save_close_time"

    const/16 v1, 0x1a4

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static bfm()J
    .locals 4

    const-string/jumbo v0, "bootTimeKey"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bfn()J
    .locals 4

    const-string/jumbo v0, "key_battery_info_charge_full_time_ac"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bfo()J
    .locals 4

    const-string/jumbo v0, "key_battery_info_charge_full_time_usb"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bfp(J)V
    .locals 2

    const-string/jumbo v0, "bootTimeKey"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static bfq(J)V
    .locals 2

    const-string/jumbo v0, "saved_shutdown_time"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static bfr(I)V
    .locals 1

    const-string/jumbo v0, "key_battery_over_heat_value"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static bfs(Z)V
    .locals 1

    const-string/jumbo v0, "key_power_save_alarm_enabled"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bft(I)V
    .locals 1

    const-string/jumbo v0, "key_power_save_open_time"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static bfu(I)V
    .locals 1

    const-string/jumbo v0, "key_power_save_close_time"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static bfv()J
    .locals 4

    const-string/jumbo v0, "key_last_show_over_heat_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bfw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static bfx(Z)V
    .locals 1

    const-string/jumbo v0, "key_auto_exit_power_save_mode_enabled"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static bfy(J)V
    .locals 2

    const-string/jumbo v0, "key_battery_last_charge_time"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static bfz(I)V
    .locals 1

    const-string/jumbo v0, "key_battery_last_drain_percent"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method
