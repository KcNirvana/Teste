.class public Lcom/miui/antivirus/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static awx:Ljava/util/ArrayList;

.field private static awy:Ljava/util/ArrayList;

.field static final awz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->bsy()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antivirus/i;->awz:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aDA(Z)V
    .locals 1

    const-string/jumbo v0, "key_check_item_update"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static aDB(Z)V
    .locals 1

    sget-object v0, Lcom/miui/antivirus/i;->awz:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static aDC(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2

    sget-object v0, Lcom/miui/antivirus/i;->awx:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/antivirus/utils/a;->auj(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/antivirus/i;->awx:Ljava/util/ArrayList;

    :cond_0
    const-string/jumbo v0, "key_safepay_monitored_activity_list"

    sget-object v1, Lcom/miui/antivirus/i;->awx:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static aDD(Z)V
    .locals 1

    const-string/jumbo v0, "key_safepay_auto_scan_state"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static aDE()Z
    .locals 2

    const-string/jumbo v0, "PREF_KEY_WHITELIST_HAS_APP"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aDF()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "toggle_engine_one"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/g;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antivirus/g;->aDc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/i;->aDO(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static aDG(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "key_safepay_wifi_scan_result"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aDH()Z
    .locals 2

    const-string/jumbo v0, "key_free_wifi_alert"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aDI(Z)V
    .locals 1

    const-string/jumbo v0, "key_free_wifi_alert"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static aDJ(Ljava/util/ArrayList;)V
    .locals 1

    const-string/jumbo v0, "key_safepay_monitored_apps_list"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMI(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static aDK()I
    .locals 2

    const-string/jumbo v0, "key_last_scan_risk_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static aDL()I
    .locals 2

    const-string/jumbo v0, "key_last_scan_virus_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static aDM()Z
    .locals 2

    const-string/jumbo v0, "key_first_enter_antivirus_v3"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aDN(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static aDO(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "toggle_engine_one"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMK(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static aDP(Z)V
    .locals 1

    const-string/jumbo v0, "key_first_enter_antivirus_v3"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static aDQ(Lcom/miui/antivirus/utils/SecurityStatus;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/antivirus/utils/SecurityStatus;->getValue()I

    move-result v0

    const-string/jumbo v1, "key_pay_safety_status"

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static aDR(J)V
    .locals 2

    const-string/jumbo v0, "key_latest_virus_scan_date"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securitycenter/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "key_latest_virus_scan_date"

    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static aDS(Ljava/util/ArrayList;)V
    .locals 1

    const-string/jumbo v0, "key_safepay_monitored_activity_list"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMI(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static aDT(Ljava/util/ArrayList;)V
    .locals 1

    const-string/jumbo v0, "key_safepay_sign_exception"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMI(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static aDU(Z)V
    .locals 1

    const-string/jumbo v0, "PREF_KEY_WHITELIST_HAS_APP"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static aDi()Lcom/miui/antivirus/utils/SecurityStatus;
    .locals 2

    invoke-static {}, Lcom/miui/antivirus/utils/SecurityStatus;->auw()Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antivirus/utils/SecurityStatus;->getValue()I

    move-result v0

    const-string/jumbo v1, "key_pay_safety_status"

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/miui/antivirus/utils/SecurityStatus;->auv(I)Lcom/miui/antivirus/utils/SecurityStatus;

    move-result-object v0

    return-object v0
.end method

.method public static aDj(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2

    sget-object v0, Lcom/miui/antivirus/i;->awy:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/antivirus/utils/a;->auk(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/antivirus/i;->awy:Ljava/util/ArrayList;

    :cond_0
    const-string/jumbo v0, "key_safepay_monitored_apps_list"

    sget-object v1, Lcom/miui/antivirus/i;->awy:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static aDk()Ljava/util/ArrayList;
    .locals 2

    const-string/jumbo v0, "key_safepay_sign_exception"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static aDl()J
    .locals 4

    const-string/jumbo v0, "key_last_cloud_data_update_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/miui/common/persistence/a;->aML(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static aDm(J)V
    .locals 2

    const-string/jumbo v0, "key_last_cloud_data_update_time"

    invoke-static {v0, p0, p1}, Lcom/miui/common/persistence/a;->aMQ(Ljava/lang/String;J)V

    return-void
.end method

.method public static aDn()Z
    .locals 2

    const-string/jumbo v0, "key_check_item_wifi"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aDo()Z
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "key_check_item_root"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aDp()Z
    .locals 2

    const-string/jumbo v1, "key_check_item_update"

    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static aDq()Z
    .locals 2

    sget-object v0, Lcom/miui/antivirus/i;->awz:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aDr()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "key_safepay_wifi_scan_result"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aDs()Z
    .locals 2

    const-string/jumbo v0, "key_safepay_auto_scan_state"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aDt(I)V
    .locals 1

    const-string/jumbo v0, "key_last_scan_risk_count"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static aDu(I)V
    .locals 1

    const-string/jumbo v0, "key_last_scan_virus_count"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    return-void
.end method

.method public static aDv(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aDw()Z
    .locals 2

    const-string/jumbo v0, "key_safepay_input_method_state"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static aDx(Z)V
    .locals 1

    const-string/jumbo v0, "key_safepay_input_method_state"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static aDy(Z)V
    .locals 1

    const-string/jumbo v0, "key_check_item_wifi"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public static aDz(Z)V
    .locals 1

    const-string/jumbo v0, "key_check_item_root"

    invoke-static {v0, p0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method
