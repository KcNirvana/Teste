.class public Lcom/miui/weather2/cloudbackup/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/settingsdk/backup/ICloudBackup;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "select_city"

    sput-object v0, Lcom/miui/weather2/cloudbackup/a;->a:Ljava/lang/String;

    const-string v0, "alert_enable_city"

    sput-object v0, Lcom/miui/weather2/cloudbackup/a;->b:Ljava/lang/String;

    const-string v0, "use_wind_unit"

    sput-object v0, Lcom/miui/weather2/cloudbackup/a;->c:Ljava/lang/String;

    const-string v0, "use_temperature_unit"

    sput-object v0, Lcom/miui/weather2/cloudbackup/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/miui/weather2/tools/bi;->H(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p1}, Lcom/miui/weather2/tools/bi;->J(Landroid/content/Context;)I

    move-result v2

    :try_start_0
    sget-object v3, Lcom/miui/weather2/cloudbackup/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object v1, Lcom/miui/weather2/cloudbackup/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "json_key_weather_Settings"

    invoke-virtual {p2, v1, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Wth2:WeatherCloudBackupImpl"

    const-string v2, "backupConfig()"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "json_key_weather_Settings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "json_key_weather_Settings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/miui/weather2/cloudbackup/a;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/miui/weather2/tools/bi;->d(Landroid/content/Context;Z)V

    sget-object v1, Lcom/miui/weather2/cloudbackup/a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/weather2/tools/bi;->J(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private c(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/weather2/tools/t;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->b(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v2, Lcom/miui/weather2/cloudbackup/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "json_key_weather_select_city"

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Wth2:WeatherCloudBackupImpl"

    const-string v2, "backupSelectCity()"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "json_key_weather_select_city"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "json_key_weather_select_city"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/weather2/cloudbackup/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/weather2/tools/bi;->s(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Wth2:WeatherCloudBackupImpl"

    const-string v2, "restoreSelectCity()"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 3

    invoke-static {p1}, Lcom/miui/weather2/tools/t;->e(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/weather2/tools/bi;->c(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/miui/weather2/cloudbackup/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "json_key_weather_alert_enable_city"

    invoke-virtual {p2, v0, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Wth2:WeatherCloudBackupImpl"

    const-string v2, "backupAlertEnableCity()"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private f(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "json_key_weather_alert_enable_city"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "json_key_weather_alert_enable_city"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/weather2/cloudbackup/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/weather2/tools/bi;->t(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Wth2:WeatherCloudBackupImpl"

    const-string v2, "restoreAlertEnableCity()"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentVersion(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackupSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/cloudbackup/a;->a(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/cloudbackup/a;->c(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/cloudbackup/a;->e(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    return-void
.end method

.method public onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/cloudbackup/a;->b(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/cloudbackup/a;->d(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/cloudbackup/a;->f(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V

    return-void
.end method
