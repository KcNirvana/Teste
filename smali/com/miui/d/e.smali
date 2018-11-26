.class Lcom/miui/d/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bdN:Lcom/miui/d/d;

.field private mTagId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/miui/d/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/d/e;->bdN:Lcom/miui/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/d/e;->mTagId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/d/d;Ljava/lang/String;Lcom/miui/d/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/d/e;-><init>(Lcom/miui/d/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x1

    const-string/jumbo v0, "RemoteUnifiedAdService"

    const-string/jumbo v2, "start getting skin info from ad sdk."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/miui/d/e;->mTagId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemoteUnifiedAdService"

    const-string/jumbo v1, "tag id is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/d/e;->bdN:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBp(Lcom/miui/d/d;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/miui/d/e;->bdN:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBv(Lcom/miui/d/d;)V

    iget-object v0, p0, Lcom/miui/d/e;->bdN:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBt(Lcom/miui/d/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/d/e;->bdN:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBp(Lcom/miui/d/d;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    :cond_1
    iget-object v0, p0, Lcom/miui/d/e;->bdN:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBt(Lcom/miui/d/d;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/miui/d/e;->bdN:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBq(Lcom/miui/d/d;)Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/d/e;->mTagId:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/d/e;->bdN:Lcom/miui/d/d;

    invoke-static {v4}, Lcom/miui/d/d;->bBo(Lcom/miui/d/d;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/miui/systemAdSolution/changeSkin/IChangeSkinService;->getSkinInfoByTagId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "RemoteUnifiedAdService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Result is null:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    :try_start_4
    monitor-exit v2

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    monitor-exit v2

    invoke-static {v3}, Lcom/miui/d/d;->bBu(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/d/e;->bdN:Lcom/miui/d/d;

    invoke-static {v0}, Lcom/miui/d/d;->bBn(Lcom/miui/d/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/d/e;->mTagId:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/d/f;

    if-eqz v0, :cond_6

    invoke-interface {v0, v2}, Lcom/miui/d/f;->bzn(Ljava/util/List;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_5

    const-string/jumbo v0, "skin_description"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skinAdDescription_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/d/e;->mTagId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/d/e;->bdN:Lcom/miui/d/d;

    invoke-static {v2}, Lcom/miui/d/d;->bBo(Lcom/miui/d/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lcom/miui/c/f;->bzy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_5
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RemoteUnifiedAdService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "could not do track. thread is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method
