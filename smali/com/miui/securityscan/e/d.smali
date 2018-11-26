.class public Lcom/miui/securityscan/e/d;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private KE:Ljava/lang/ref/WeakReference;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/e/d;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/e/d;->KE:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected LQ(Lcom/miui/securityscan/e/c;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/securityscan/e/c;->LL()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/securityscan/e/d;->KE:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v0, Lcom/miui/securityscan/MainActivity;->LN:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iput-object v1, v0, Lcom/miui/securityscan/MainActivity;->Ml:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/securityscan/e/c;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/securityscan/e/d;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/miui/securityscan/c;->OM(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/e/d;->context:Landroid/content/Context;

    const-string/jumbo v2, "data_config"

    invoke-static {v0, v2}, Lcom/miui/securityscan/b/c;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;

    move-result-object v0

    const-string/jumbo v2, "initSucessResult"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, ""

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/miui/securityscan/cards/d;->CC([Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "dataVersion"

    const-string/jumbo v5, "dataVersionScanResult"

    const-string/jumbo v6, ""

    invoke-virtual {v0, v5, v6}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_1

    const-string/jumbo v2, "init"

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v3}, Lcom/miui/securityscan/cards/DataModel;->Dh(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {v3, v2}, Lcom/miui/securityscan/cards/DataModel;->CT(Lorg/json/JSONObject;I)Lcom/miui/securityscan/cards/DataModel;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/miui/securityscan/cards/DataModel;->CZ()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "dataVersionScanResult"

    invoke-virtual {v2}, Lcom/miui/securityscan/cards/DataModel;->CZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/miui/securityscan/b/c;->save(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {v2}, Lcom/miui/securityscan/cards/DataModel;->getStatus()I

    move-result v3

    if-ne v3, v7, :cond_3

    const-string/jumbo v3, "initSucessResult"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/miui/securityscan/b/c;->save(Ljava/lang/String;Z)Z

    :cond_3
    iget-object v0, p0, Lcom/miui/securityscan/e/d;->KE:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lcom/miui/securityscan/cards/DataModel;->Df()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v0, Lcom/miui/securityscan/MainActivity;->LN:I

    if-eq v3, v7, :cond_5

    invoke-virtual {v2}, Lcom/miui/securityscan/cards/DataModel;->De()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/securityscan/c;->OM(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    if-eqz v3, :cond_4

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->MT:Lcom/miui/securityscan/scanner/B;

    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Lcom/miui/securityscan/scanner/B;->Gd(I)V

    :cond_4
    :goto_0
    if-eqz v2, :cond_7

    new-instance v0, Lcom/miui/securityscan/e/c;

    invoke-direct {v0, v2}, Lcom/miui/securityscan/e/c;-><init>(Lcom/miui/securityscan/cards/DataModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/miui/securityscan/e/d;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/miui/securityscan/c;->OM(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LoadScanResultAdvertisementDataTask"

    const-string/jumbo v3, "load scanresult data "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1

    :cond_6
    return-object v0

    :cond_7
    move-object v0, v1

    goto :goto_1

    :cond_8
    move-object v2, v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/e/d;->doInBackground([Ljava/lang/Void;)Lcom/miui/securityscan/e/c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/securityscan/e/c;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/e/d;->LQ(Lcom/miui/securityscan/e/c;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/e/d;->KE:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/miui/securityscan/MainActivity;->Ml:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method
