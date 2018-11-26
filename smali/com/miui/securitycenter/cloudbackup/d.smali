.class public Lcom/miui/securitycenter/cloudbackup/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bqn(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lcom/miui/appmanager/i;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/i;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "app_update_notify"

    invoke-virtual {v0}, Lcom/miui/appmanager/i;->bme()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AppManagerSettingsCloudBackupHelper"

    const-string/jumbo v3, "save app update notify error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static bqo(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "app_update_notify"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/appmanager/i;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/i;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "app_update_notify"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/appmanager/i;->bmf(Z)V

    :cond_1
    return-void
.end method
