.class public Lcom/miui/antispam/db/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ZI:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static YO()Z
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    return v0
.end method

.method public static YP(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1, p3}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    invoke-static {p1, p3}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static YQ(Landroid/content/Context;I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string/jumbo v0, "fraud_num_state"

    :goto_0
    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v0, "fraud_num_state_sim_2"

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public static YR(Landroid/content/Context;I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string/jumbo v0, "agent_num_state"

    :goto_0
    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v0, "agent_num_state_sim_2"

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public static YS(Landroid/content/Context;I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string/jumbo v0, "sell_num_state"

    :goto_0
    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v0, "sell_num_state_sim_2"

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public static YT(Landroid/content/Context;I)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string/jumbo v0, "harass_num_state"

    :goto_0
    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v0, "harass_num_state_sim_2"

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public static YU(I)Z
    .locals 2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string/jumbo v0, "is_repeated_marked_number_permit"

    :goto_0
    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "is_repeated_marked_number_permit_sim_2"

    goto :goto_0
.end method

.method public static YV(I)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "is_call_transfer_blocked"

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "is_call_transfer_blocked_sim_2"

    goto :goto_0
.end method

.method public static YW(I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "backsound_index"

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "backsound_index_sim_2"

    goto :goto_0
.end method

.method public static YX(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "mark_time_fraud"

    :goto_0
    const/16 v1, 0x32

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "mark_time_fraud_sim_2"

    goto :goto_0
.end method

.method public static YY(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "mark_time_agent"

    :goto_0
    const/16 v1, 0x32

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "mark_time_agent_sim_2"

    goto :goto_0
.end method

.method public static YZ(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "mark_time_sell"

    :goto_0
    const/16 v1, 0x32

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "mark_time_sell_sim_2"

    goto :goto_0
.end method

.method private static ZA(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/miui/antispam/db/a;->Zz()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/db/a;->ZI:Ljava/lang/Object;

    sget-object v0, Lcom/miui/antispam/db/a;->ZI:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sget-object v1, Lcom/miui/antispam/db/a;->ZI:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static ZB()Z
    .locals 1

    const-string/jumbo v0, "allowCalls"

    invoke-static {v0}, Lcom/miui/antispam/db/a;->ZA(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static ZC()Z
    .locals 1

    const-string/jumbo v0, "allowEvents"

    invoke-static {v0}, Lcom/miui/antispam/db/a;->ZA(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static ZD()I
    .locals 1

    const-string/jumbo v0, "allowFrom"

    invoke-static {v0}, Lcom/miui/antispam/db/a;->ZA(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static ZE()I
    .locals 1

    const-string/jumbo v0, "allowCallsFrom"

    invoke-static {v0}, Lcom/miui/antispam/db/a;->ZA(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static ZF()I
    .locals 1

    const-string/jumbo v0, "allowMessagesFrom"

    invoke-static {v0}, Lcom/miui/antispam/db/a;->ZA(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static ZG()Z
    .locals 1

    const-string/jumbo v0, "allowMessages"

    invoke-static {v0}, Lcom/miui/antispam/db/a;->ZA(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static ZH()Z
    .locals 2

    const-string/jumbo v0, "reported_number_settings_reset"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Za(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "mark_time_harass"

    :goto_0
    const/16 v1, 0x32

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "mark_time_harass_sim_2"

    goto :goto_0
.end method

.method public static Zb(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1, p3}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p3}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static Zc(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "is_call_transfer_blocked"

    :goto_0
    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "is_call_transfer_blocked_sim_2"

    goto :goto_0
.end method

.method public static Zd(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "is_repeated_marked_number_permit"

    :goto_0
    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string/jumbo v0, "is_repeated_marked_number_permit_sim_2"

    goto :goto_0
.end method

.method public static Ze(Landroid/content/Context;IZ)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string/jumbo v1, "fraud_num_state"

    :goto_0
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_1
    const-string/jumbo v1, "fraud_num_state_sim_2"

    goto :goto_0
.end method

.method public static Zf(Landroid/content/Context;IZ)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string/jumbo v1, "agent_num_state"

    :goto_0
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_1
    const-string/jumbo v1, "agent_num_state_sim_2"

    goto :goto_0
.end method

.method public static Zg(Landroid/content/Context;IZ)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string/jumbo v1, "sell_num_state"

    :goto_0
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_1
    const-string/jumbo v1, "sell_num_state_sim_2"

    goto :goto_0
.end method

.method public static Zh(Landroid/content/Context;IZ)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string/jumbo v1, "harass_num_state"

    :goto_0
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_1
    const-string/jumbo v1, "harass_num_state_sim_2"

    goto :goto_0
.end method

.method public static Zi(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "mark_time_fraud"

    :goto_0
    invoke-static {p0, v0, p2}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string/jumbo v0, "mark_time_fraud_sim_2"

    goto :goto_0
.end method

.method public static Zj(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "mark_time_agent"

    :goto_0
    invoke-static {p0, v0, p2}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string/jumbo v0, "mark_time_agent_sim_2"

    goto :goto_0
.end method

.method public static Zk(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "mark_time_sell"

    :goto_0
    invoke-static {p0, v0, p2}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string/jumbo v0, "mark_time_sell_sim_2"

    goto :goto_0
.end method

.method public static Zl(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "mark_time_harass"

    :goto_0
    invoke-static {p0, v0, p2}, Landroid/provider/MiuiSettings$AntiSpam;->setMode(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string/jumbo v0, "mark_time_harass_sim_2"

    goto :goto_0
.end method

.method public static Zm(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "backsound_index"

    :goto_0
    invoke-static {v0, p1}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string/jumbo v0, "backsound_index_sim_2"

    goto :goto_0
.end method

.method public static Zn()J
    .locals 4

    const-string/jumbo v0, "clouds_data_version"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static Zo(J)V
    .locals 2

    const-string/jumbo v0, "clouds_data_version"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static Zp()Z
    .locals 2

    const-string/jumbo v0, "antispam_data_migration"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Zq(Z)V
    .locals 1

    const-string/jumbo v0, "antispam_data_migration"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Zr(Z)V
    .locals 1

    const-string/jumbo v0, "dataMigration"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Zs(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "update_state"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Zt(Z)V
    .locals 1

    const-string/jumbo v0, "reported_number_settings_reset"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Zu(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "quiet_wristband_mac"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static Zv(I)V
    .locals 1

    const-string/jumbo v0, "unread_mms_count"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static Zw(I)V
    .locals 1

    const-string/jumbo v0, "unread_phone_count"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static Zx()I
    .locals 2

    const-string/jumbo v0, "unread_phone_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static Zy()I
    .locals 2

    const-string/jumbo v0, "unread_mms_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static Zz()Ljava/lang/Object;
    .locals 5

    :try_start_0
    const-string/jumbo v0, "android.app.INotificationManager$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "asInterface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "getZenModeConfig"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AntiSpam_Config"

    const-string/jumbo v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    const-string/jumbo v0, "android.service.notification.ZenModeConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method
