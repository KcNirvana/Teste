.class Lcom/a/a/b/q;
.super Lcom/a/a/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/ai",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/a/a/k;

.field final synthetic d:Lcom/a/a/c/a;

.field final synthetic e:Lcom/a/a/b/p;

.field private f:Lcom/a/a/ai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/ai",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/p;ZZLcom/a/a/k;Lcom/a/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/b/q;->e:Lcom/a/a/b/p;

    iput-boolean p2, p0, Lcom/a/a/b/q;->a:Z

    iput-boolean p3, p0, Lcom/a/a/b/q;->b:Z

    iput-object p4, p0, Lcom/a/a/b/q;->c:Lcom/a/a/k;

    iput-object p5, p0, Lcom/a/a/b/q;->d:Lcom/a/a/c/a;

    invoke-direct {p0}, Lcom/a/a/ai;-><init>()V

    return-void
.end method

.method private a()Lcom/a/a/ai;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/ai",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/b/q;->f:Lcom/a/a/ai;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/q;->c:Lcom/a/a/k;

    iget-object v1, p0, Lcom/a/a/b/q;->e:Lcom/a/a/b/p;

    iget-object v2, p0, Lcom/a/a/b/q;->d:Lcom/a/a/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/k;->a(Lcom/a/a/ak;Lcom/a/a/c/a;)Lcom/a/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/q;->f:Lcom/a/a/ai;

    goto :goto_0
.end method


# virtual methods
.method public read(Lcom/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/a/a/b/q;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/a;->n()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/a/a/b/q;->a()Lcom/a/a/ai;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/ai;->read(Lcom/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lcom/a/a/d/d;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/d;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/a/a/b/q;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/d;->f()Lcom/a/a/d/d;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/a/a/b/q;->a()Lcom/a/a/ai;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/a/a/ai;->write(Lcom/a/a/d/d;Ljava/lang/Object;)V

    goto :goto_0
.end method
