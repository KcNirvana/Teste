.class Lcom/a/a/b/t$b;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/t;


# direct methods
.method constructor <init>(Lcom/a/a/b/t;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/b/t$b;->a:Lcom/a/a/b/t;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/b/t$b;->a:Lcom/a/a/b/t;

    invoke-virtual {v0}, Lcom/a/a/b/t;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/b/t$b;->a:Lcom/a/a/b/t;

    invoke-virtual {v0, p1}, Lcom/a/a/b/t;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/a/a/b/w;

    invoke-direct {v0, p0}, Lcom/a/a/b/w;-><init>(Lcom/a/a/b/t$b;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/a/a/b/t$b;->a:Lcom/a/a/b/t;

    invoke-virtual {v0, p1}, Lcom/a/a/b/t;->b(Ljava/lang/Object;)Lcom/a/a/b/t$d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/b/t$b;->a:Lcom/a/a/b/t;

    iget v0, v0, Lcom/a/a/b/t;->c:I

    return v0
.end method
