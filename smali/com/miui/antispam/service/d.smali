.class final Lcom/miui/antispam/service/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/antispam/service/b;


# instance fields
.field final synthetic aaF:Lcom/miui/antispam/service/AntiSpamService;


# direct methods
.method constructor <init>(Lcom/miui/antispam/service/AntiSpamService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/d;->aaF:Lcom/miui/antispam/service/AntiSpamService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adp(Lcom/miui/antispam/service/a;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/d;->aaF:Lcom/miui/antispam/service/AntiSpamService;

    invoke-static {v0}, Lcom/miui/antispam/service/AntiSpamService;->adt(Lcom/miui/antispam/service/AntiSpamService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/antispam/service/AntiSpamService;->adu(Lcom/miui/antispam/service/AntiSpamService;I)I

    return-void
.end method

.method public adq(Lcom/miui/antispam/service/a;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/service/d;->aaF:Lcom/miui/antispam/service/AntiSpamService;

    invoke-static {v0}, Lcom/miui/antispam/service/AntiSpamService;->ads(Lcom/miui/antispam/service/AntiSpamService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/antispam/service/d;->aaF:Lcom/miui/antispam/service/AntiSpamService;

    invoke-static {v0}, Lcom/miui/antispam/service/AntiSpamService;->adt(Lcom/miui/antispam/service/AntiSpamService;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lcom/miui/antispam/service/AntiSpamService;->adu(Lcom/miui/antispam/service/AntiSpamService;I)I

    iget-object v0, p0, Lcom/miui/antispam/service/d;->aaF:Lcom/miui/antispam/service/AntiSpamService;

    invoke-static {v0}, Lcom/miui/antispam/service/AntiSpamService;->ads(Lcom/miui/antispam/service/AntiSpamService;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antispam/service/a;->acY()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/antispam/service/d;->aaF:Lcom/miui/antispam/service/AntiSpamService;

    invoke-static {v0}, Lcom/miui/antispam/service/AntiSpamService;->adt(Lcom/miui/antispam/service/AntiSpamService;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/d;->aaF:Lcom/miui/antispam/service/AntiSpamService;

    invoke-virtual {v0}, Lcom/miui/antispam/service/AntiSpamService;->stopSelf()V

    invoke-static {}, Lcom/miui/antispam/service/AntiSpamService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "stopSelf"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
