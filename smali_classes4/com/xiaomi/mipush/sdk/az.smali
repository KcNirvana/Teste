.class Lcom/xiaomi/mipush/sdk/az;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/ay;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/ay;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-class v1, Lcom/xiaomi/mipush/sdk/ao;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/ao;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaomi/mipush/sdk/ao;->a(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_7

    sget-object v2, Lcom/xiaomi/mipush/sdk/bd;->a:Lcom/xiaomi/mipush/sdk/bd;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/bd;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, p1, :cond_1

    const-string v2, "syncing"

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/mipush/sdk/bd;->a:Lcom/xiaomi/mipush/sdk/bd;

    invoke-virtual {v5, v6}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/bd;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    sget-object v2, Lcom/xiaomi/mipush/sdk/bd;->a:Lcom/xiaomi/mipush/sdk/bd;

    :goto_0
    invoke-static {p1, v0, v2, v4, v3}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/bd;ZLjava/util/HashMap;)V

    goto/16 :goto_2

    :cond_1
    sget-object v2, Lcom/xiaomi/mipush/sdk/bd;->b:Lcom/xiaomi/mipush/sdk/bd;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/bd;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_2

    const-string v2, "syncing"

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/mipush/sdk/bd;->b:Lcom/xiaomi/mipush/sdk/bd;

    invoke-virtual {v5, v6}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/bd;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    sget-object v2, Lcom/xiaomi/mipush/sdk/bd;->b:Lcom/xiaomi/mipush/sdk/bd;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/xiaomi/mipush/sdk/bd;->c:Lcom/xiaomi/mipush/sdk/bd;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/bd;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, p1, :cond_3

    const-string v2, "syncing"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/bd;->c:Lcom/xiaomi/mipush/sdk/bd;

    invoke-virtual {v4, v5}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/bd;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    sget-object v2, Lcom/xiaomi/mipush/sdk/bd;->c:Lcom/xiaomi/mipush/sdk/bd;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/f;->a:Lcom/xiaomi/mipush/sdk/f;

    invoke-static {v4, v5}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/f;)Ljava/util/HashMap;

    move-result-object v4

    :goto_1
    invoke-static {p1, v0, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/bd;ZLjava/util/HashMap;)V

    goto/16 :goto_2

    :cond_3
    sget-object v2, Lcom/xiaomi/mipush/sdk/bd;->d:Lcom/xiaomi/mipush/sdk/bd;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/bd;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_4

    const-string v2, "syncing"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/bd;->d:Lcom/xiaomi/mipush/sdk/bd;

    invoke-virtual {v4, v5}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/bd;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    sget-object v2, Lcom/xiaomi/mipush/sdk/bd;->d:Lcom/xiaomi/mipush/sdk/bd;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/f;->b:Lcom/xiaomi/mipush/sdk/f;

    invoke-static {v4, v5}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/f;)Ljava/util/HashMap;

    move-result-object v4

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/xiaomi/mipush/sdk/bd;->e:Lcom/xiaomi/mipush/sdk/bd;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/bd;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_5

    const-string v2, "syncing"

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/bd;->e:Lcom/xiaomi/mipush/sdk/bd;

    invoke-virtual {v4, v5}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/bd;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    sget-object v2, Lcom/xiaomi/mipush/sdk/bd;->e:Lcom/xiaomi/mipush/sdk/bd;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/f;->c:Lcom/xiaomi/mipush/sdk/f;

    invoke-static {v4, v5}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/f;)Ljava/util/HashMap;

    move-result-object v4

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/xiaomi/mipush/sdk/bd;->f:Lcom/xiaomi/mipush/sdk/bd;

    invoke-virtual {v2}, Lcom/xiaomi/mipush/sdk/bd;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_6

    const-string p1, "syncing"

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v2

    sget-object v4, Lcom/xiaomi/mipush/sdk/bd;->f:Lcom/xiaomi/mipush/sdk/bd;

    invoke-virtual {v2, v4}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/mipush/sdk/bd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    sget-object v2, Lcom/xiaomi/mipush/sdk/bd;->f:Lcom/xiaomi/mipush/sdk/bd;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    invoke-static {v4}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/mipush/sdk/f;->d:Lcom/xiaomi/mipush/sdk/f;

    invoke-static {v4, v5}, Lcom/xiaomi/mipush/sdk/j;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/f;)Ljava/util/HashMap;

    move-result-object v4

    goto/16 :goto_1

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/mipush/sdk/ao;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/az;->a:Lcom/xiaomi/mipush/sdk/ay;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/ay;->a(Lcom/xiaomi/mipush/sdk/ay;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/mipush/sdk/ao;->c(Ljava/lang/String;)V

    :cond_8
    :goto_3
    monitor-exit v1

    :goto_4
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
