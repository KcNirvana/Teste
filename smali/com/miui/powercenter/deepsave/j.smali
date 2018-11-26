.class final Lcom/miui/powercenter/deepsave/j;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aNC:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/deepsave/j;->aNC:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bal(Ljava/util/List;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/powercenter/deepsave/c;->-get0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/deepsave/j;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 6

    const/4 v1, 0x0

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_0
    new-instance v3, Lcom/miui/powercenter/deepsave/b;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/miui/powercenter/deepsave/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/miui/powercenter/deepsave/b;->aZK()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/miui/common/datamodel/a;->aJG(I)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v2, v0}, Lcom/miui/common/datamodel/a;->aJy(Lorg/json/JSONObject;Z)Lcom/miui/common/datamodel/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Lcom/miui/powercenter/deepsave/b;->aZJ()Z

    move-result v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-nez v0, :cond_0

    const-string/jumbo v0, "init"

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/deepsave/j;->aNC:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/miui/common/datamodel/a;->aJE(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/miui/common/datamodel/a;->aJy(Lorg/json/JSONObject;Z)Lcom/miui/common/datamodel/a;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v3, v0}, Lcom/miui/powercenter/deepsave/b;->aZM(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    :goto_1
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/common/datamodel/a;->aJA()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/miui/common/datamodel/a;->aJz()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/miui/powercenter/deepsave/b;->aZL(Z)V

    :cond_2
    invoke-virtual {v0}, Lcom/miui/common/datamodel/a;->aJA()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    invoke-virtual {v3, v4}, Lcom/miui/powercenter/deepsave/b;->aZM(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    const-string/jumbo v3, "DataModelManager"

    const-string/jumbo v4, "preload data"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_1

    :cond_3
    :try_start_3
    const-string/jumbo v0, ""

    invoke-virtual {v3, v0}, Lcom/miui/powercenter/deepsave/b;->aZM(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    goto :goto_1

    :cond_4
    return-object v1

    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_1

    :cond_6
    move-object v2, v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/deepsave/j;->bal(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    invoke-static {}, Lcom/miui/powercenter/deepsave/c;->-get0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
