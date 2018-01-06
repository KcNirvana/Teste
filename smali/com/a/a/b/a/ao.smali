.class final Lcom/a/a/b/a/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/ak;


# instance fields
.field final synthetic a:Lcom/a/a/c/a;

.field final synthetic b:Lcom/a/a/ai;


# direct methods
.method constructor <init>(Lcom/a/a/c/a;Lcom/a/a/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/b/a/ao;->a:Lcom/a/a/c/a;

    iput-object p2, p0, Lcom/a/a/b/a/ao;->b:Lcom/a/a/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/a/a/k;Lcom/a/a/c/a;)Lcom/a/a/ai;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/k;",
            "Lcom/a/a/c/a",
            "<TT;>;)",
            "Lcom/a/a/ai",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/b/a/ao;->a:Lcom/a/a/c/a;

    invoke-virtual {p2, v0}, Lcom/a/a/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/a/ao;->b:Lcom/a/a/ai;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
