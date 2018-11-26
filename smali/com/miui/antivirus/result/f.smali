.class Lcom/miui/antivirus/result/f;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/result/f;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/result/f;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/miui/antivirus/result/f;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    iget-object v0, p0, Lcom/miui/antivirus/result/f;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "data_config"

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/antivirus/result/h;->atv()Lcom/miui/antivirus/result/DataModel;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/result/c;->asN(Lcom/miui/antivirus/result/DataModel;)Lcom/miui/antivirus/result/DataModel;

    :cond_0
    invoke-static {}, Lcom/miui/antivirus/result/c;->-get1()Lcom/miui/antivirus/result/DataModel;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "layout_data"

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v2, v0}, Lcom/miui/antivirus/result/DataModel;->asW(Lorg/json/JSONObject;Z)Lcom/miui/antivirus/result/DataModel;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/result/c;->asN(Lcom/miui/antivirus/result/DataModel;)Lcom/miui/antivirus/result/DataModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/miui/antivirus/result/c;->-get1()Lcom/miui/antivirus/result/DataModel;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "******************"

    invoke-static {}, Lcom/miui/antivirus/result/c;->-get1()Lcom/miui/antivirus/result/DataModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/antivirus/result/DataModel;->asZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/miui/antivirus/result/h;->atv()Lcom/miui/antivirus/result/DataModel;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/result/c;->asN(Lcom/miui/antivirus/result/DataModel;)Lcom/miui/antivirus/result/DataModel;

    :cond_3
    invoke-static {}, Lcom/miui/antivirus/result/c;->asM()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    const-string/jumbo v0, "initSucess"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/miui/antivirus/result/g;->att()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-nez v0, :cond_5

    const-string/jumbo v0, "init"

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {v2}, Lcom/miui/antivirus/result/DataModel;->asV(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/miui/antivirus/result/DataModel;->asW(Lorg/json/JSONObject;Z)Lcom/miui/antivirus/result/DataModel;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/miui/antivirus/result/h;->atv()Lcom/miui/antivirus/result/DataModel;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/result/c;->asN(Lcom/miui/antivirus/result/DataModel;)Lcom/miui/antivirus/result/DataModel;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "layout_data"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_1
    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    return-object v7

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CleanResultControl"

    const-string/jumbo v3, "msg"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_7
    :try_start_2
    invoke-virtual {v2}, Lcom/miui/antivirus/result/DataModel;->asY()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/antivirus/result/DataModel;->asX()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "initSucess"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "layout_data"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v2}, Lcom/miui/antivirus/result/c;->asN(Lcom/miui/antivirus/result/DataModel;)Lcom/miui/antivirus/result/DataModel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v1, "CleanResultControl"

    const-string/jumbo v2, "msg"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
