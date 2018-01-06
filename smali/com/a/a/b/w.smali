.class Lcom/a/a/b/w;
.super Lcom/a/a/b/t$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/t",
        "<TK;TV;>.c<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/t$b;


# direct methods
.method constructor <init>(Lcom/a/a/b/t$b;)V
    .locals 2

    iput-object p1, p0, Lcom/a/a/b/w;->a:Lcom/a/a/b/t$b;

    iget-object v0, p1, Lcom/a/a/b/t$b;->a:Lcom/a/a/b/t;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/a/a/b/t$c;-><init>(Lcom/a/a/b/t;Lcom/a/a/b/u;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/a/a/b/w;->b()Lcom/a/a/b/t$d;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/b/t$d;->f:Ljava/lang/Object;

    return-object v0
.end method
