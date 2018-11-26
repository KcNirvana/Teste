.class public Lcom/miui/securityscan/e/a;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private Kz:Ljava/lang/ref/WeakReference;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/e/a;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/e/a;->Kz:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected LK(Lcom/miui/securityscan/e/c;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/miui/securityscan/e/c;->LL()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/miui/securityscan/e/c;->LM()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/securityscan/e/c;->LN()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/securityscan/e/a;->Kz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/securityscan/e/c;->LO()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lcom/miui/securityscan/MainActivity;->Lx:Z

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lcom/miui/securityscan/MainActivity;->Lv:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    :cond_1
    iput-object v4, v0, Lcom/miui/securityscan/MainActivity;->LM:Lcom/miui/securityscan/cards/DataModel;

    invoke-virtual {v0, v2}, Lcom/miui/securityscan/MainActivity;->Np(Ljava/util/ArrayList;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/e/a;->Kz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iput-object v4, v0, Lcom/miui/securityscan/MainActivity;->LM:Lcom/miui/securityscan/cards/DataModel;

    :cond_3
    return-void

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/miui/securityscan/e/c;->LP()Lcom/miui/securityscan/cards/DataModel;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/securityscan/MainActivity;->LM:Lcom/miui/securityscan/cards/DataModel;

    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/miui/securityscan/e/c;
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/securityscan/e/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/e/a;->context:Landroid/content/Context;

    const-string/jumbo v2, "data_config"

    invoke-static {v0, v2}, Lcom/miui/securityscan/b/c;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;

    move-result-object v2

    const-string/jumbo v0, "initSucess"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "dataVersion"

    const-string/jumbo v5, "dataVersionHomePage"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string/jumbo v0, "init"

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v0, "templates"

    invoke-static {}, Lcom/miui/securityscan/cards/DataModel;->CX()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/miui/securityscan/cards/DataModel;->CY(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/miui/securityscan/cards/DataModel;->CT(Lorg/json/JSONObject;I)Lcom/miui/securityscan/cards/DataModel;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/miui/securityscan/cards/DataModel;->getLayoutId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/securityscan/d/h;->LE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/miui/securityscan/e/a;->context:Landroid/content/Context;

    const-string/jumbo v6, "285_homepage"

    const/16 v7, 0x11d

    invoke-static {v5, v7, v6, v4}, Lcom/miui/securityscan/d/h;->LF(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/miui/securityscan/cards/DataModel;->CZ()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "dataVersionHomePage"

    invoke-virtual {v0}, Lcom/miui/securityscan/cards/DataModel;->CZ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/miui/securityscan/b/c;->save(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {v0}, Lcom/miui/securityscan/cards/DataModel;->getStatus()I

    move-result v4

    if-ne v4, v8, :cond_3

    const-string/jumbo v4, "initSucess"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/miui/securityscan/b/c;->save(Ljava/lang/String;Z)Z

    :cond_3
    invoke-virtual {v0}, Lcom/miui/securityscan/cards/DataModel;->Da()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/miui/securityscan/e/a;->context:Landroid/content/Context;

    const-string/jumbo v3, "securityscan_homelist_cache"

    invoke-static {v2, v3}, Lcom/miui/securityscan/utils/j;->Jc(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-object v2, Lcom/miui/securityscan/MainActivity;->Lo:Ljava/util/ArrayList;

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_9

    new-instance v0, Lcom/miui/securityscan/e/c;

    invoke-direct {v0, v2}, Lcom/miui/securityscan/e/c;-><init>(Lcom/miui/securityscan/cards/DataModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {p0}, Lcom/miui/securityscan/e/a;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/miui/securityscan/d/h;->LH()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LoadFunctionAndAdvertisementDataTask"

    const-string/jumbo v3, "load homepage data "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_2

    :cond_5
    :try_start_2
    invoke-virtual {v0}, Lcom/miui/securityscan/cards/DataModel;->CS()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Lcom/miui/securityscan/cards/DataModel;->CU()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/miui/securityscan/cards/DataModel;->CV()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_6
    iget-object v4, p0, Lcom/miui/securityscan/e/a;->context:Landroid/content/Context;

    const-string/jumbo v5, "securityscan_homelist_cache"

    invoke-static {v4, v5, v3}, Lcom/miui/securityscan/utils/j;->Je(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/securityscan/cards/DataModel;->CW(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/miui/securityscan/MainActivity;->Lo:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v0

    goto :goto_1

    :cond_7
    move-object v2, v0

    goto :goto_1

    :cond_8
    return-object v0

    :cond_9
    move-object v0, v1

    goto :goto_2

    :cond_a
    move-object v2, v0

    goto :goto_1

    :cond_b
    move-object v2, v1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/e/a;->doInBackground([Ljava/lang/Void;)Lcom/miui/securityscan/e/c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/securityscan/e/c;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/e/a;->LK(Lcom/miui/securityscan/e/c;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/e/a;->Kz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/securityscan/MainActivity;->Lv:Z

    iput-object v2, v0, Lcom/miui/securityscan/MainActivity;->LM:Lcom/miui/securityscan/cards/DataModel;

    :cond_0
    return-void
.end method
