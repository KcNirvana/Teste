.class public final Lcom/a/a/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/ak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b/a/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/b/c;


# direct methods
.method public constructor <init>(Lcom/a/a/b/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/a/c;->a:Lcom/a/a/b/c;

    return-void
.end method


# virtual methods
.method public create(Lcom/a/a/k;Lcom/a/a/c/a;)Lcom/a/a/ai;
    .locals 4
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

    invoke-virtual {p2}, Lcom/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/a/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/a/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/k;->a(Lcom/a/a/c/a;)Lcom/a/a/ai;

    move-result-object v2

    iget-object v0, p0, Lcom/a/a/b/a/c;->a:Lcom/a/a/b/c;

    invoke-virtual {v0, p2}, Lcom/a/a/b/c;->a(Lcom/a/a/c/a;)Lcom/a/a/b/x;

    move-result-object v3

    new-instance v0, Lcom/a/a/b/a/c$a;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/a/a/b/a/c$a;-><init>(Lcom/a/a/k;Ljava/lang/reflect/Type;Lcom/a/a/ai;Lcom/a/a/b/x;)V

    goto :goto_0
.end method
