.class Lcom/bumptech/glide/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bumptech/glide/g/e;

.field final synthetic b:Lcom/bumptech/glide/e;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/e;Lcom/bumptech/glide/g/e;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/e;

    iput-object p2, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/g/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/e;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/e;

    iget-object v1, p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/g/e;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/g/b/j;)Lcom/bumptech/glide/g/b/j;

    :cond_0
    return-void
.end method
