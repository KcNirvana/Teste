.class Lcom/miui/securityscan/cards/n;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field private Cj:Ljava/lang/ref/WeakReference;

.field private Ck:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/cards/l;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/cards/n;->Cj:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public Dz(Ljava/util/List;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/cards/n;->Ck:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/securityscan/cards/n;->Cj:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/cards/n;->Ck:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/cards/n;->Ck:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/miui/securityscan/cards/n;->Cj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securityscan/cards/l;

    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/miui/securityscan/cards/l;->-get1()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/securitycenter/a;->bse(Landroid/content/Context;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v1, Lcom/miui/securityscan/cards/l;->BH:Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/securitycenter/a;->brW(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/miui/securityscan/cards/l;->BI:J

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/cards/o;

    iget-boolean v3, v1, Lcom/miui/securityscan/cards/l;->BH:Z

    iget-wide v4, v1, Lcom/miui/securityscan/cards/l;->BI:J

    invoke-interface {v0, v3, v4, v5}, Lcom/miui/securityscan/cards/o;->onGarbageChange(ZJ)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/miui/securityscan/cards/l;->-get0()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v3, v1, Lcom/miui/securityscan/cards/l;->BN:Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/cards/o;

    iget-boolean v3, v1, Lcom/miui/securityscan/cards/l;->BN:Z

    invoke-interface {v0, v3}, Lcom/miui/securityscan/cards/o;->onAppManagerChange(Z)V

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/miui/securityscan/cards/l;->BC:Landroid/net/Uri;

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/securityscan/cards/l;->BQ:Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/cards/o;

    iget-boolean v3, v1, Lcom/miui/securityscan/cards/l;->BQ:Z

    invoke-interface {v0, v3}, Lcom/miui/securityscan/cards/o;->onSecurityScanChange(Z)V

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/miui/securityscan/cards/l;->BB:Landroid/net/Uri;

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput-boolean v3, v1, Lcom/miui/securityscan/cards/l;->BQ:Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/cards/o;

    iget-boolean v3, v1, Lcom/miui/securityscan/cards/l;->BQ:Z

    invoke-interface {v0, v3}, Lcom/miui/securityscan/cards/o;->onSecurityScanChange(Z)V

    goto :goto_3

    :cond_7
    return-void
.end method
