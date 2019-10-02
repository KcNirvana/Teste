.class public Lcom/facebook/ads/internal/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/w/b/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/internal/w/b/r<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/facebook/ads/internal/d/c;

.field private final b:Lcom/facebook/ads/internal/d/c;

.field private final c:Lcom/facebook/ads/internal/d/b;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/d/b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/d/d;->d:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/d/d;->e:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/d/d;->f:Z

    iput-object p1, p0, Lcom/facebook/ads/internal/d/d;->c:Lcom/facebook/ads/internal/d/b;

    new-instance v0, Lcom/facebook/ads/internal/d/c;

    iget-wide v1, p1, Lcom/facebook/ads/internal/d/b;->b:D

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/d/c;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/internal/d/d;->b:Lcom/facebook/ads/internal/d/c;

    new-instance v0, Lcom/facebook/ads/internal/d/c;

    iget-wide v1, p1, Lcom/facebook/ads/internal/d/b;->b:D

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/d/c;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/internal/d/d;->a:Lcom/facebook/ads/internal/d/c;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/d/b;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/d/d;->d:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/d/d;->e:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/d/d;->f:Z

    iput-object p1, p0, Lcom/facebook/ads/internal/d/d;->c:Lcom/facebook/ads/internal/d/b;

    const-string p1, "testStats"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/internal/d/c;

    iput-object p1, p0, Lcom/facebook/ads/internal/d/d;->b:Lcom/facebook/ads/internal/d/c;

    const-string p1, "viewableStats"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/internal/d/c;

    iput-object p1, p0, Lcom/facebook/ads/internal/d/d;->a:Lcom/facebook/ads/internal/d/c;

    const-string p1, "ended"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/d/d;->d:Z

    const-string p1, "passed"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/d/d;->e:Z

    const-string p1, "complete"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/d/d;->f:Z

    return-void
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/d/d;->f:Z

    iput-boolean v0, p0, Lcom/facebook/ads/internal/d/d;->d:Z

    iget-boolean v0, p0, Lcom/facebook/ads/internal/d/d;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/d/d;->a:Lcom/facebook/ads/internal/d/c;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/d/d;->b:Lcom/facebook/ads/internal/d/c;

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/d/d;->c:Lcom/facebook/ads/internal/d/b;

    iget-boolean v2, p0, Lcom/facebook/ads/internal/d/d;->f:Z

    iget-boolean v3, p0, Lcom/facebook/ads/internal/d/d;->e:Z

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/ads/internal/d/b;->a(ZZLcom/facebook/ads/internal/d/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/d/d;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/d/d;->a:Lcom/facebook/ads/internal/d/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/d/c;->b()V

    :cond_0
    return-void
.end method

.method public a(DD)V
    .locals 4

    iget-boolean v0, p0, Lcom/facebook/ads/internal/d/d;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/d/d;->b:Lcom/facebook/ads/internal/d/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/d/c;->a(DD)V

    iget-object v0, p0, Lcom/facebook/ads/internal/d/d;->a:Lcom/facebook/ads/internal/d/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/d/c;->a(DD)V

    iget-object p1, p0, Lcom/facebook/ads/internal/d/d;->c:Lcom/facebook/ads/internal/d/b;

    iget-boolean p1, p1, Lcom/facebook/ads/internal/d/b;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/d/d;->a:Lcom/facebook/ads/internal/d/c;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/d/c;->c()Lcom/facebook/ads/internal/d/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/d/c$a;->h()D

    move-result-wide p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/d/d;->a:Lcom/facebook/ads/internal/d/c;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/d/c;->c()Lcom/facebook/ads/internal/d/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/d/c$a;->g()D

    move-result-wide p1

    :goto_0
    iget-object p3, p0, Lcom/facebook/ads/internal/d/d;->c:Lcom/facebook/ads/internal/d/b;

    iget-wide p3, p3, Lcom/facebook/ads/internal/d/b;->c:D

    const-wide/16 v0, 0x0

    cmpl-double p3, p3, v0

    if-ltz p3, :cond_2

    iget-object p3, p0, Lcom/facebook/ads/internal/d/d;->b:Lcom/facebook/ads/internal/d/c;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/d/c;->c()Lcom/facebook/ads/internal/d/c$a;

    move-result-object p3

    invoke-virtual {p3}, Lcom/facebook/ads/internal/d/c$a;->f()D

    move-result-wide p3

    iget-object v2, p0, Lcom/facebook/ads/internal/d/d;->c:Lcom/facebook/ads/internal/d/b;

    iget-wide v2, v2, Lcom/facebook/ads/internal/d/b;->c:D

    cmpl-double p3, p3, v2

    if-lez p3, :cond_2

    cmpl-double p3, p1, v0

    if-nez p3, :cond_2

    invoke-direct {p0}, Lcom/facebook/ads/internal/d/d;->b()V

    return-void

    :cond_2
    iget-object p3, p0, Lcom/facebook/ads/internal/d/d;->c:Lcom/facebook/ads/internal/d/b;

    iget-wide p3, p3, Lcom/facebook/ads/internal/d/b;->d:D

    cmpl-double p1, p1, p3

    if-ltz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/d/d;->e:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/d/d;->b()V

    :cond_3
    return-void
.end method

.method public g()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "viewableStats"

    iget-object v2, p0, Lcom/facebook/ads/internal/d/d;->a:Lcom/facebook/ads/internal/d/c;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "testStats"

    iget-object v2, p0, Lcom/facebook/ads/internal/d/d;->b:Lcom/facebook/ads/internal/d/c;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "ended"

    iget-boolean v2, p0, Lcom/facebook/ads/internal/d/d;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "passed"

    iget-boolean v2, p0, Lcom/facebook/ads/internal/d/d;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "complete"

    iget-boolean v2, p0, Lcom/facebook/ads/internal/d/d;->f:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
