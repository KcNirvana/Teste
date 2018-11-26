.class final Lcom/miui/gamebooster/ui/aj;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic dI:Lcom/miui/gamebooster/ui/c;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/aj;->dI:Lcom/miui/gamebooster/ui/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private em(Lcom/miui/gamebooster/model/XunyouDataModel;)V
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/XunyouDataModel;->mI()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/b;->mD()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/b;->mE()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, v4}, Lcom/miui/gamebooster/a/r;->gr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/b;->mB()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, v6}, Lcom/miui/gamebooster/a/r;->gr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v3, v8, v4

    if-lez v3, :cond_2

    cmp-long v3, v8, v6

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/miui/gamebooster/ui/aj;->dI:Lcom/miui/gamebooster/ui/c;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/c;->bt(Lcom/miui/gamebooster/ui/c;)Lcom/miui/gamebooster/ui/MainTopContentFrame;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/b;->mA()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/gamebooster/ui/MainTopContentFrame;->V(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/gamebooster/ui/aj;->dI:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/b;->mA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/gamebooster/ui/c;->bB(Lcom/miui/gamebooster/ui/c;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/miui/gamebooster/model/b;->mD()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const-string/jumbo v3, "gb_notification_business_period"

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/b;->mC()I

    move-result v0

    invoke-static {v3, v0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aj;->dI:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dk()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Lcom/miui/gamebooster/service/IGameBooster;->om()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/c;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RemoteException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcom/miui/gamebooster/model/XunyouDataModel;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/aj;->dI:Lcom/miui/gamebooster/ui/c;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/b;->adS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    return-object v1

    :cond_1
    :try_start_1
    const-string/jumbo v0, "gamebooster"

    const-string/jumbo v2, "gbxunyoubusiness"

    iget-object v3, p0, Lcom/miui/gamebooster/ui/aj;->dI:Lcom/miui/gamebooster/ui/c;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/miui/gamebooster/a/m;->fR(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/gamebooster/model/XunyouDataModel;->mH(Lorg/json/JSONObject;)Lcom/miui/gamebooster/model/XunyouDataModel;

    move-result-object v1

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/miui/gamebooster/model/XunyouDataModel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/aj;->publishProgress([Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/aj;->dI:Lcom/miui/gamebooster/ui/c;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/gamebooster/model/XunyouDataModel;->mJ(Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/gamebooster/model/XunyouDataModel;->mH(Lorg/json/JSONObject;)Lcom/miui/gamebooster/model/XunyouDataModel;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "gamebooster"

    const-string/jumbo v2, "gbxunyoubusiness"

    const-string/jumbo v3, ""

    iget-object v4, p0, Lcom/miui/gamebooster/ui/aj;->dI:Lcom/miui/gamebooster/ui/c;

    invoke-static {v4}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/miui/gamebooster/a/m;->fT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    return-object v1

    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lcom/miui/gamebooster/model/XunyouDataModel;->mI()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "gamebooster"

    const-string/jumbo v4, "gbxunyoubusiness"

    iget-object v5, p0, Lcom/miui/gamebooster/ui/aj;->dI:Lcom/miui/gamebooster/ui/c;

    invoke-static {v5}, Lcom/miui/gamebooster/ui/c;->bd(Lcom/miui/gamebooster/ui/c;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Lcom/miui/gamebooster/a/m;->fT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/miui/gamebooster/ui/c;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "msg"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/aj;->doInBackground([Ljava/lang/Object;)Lcom/miui/gamebooster/model/XunyouDataModel;

    move-result-object v0

    return-object v0
.end method

.method protected en(Lcom/miui/gamebooster/model/XunyouDataModel;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/aj;->em(Lcom/miui/gamebooster/model/XunyouDataModel;)V

    return-void
.end method

.method protected varargs eo([Lcom/miui/gamebooster/model/XunyouDataModel;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/aj;->em(Lcom/miui/gamebooster/model/XunyouDataModel;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/model/XunyouDataModel;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/aj;->en(Lcom/miui/gamebooster/model/XunyouDataModel;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/miui/gamebooster/model/XunyouDataModel;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/aj;->eo([Lcom/miui/gamebooster/model/XunyouDataModel;)V

    return-void
.end method
