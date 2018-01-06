.class final Lcom/a/a/b/a/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/ak;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/a/a/k;Lcom/a/a/c/a;)Lcom/a/a/ai;
    .locals 2
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

    invoke-virtual {p2}, Lcom/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/a/a/k;->a(Ljava/lang/Class;)Lcom/a/a/ai;

    move-result-object v1

    new-instance v0, Lcom/a/a/b/a/aj;

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/a/aj;-><init>(Lcom/a/a/b/a/ai;Lcom/a/a/ai;)V

    goto :goto_0
.end method
