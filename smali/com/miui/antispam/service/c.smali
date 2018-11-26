.class public Lcom/miui/antispam/service/c;
.super Landroid/os/Binder;
.source ""


# instance fields
.field final synthetic aaE:Lcom/miui/antispam/service/AntiSpamService;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/service/AntiSpamService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/c;->aaE:Lcom/miui/antispam/service/AntiSpamService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized adv(Ljava/lang/String;)Lcom/miui/antispam/service/a;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/antispam/service/c;->aaE:Lcom/miui/antispam/service/AntiSpamService;

    invoke-static {v0}, Lcom/miui/antispam/service/AntiSpamService;->ads(Lcom/miui/antispam/service/AntiSpamService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/antispam/service/c;->aaE:Lcom/miui/antispam/service/AntiSpamService;

    invoke-static {v0}, Lcom/miui/antispam/service/AntiSpamService;->ads(Lcom/miui/antispam/service/AntiSpamService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/c;->aaE:Lcom/miui/antispam/service/AntiSpamService;

    invoke-static {v0}, Lcom/miui/antispam/service/AntiSpamService;->ads(Lcom/miui/antispam/service/AntiSpamService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_3
    const-string/jumbo v0, "CloudPhoneList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/service/c;->aaE:Lcom/miui/antispam/service/AntiSpamService;

    invoke-static {v0}, Lcom/miui/antispam/service/AntiSpamService;->ads(Lcom/miui/antispam/service/AntiSpamService;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Lcom/miui/antispam/service/a/a;

    iget-object v3, p0, Lcom/miui/antispam/service/c;->aaE:Lcom/miui/antispam/service/AntiSpamService;

    iget-object v4, p0, Lcom/miui/antispam/service/c;->aaE:Lcom/miui/antispam/service/AntiSpamService;

    invoke-static {v4}, Lcom/miui/antispam/service/AntiSpamService;->adr(Lcom/miui/antispam/service/AntiSpamService;)Lcom/miui/antispam/service/b;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/miui/antispam/service/a/a;-><init>(Landroid/content/Context;Lcom/miui/antispam/service/b;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/service/c;->aaE:Lcom/miui/antispam/service/AntiSpamService;

    invoke-static {v0}, Lcom/miui/antispam/service/AntiSpamService;->ads(Lcom/miui/antispam/service/AntiSpamService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized adw(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/antispam/service/c;->aaE:Lcom/miui/antispam/service/AntiSpamService;

    invoke-static {v0}, Lcom/miui/antispam/service/AntiSpamService;->ads(Lcom/miui/antispam/service/AntiSpamService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/antispam/service/c;->aaE:Lcom/miui/antispam/service/AntiSpamService;

    invoke-static {v0}, Lcom/miui/antispam/service/AntiSpamService;->ads(Lcom/miui/antispam/service/AntiSpamService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/c;->aaE:Lcom/miui/antispam/service/AntiSpamService;

    invoke-static {v0}, Lcom/miui/antispam/service/AntiSpamService;->ads(Lcom/miui/antispam/service/AntiSpamService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/service/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/antispam/service/a;->ado(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/c;->aaE:Lcom/miui/antispam/service/AntiSpamService;

    invoke-static {v0}, Lcom/miui/antispam/service/AntiSpamService;->ads(Lcom/miui/antispam/service/AntiSpamService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
