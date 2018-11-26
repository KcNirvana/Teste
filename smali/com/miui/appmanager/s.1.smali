.class Lcom/miui/appmanager/s;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aVR:Lcom/miui/appmanager/AppManagerMainActivity;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/appmanager/s;->aVR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p2}, Lcom/miui/appmanager/AppManagerMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/s;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bph(Ljava/util/List;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/appmanager/s;->aVR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boo(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/s;->aVR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boo(Lcom/miui/appmanager/AppManagerMainActivity;)Lcom/miui/appmanager/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/appmanager/s;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/appmanager/s;->aVR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boa(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/appmanager/s;->aVR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->boa(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/appmanager/s;->aVR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bpe(Lcom/miui/appmanager/AppManagerMainActivity;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/s;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/miui/appmanager/s;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v5

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/s;->aVR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bof(Lcom/miui/appmanager/AppManagerMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/appmanager/s;->aVR:Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object v1, p0, Lcom/miui/appmanager/s;->context:Landroid/content/Context;

    const-string/jumbo v2, "app_manager_adv"

    invoke-static {v1, v2}, Lcom/miui/securityscan/utils/j;->Jd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->boF(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/miui/appmanager/s;->aVR:Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object v1, p0, Lcom/miui/appmanager/s;->aVR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v1}, Lcom/miui/appmanager/AppManagerMainActivity;->bok(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->boL(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/lang/String;)Z

    move-result v1

    iget-object v0, p0, Lcom/miui/appmanager/s;->aVR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bok(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/appmanager/j;->bms()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/miui/appmanager/s;->context:Landroid/content/Context;

    const-string/jumbo v2, "app_manager_adv"

    iget-object v3, p0, Lcom/miui/appmanager/s;->aVR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v3}, Lcom/miui/appmanager/AppManagerMainActivity;->bok(Lcom/miui/appmanager/AppManagerMainActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/securityscan/utils/j;->Je(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/miui/appmanager/s;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v5

    :cond_2
    iget-object v0, p0, Lcom/miui/appmanager/s;->context:Landroid/content/Context;

    const-string/jumbo v1, "data_config"

    invoke-static {v0, v1}, Lcom/miui/securityscan/b/c;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "dataVersion"

    const-string/jumbo v3, "dataVsersionAm"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/appmanager/s;->aVR:Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object v2, p0, Lcom/miui/appmanager/s;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/appmanager/model/AMDataModel;->bhG(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->boF(Lcom/miui/appmanager/AppManagerMainActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AppManagerMainActivity"

    const-string/jumbo v3, "loadAppManagerAdv writeStringToFileDir error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/s;->aVR:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-static {v0}, Lcom/miui/appmanager/AppManagerMainActivity;->bof(Lcom/miui/appmanager/AppManagerMainActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/miui/appmanager/s;->aVR:Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object v1, p0, Lcom/miui/appmanager/s;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManagerMainActivity;->boP(Lcom/miui/appmanager/AppManagerMainActivity;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/appmanager/s;->bph(Ljava/util/List;)V

    return-void
.end method
