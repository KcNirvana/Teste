.class final Lcom/miui/gamebooster/ui/t;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic cD:Lcom/miui/gamebooster/ui/SelectGameActivity;

.field final synthetic cE:Lcom/miui/gamebooster/model/e;

.field final synthetic cF:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/SelectGameActivity;Lcom/miui/gamebooster/model/e;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/t;->cD:Lcom/miui/gamebooster/ui/SelectGameActivity;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/t;->cE:Lcom/miui/gamebooster/model/e;

    iput-object p3, p0, Lcom/miui/gamebooster/ui/t;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/miui/gamebooster/ui/t;->cF:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/t;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/ui/t;->cE:Lcom/miui/gamebooster/model/e;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/e;->mR()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/t;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/ui/t;->cE:Lcom/miui/gamebooster/model/e;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/e;->mR()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/miui/gamebooster/ui/t;->cD:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/SelectGameActivity;->k(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-boolean v4, p0, Lcom/miui/gamebooster/ui/t;->cF:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/gamebooster/ui/t;->cD:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {v4}, Lcom/miui/gamebooster/ui/SelectGameActivity;->f(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/miui/gamebooster/ui/t;->val$context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v1, v0, v2, v5}, Lcom/miui/gamebooster/a/p;->ga(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    const-string/jumbo v0, "gb_added_games"

    iget-object v1, p0, Lcom/miui/gamebooster/ui/t;->cD:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->f(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/common/persistence/a;->aMI(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/gamebooster/ui/t;->cD:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->f(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/gamebooster/ui/t;->val$context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v0, v2, v4, v5}, Lcom/miui/gamebooster/a/p;->gb(Landroid/content/Context;Ljava/lang/String;IZI)V

    const-string/jumbo v1, "already_added_game"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/miui/gamebooster/a/B;->hX(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/ui/t;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/t;->cD:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/SelectGameActivity;->k(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/t;->cD:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/SelectGameActivity;->g(Lcom/miui/gamebooster/ui/SelectGameActivity;)Lcom/miui/gamebooster/service/IGameBooster;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/t;->cD:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/SelectGameActivity;->g(Lcom/miui/gamebooster/ui/SelectGameActivity;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/ui/t;->cD:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {v2}, Lcom/miui/gamebooster/ui/SelectGameActivity;->f(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/miui/gamebooster/service/IGameBooster;->on(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/miui/gamebooster/ui/SelectGameActivity;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
