.class public Lcom/miui/securitycenter/cloudbackup/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/settingsdk/backup/ICloudBackup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bqm(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_OFFICIAL_VERSION:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SecurityCenterSettingsCloudBackupService"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method


# virtual methods
.method public getCurrentVersion(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackupSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 2

    const-string/jumbo v0, "SecurityCenterSettingsCloudBackupService"

    const-string/jumbo v1, "start settings backup. "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SecurityCenter"

    invoke-static {p1}, Lcom/miui/securitycenter/cloudbackup/e;->bqp(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/securitycenter/cloudbackup/c;->bqm(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "AntivirusSettings"

    invoke-static {p1}, Lcom/miui/securitycenter/cloudbackup/g;->bqv(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/securitycenter/cloudbackup/c;->bqm(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "PowerSettings"

    invoke-static {p1}, Lcom/miui/securitycenter/cloudbackup/b;->bql(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/securitycenter/cloudbackup/c;->bqm(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "GeneralSettings"

    invoke-static {p1}, Lcom/miui/securitycenter/cloudbackup/h;->bqx(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/securitycenter/cloudbackup/c;->bqm(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "SafePaySettings"

    invoke-static {p1}, Lcom/miui/securitycenter/cloudbackup/a;->bqj(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/securitycenter/cloudbackup/c;->bqm(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "AntiSpamSettings"

    invoke-static {p1}, Lcom/miui/securitycenter/cloudbackup/f;->bqt(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/securitycenter/cloudbackup/c;->bqm(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "AppManagerSettings"

    invoke-static {p1}, Lcom/miui/securitycenter/cloudbackup/d;->bqn(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/securitycenter/cloudbackup/c;->bqm(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string/jumbo v0, "SecurityCenterSettingsCloudBackupService"

    const-string/jumbo v1, "end settings backup. "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;I)V
    .locals 2

    const-string/jumbo v0, "SecurityCenterSettingsCloudBackupService"

    const-string/jumbo v1, "start settings restore. "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    const-string/jumbo v0, "SecurityCenter"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SecurityCenter"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/miui/securitycenter/cloudbackup/c;->bqm(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/securitycenter/cloudbackup/e;->bqq(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_0
    const-string/jumbo v0, "AntivirusSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AntivirusSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/miui/securitycenter/cloudbackup/c;->bqm(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/securitycenter/cloudbackup/g;->bqw(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_1
    const-string/jumbo v0, "PowerSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "PowerSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/miui/securitycenter/cloudbackup/c;->bqm(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/securitycenter/cloudbackup/b;->bqk(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_2
    const-string/jumbo v0, "GeneralSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "GeneralSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/miui/securitycenter/cloudbackup/c;->bqm(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/securitycenter/cloudbackup/h;->bqy(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_3
    const-string/jumbo v0, "SafePaySettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "SafePaySettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/miui/securitycenter/cloudbackup/c;->bqm(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/securitycenter/cloudbackup/a;->bqi(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_4
    const-string/jumbo v0, "AntiSpamSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "AntiSpamSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/miui/securitycenter/cloudbackup/c;->bqm(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/securitycenter/cloudbackup/f;->bqu(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_5
    const-string/jumbo v0, "AppManagerSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "AppManagerSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/miui/securitycenter/cloudbackup/c;->bqm(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/securitycenter/cloudbackup/d;->bqo(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_6
    const-string/jumbo v0, "SecurityCenterSettingsCloudBackupService"

    const-string/jumbo v1, "end settings restore. "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
