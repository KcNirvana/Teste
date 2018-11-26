.class final Lcom/miui/permcenter/install/k;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic QF:Lcom/miui/permcenter/install/AdbInstallVerifyActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/install/AdbInstallVerifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/install/k;->QF:Lcom/miui/permcenter/install/AdbInstallVerifyActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/install/k;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/miui/permcenter/install/k;->QF:Lcom/miui/permcenter/install/AdbInstallVerifyActivity;

    iget-object v1, v1, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->PX:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "xiaomi_id"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/permcenter/install/k;->QF:Lcom/miui/permcenter/install/AdbInstallVerifyActivity;

    invoke-virtual {v1}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/permcenter/install/b;->Rg(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "A"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lcom/miui/permcenter/install/d;

    invoke-direct {v1}, Lcom/miui/permcenter/install/d;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/permcenter/install/d;->Rx(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/install/k;->QF:Lcom/miui/permcenter/install/AdbInstallVerifyActivity;

    iget-object v1, v1, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->PZ:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/miui/permcenter/install/b;->Rj(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v1, "xiaomi_id"

    iget-object v2, p0, Lcom/miui/permcenter/install/k;->QF:Lcom/miui/permcenter/install/AdbInstallVerifyActivity;

    iget-object v2, v2, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->PX:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AdbInstallActivity"

    const-string/jumbo v2, "request error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/install/k;->QF:Lcom/miui/permcenter/install/AdbInstallVerifyActivity;

    const v1, 0x7f07069c

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "message"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/install/k;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/install/k;->QF:Lcom/miui/permcenter/install/AdbInstallVerifyActivity;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->Rm()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/permcenter/install/k;->QF:Lcom/miui/permcenter/install/AdbInstallVerifyActivity;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->finish()V

    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/k;->QF:Lcom/miui/permcenter/install/AdbInstallVerifyActivity;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/AdbInstallVerifyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
