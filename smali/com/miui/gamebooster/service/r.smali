.class final Lcom/miui/gamebooster/service/r;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic mQ:Lcom/miui/gamebooster/service/GameBoosterService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->oe(Lcom/miui/gamebooster/service/GameBoosterService;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nw(Lcom/miui/gamebooster/service/GameBoosterService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v1, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->pi()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nw(Lcom/miui/gamebooster/service/GameBoosterService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v1, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->pj()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v1, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->pk()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v1, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->pc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nw(Lcom/miui/gamebooster/service/GameBoosterService;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    iget-object v1, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nF(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/d;->pa(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/d;->pi()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->og(Lcom/miui/gamebooster/service/GameBoosterService;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_toast_booster_success"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->nz(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nK(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nD(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nD(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v2, "gb_added_games"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/miui/gamebooster/a/y;->getInstance()Lcom/miui/gamebooster/a/y;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v2}, Lcom/miui/gamebooster/service/GameBoosterService;->nD(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v3}, Lcom/miui/gamebooster/service/GameBoosterService;->nz(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/gamebooster/a/y;->hG(Ljava/util/List;Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "GameBoosterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "JSONException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_9
    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nK(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nM(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->mQ:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->nM(Lcom/miui/gamebooster/service/GameBoosterService;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v2, "gb_added_videopalyer"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/miui/common/persistence/a;->aMO(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
