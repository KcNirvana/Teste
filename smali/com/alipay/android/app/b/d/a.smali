.class public Lcom/alipay/android/app/b/d/a;
.super Ljava/lang/Object;
.source "Trade.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/android/app/b/b/a;

.field private e:Lcom/alipay/android/app/b/c/a;

.field private f:Lcom/alipay/android/app/b/c/a;

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/alipay/android/app/b/b/a;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/alipay/android/app/b/d/a;->g:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/b/d/a;->i:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/b/d/a;->j:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/b/d/a;->k:J

    iput-boolean v3, p0, Lcom/alipay/android/app/b/d/a;->l:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/b/d/a;->m:Z

    iput-boolean v2, p0, Lcom/alipay/android/app/b/d/a;->n:Z

    iput p1, p0, Lcom/alipay/android/app/b/d/a;->a:I

    iput p2, p0, Lcom/alipay/android/app/b/d/a;->b:I

    iput-object p3, p0, Lcom/alipay/android/app/b/d/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/b/d/a;->d:Lcom/alipay/android/app/b/b/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/b/d/a;->k:J

    invoke-static {p3}, Lcom/alipay/android/app/logic/c/a;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "no_loading"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "no_loading"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/b/d/a;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/b/d/a;->h:I

    return-void
.end method

.method public a(Lcom/alipay/android/app/b/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/b/d/a;->e:Lcom/alipay/android/app/b/c/a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/b/d/a;->i:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/b/d/a;->i:Z

    return v0
.end method

.method public b()Lcom/alipay/android/app/l;
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/b/d/a;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/d/b;->a(I)Lcom/alipay/android/app/l;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 3

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/b/d/a;->n:Z

    :cond_0
    return-void
.end method

.method public b(Lcom/alipay/android/app/b/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/b/d/a;->f:Lcom/alipay/android/app/b/c/a;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/b/d/a;->l:Z

    return-void
.end method

.method public c()Lcom/alipay/android/app/h;
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/b/d/a;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/d/b;->f(I)Lcom/alipay/android/app/h;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/b/d/a;->m:Z

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/b/d/a;->a:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/b/d/a;->b:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/b/d/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "Trade.exit"

    const-string/jumbo v3, "Trade-exit"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v1, "type"

    const/16 v2, 0x1fa

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/c;->a()Lcom/alipay/android/app/hardwarepay/c;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/alipay/android/app/hardwarepay/base/n;->a:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/c;->a(Landroid/content/Context;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/b/d/a;->d:Lcom/alipay/android/app/b/b/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/b/d/a;->d:Lcom/alipay/android/app/b/b/a;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/b/d/a;->d:Lcom/alipay/android/app/b/b/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public h()Lcom/alipay/android/app/b/b/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/b/d/a;->d:Lcom/alipay/android/app/b/b/a;

    return-object v0
.end method

.method public i()Lcom/alipay/android/app/b/c/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/b/d/a;->e:Lcom/alipay/android/app/b/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/b/d/a;->e:Lcom/alipay/android/app/b/c/a;

    goto :goto_0
.end method

.method public j()Lcom/alipay/android/app/b/c/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/b/d/a;->f:Lcom/alipay/android/app/b/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/b/d/a;->f:Lcom/alipay/android/app/b/c/a;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/b/d/a;->f:Lcom/alipay/android/app/b/c/a;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/b/d/a;->g:Z

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/b/d/a;->h:I

    return v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/b/d/a;->k:J

    return-wide v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/b/d/a;->l:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/b/d/a;->m:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/b/d/a;->n:Z

    return v0
.end method
