.class Lcom/a/a/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/b/x;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/b/x",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/r;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/a/a/b/c;


# direct methods
.method constructor <init>(Lcom/a/a/b/c;Lcom/a/a/r;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/b/h;->c:Lcom/a/a/b/c;

    iput-object p2, p0, Lcom/a/a/b/h;->a:Lcom/a/a/r;

    iput-object p3, p0, Lcom/a/a/b/h;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/b/h;->a:Lcom/a/a/r;

    iget-object v1, p0, Lcom/a/a/b/h;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/a/a/r;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
