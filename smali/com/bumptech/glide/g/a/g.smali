.class public Lcom/bumptech/glide/g/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/a/d",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/g/a/f$a;

.field private b:Lcom/bumptech/glide/g/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/a/c",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/g/a/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/g/a/g;->a:Lcom/bumptech/glide/g/a/f$a;

    return-void
.end method


# virtual methods
.method public a(ZZ)Lcom/bumptech/glide/g/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/g/a/c",
            "<TR;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-static {}, Lcom/bumptech/glide/g/a/e;->b()Lcom/bumptech/glide/g/a/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/g/a/g;->b:Lcom/bumptech/glide/g/a/c;

    if-nez v0, :cond_2

    new-instance v0, Lcom/bumptech/glide/g/a/f;

    iget-object v1, p0, Lcom/bumptech/glide/g/a/g;->a:Lcom/bumptech/glide/g/a/f$a;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/g/a/f;-><init>(Lcom/bumptech/glide/g/a/f$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/g/a/g;->b:Lcom/bumptech/glide/g/a/c;

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/g/a/g;->b:Lcom/bumptech/glide/g/a/c;

    goto :goto_0
.end method
