.class final Lcom/miui/gamebooster/ui/z;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic cL:Lcom/miui/gamebooster/ui/a;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/z;->cL:Lcom/miui/gamebooster/ui/a;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/z;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/miui/gamebooster/top/DataModel;
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/z;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "gb_data_config"

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    const-string/jumbo v0, "layout_data"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/gamebooster/top/DataModel;->ta(Lorg/json/JSONObject;)Lcom/miui/gamebooster/top/DataModel;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/ui/a;->Q(Lcom/miui/gamebooster/top/DataModel;)Lcom/miui/gamebooster/top/DataModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    :try_start_1
    const-string/jumbo v0, "initSucess"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-nez v0, :cond_2

    const-string/jumbo v0, "init"

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/z;->cL:Lcom/miui/gamebooster/ui/a;

    new-instance v3, Lcom/miui/gamebooster/ui/A;

    iget-object v4, p0, Lcom/miui/gamebooster/ui/z;->cL:Lcom/miui/gamebooster/ui/a;

    invoke-static {v4}, Lcom/miui/gamebooster/ui/a;->J(Lcom/miui/gamebooster/ui/a;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/miui/gamebooster/ui/A;-><init>(Lcom/miui/gamebooster/ui/z;Landroid/app/Activity;)V

    invoke-static {v0, v3}, Lcom/miui/gamebooster/ui/a;->T(Lcom/miui/gamebooster/ui/a;Lcom/miui/common/a/b/b;)V

    invoke-static {v2}, Lcom/miui/gamebooster/top/DataModel;->tb(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/gamebooster/top/DataModel;->ta(Lorg/json/JSONObject;)Lcom/miui/gamebooster/top/DataModel;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "layout_data"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Lcom/miui/gamebooster/ui/a;->M()Lcom/miui/gamebooster/top/DataModel;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/a;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "msg"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lcom/miui/gamebooster/top/DataModel;->tc()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/gamebooster/top/DataModel;->td()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "initSucess"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "layout_data"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v2}, Lcom/miui/gamebooster/ui/a;->Q(Lcom/miui/gamebooster/top/DataModel;)Lcom/miui/gamebooster/top/DataModel;

    :cond_5
    invoke-static {}, Lcom/miui/gamebooster/ui/a;->M()Lcom/miui/gamebooster/top/DataModel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/a;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "msg"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/z;->doInBackground([Ljava/lang/Object;)Lcom/miui/gamebooster/top/DataModel;

    move-result-object v0

    return-object v0
.end method

.method protected ee(Lcom/miui/gamebooster/top/DataModel;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/z;->cL:Lcom/miui/gamebooster/ui/a;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/a;->O(Lcom/miui/gamebooster/ui/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-static {}, Lcom/miui/gamebooster/ui/a;->M()Lcom/miui/gamebooster/top/DataModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/z;->cL:Lcom/miui/gamebooster/ui/a;

    invoke-static {}, Lcom/miui/gamebooster/ui/a;->M()Lcom/miui/gamebooster/top/DataModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/a;->R(Lcom/miui/gamebooster/ui/a;Lcom/miui/gamebooster/top/DataModel;)Lcom/miui/gamebooster/top/DataModel;

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/z;->cL:Lcom/miui/gamebooster/ui/a;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/a;->S(Lcom/miui/gamebooster/ui/a;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/z;->cL:Lcom/miui/gamebooster/ui/a;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/a;->N(Lcom/miui/gamebooster/ui/a;)Lcom/miui/gamebooster/top/DataModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/top/DataModel;->tc()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/z;->cL:Lcom/miui/gamebooster/ui/a;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/a;->S(Lcom/miui/gamebooster/ui/a;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/miui/gamebooster/ui/z;->cL:Lcom/miui/gamebooster/ui/a;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/a;->K(Lcom/miui/gamebooster/ui/a;)Lcom/miui/gamebooster/top/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gamebooster/top/a;->clear()V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/z;->cL:Lcom/miui/gamebooster/ui/a;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/a;->K(Lcom/miui/gamebooster/ui/a;)Lcom/miui/gamebooster/top/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/top/a;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/top/DataModel;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/z;->ee(Lcom/miui/gamebooster/top/DataModel;)V

    return-void
.end method
