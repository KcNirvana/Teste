.class final Lcom/miui/gamebooster/ui/an;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic dM:Lcom/miui/gamebooster/ui/c;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/an;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/miui/gamebooster/gamead/DataModel;
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/16 v1, 0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/an;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/securityscan/cards/i;->getInstance(Landroid/content/Context;)Lcom/miui/securityscan/cards/i;

    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/ui/an;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/gamebooster/a/s;->gu(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/an;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "gb_gamead_data_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v1, "initSucess"

    const/4 v2, 0x0

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-nez v1, :cond_1

    const-string/jumbo v1, "init"

    const-string/jumbo v2, "1"

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "gbintlgamewall"

    move-object v2, v1

    :goto_0
    const-string/jumbo v1, "gamebooster"

    iget-object v5, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v5}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/miui/gamebooster/a/m;->fR(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v6, v1}, Lcom/miui/gamebooster/gamead/DataModel;->lG(Lorg/json/JSONObject;Z)Lcom/miui/gamebooster/gamead/DataModel;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/miui/gamebooster/ui/c;->bA(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/gamead/DataModel;)Lcom/miui/gamebooster/gamead/DataModel;

    :cond_2
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/miui/gamebooster/gamead/DataModel;

    iget-object v5, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v5}, Lcom/miui/gamebooster/ui/c;->be(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/gamead/DataModel;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/ui/an;->publishProgress([Ljava/lang/Object;)V

    :cond_3
    invoke-static {v4}, Lcom/miui/gamebooster/gamead/DataModel;->lL(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, ""

    if-eq v1, v4, :cond_a

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lcom/miui/gamebooster/gamead/DataModel;->lG(Lorg/json/JSONObject;Z)Lcom/miui/gamebooster/gamead/DataModel;

    move-result-object v1

    :goto_1
    sget-boolean v5, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v5, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    const-string/jumbo v5, "gamebooster"

    iget-object v6, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v6}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v2, v4, v6}, Lcom/miui/gamebooster/a/m;->fT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_5
    iget-object v2, p0, Lcom/miui/gamebooster/ui/an;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/gamebooster/a/s;->gv(Landroid/content/Context;)V

    if-nez v1, :cond_8

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_7

    :goto_2
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    return-object v0

    :cond_6
    :try_start_2
    const-string/jumbo v1, "gbviewpoints"

    move-object v2, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->be(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/gamead/DataModel;

    move-result-object v0

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/DataModel;->lJ()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "initSucess"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_9
    iget-object v0, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/ui/c;->bA(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/gamead/DataModel;)Lcom/miui/gamebooster/gamead/DataModel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_3
    iget-object v0, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->be(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/gamead/DataModel;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/miui/gamebooster/ui/c;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "msg"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0

    :cond_a
    move-object v1, v0

    goto :goto_1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/an;->doInBackground([Ljava/lang/Void;)Lcom/miui/gamebooster/gamead/DataModel;

    move-result-object v0

    return-object v0
.end method

.method protected ep(Lcom/miui/gamebooster/gamead/DataModel;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/DataModel;->lI()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bm(Lcom/miui/gamebooster/ui/c;)Lcom/miui/common/customview/AutoPasteListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/DataModel;->lH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->aX(Lcom/miui/gamebooster/ui/c;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/DataModel;->lH()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0, p1}, Lcom/miui/gamebooster/ui/c;->bA(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/gamead/DataModel;)Lcom/miui/gamebooster/gamead/DataModel;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bf(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/gamead/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected varargs eq([Lcom/miui/gamebooster/gamead/DataModel;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    aget-object v2, p1, v0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/gamebooster/gamead/DataModel;->lI()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lcom/miui/gamebooster/gamead/DataModel;->lH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2}, Lcom/miui/gamebooster/gamead/DataModel;->lH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/gamebooster/gamead/InternalAdWall;

    if-eqz v0, :cond_0

    new-instance v3, Lcom/miui/gamebooster/model/e;

    const/4 v0, 0x1

    invoke-direct {v3, v5, v0, v5, v5}, Lcom/miui/gamebooster/model/e;-><init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Lcom/miui/gamebooster/gamead/DataModel;->lH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/gamead/InternalAdWall;

    invoke-virtual {v3, v0}, Lcom/miui/gamebooster/model/e;->mU(Lcom/miui/gamebooster/gamead/InternalAdWall;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0, v3}, Lcom/miui/gamebooster/ui/c;->bC(Lcom/miui/gamebooster/ui/c;Lcom/miui/gamebooster/model/e;)Lcom/miui/gamebooster/model/e;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bg(Lcom/miui/gamebooster/ui/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bg(Lcom/miui/gamebooster/ui/c;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v4}, Lcom/miui/gamebooster/ui/c;->bg(Lcom/miui/gamebooster/ui/c;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bi(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/view/DragGridView;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/c;->bg(Lcom/miui/gamebooster/ui/c;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/miui/gamebooster/view/DragGridView;->qu(I)V

    const-string/jumbo v0, "show"

    const-string/jumbo v3, "time"

    invoke-static {v0, v3}, Lcom/miui/gamebooster/a/t;->gL(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/an;->dM:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bh(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/b/i;->notifyDataSetChanged()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/gamead/DataModel;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/an;->ep(Lcom/miui/gamebooster/gamead/DataModel;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/miui/gamebooster/gamead/DataModel;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/an;->eq([Lcom/miui/gamebooster/gamead/DataModel;)V

    return-void
.end method
