.class Lcom/miui/securityscan/model/a;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic Bi:Lcom/miui/securityscan/model/ModelUpdater;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/model/ModelUpdater;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/model/a;->Bi:Lcom/miui/securityscan/model/ModelUpdater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/securityscan/model/a;->context:Landroid/content/Context;

    return-void
.end method

.method private BN()I
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/model/a;->Bi:Lcom/miui/securityscan/model/ModelUpdater;

    invoke-static {v0}, Lcom/miui/securityscan/model/ModelUpdater;->BI(Lcom/miui/securityscan/model/ModelUpdater;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/model/ModelFactory;->getScanItemJSONStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "version"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/a;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/miui/securityscan/c;->OD()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/common/b/g;->getFromNowDayInterval(J)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/securityscan/model/a;->Bi:Lcom/miui/securityscan/model/ModelUpdater;

    invoke-static {v0}, Lcom/miui/securityscan/model/ModelUpdater;->BI(Lcom/miui/securityscan/model/ModelUpdater;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/t;->aJq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/miui/securityscan/model/a;->BN()I

    move-result v0

    iget-object v1, p0, Lcom/miui/securityscan/model/a;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/common/network/b;->aLz(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/securityscan/model/ModelUpdater;->BM(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/securityscan/c;->OE()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scanitem.json_v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/miui/securityscan/model/a;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {v1, v3}, Lmiui/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    xor-int/lit8 v0, v2, 0x1

    invoke-static {v0}, Lcom/miui/securityscan/c;->OF(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/securityscan/c;->OG(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-object v5

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/a;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/securityscan/model/a;->Bi:Lcom/miui/securityscan/model/ModelUpdater;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/securityscan/model/ModelUpdater;->BL(Lcom/miui/securityscan/model/ModelUpdater;Z)Z

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/miui/securityscan/model/a;->Bi:Lcom/miui/securityscan/model/ModelUpdater;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/securityscan/model/ModelUpdater;->BL(Lcom/miui/securityscan/model/ModelUpdater;Z)Z

    return-void
.end method
