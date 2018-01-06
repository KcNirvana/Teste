.class Lcom/a/a/b/v;
.super Lcom/a/a/b/t$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/b/t",
        "<TK;TV;>.c<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/t$a;


# direct methods
.method constructor <init>(Lcom/a/a/b/t$a;)V
    .locals 2

    iput-object p1, p0, Lcom/a/a/b/v;->a:Lcom/a/a/b/t$a;

    iget-object v0, p1, Lcom/a/a/b/t$a;->a:Lcom/a/a/b/t;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/a/a/b/t$c;-><init>(Lcom/a/a/b/t;Lcom/a/a/b/u;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/a/a/b/v;->b()Lcom/a/a/b/t$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/b/v;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
