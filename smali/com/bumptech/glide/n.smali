.class Lcom/bumptech/glide/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bumptech/glide/d/h;

.field final synthetic b:Lcom/bumptech/glide/m;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/m;Lcom/bumptech/glide/d/h;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/m;

    iput-object p2, p0, Lcom/bumptech/glide/n;->a:Lcom/bumptech/glide/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/n;->a:Lcom/bumptech/glide/d/h;

    iget-object v1, p0, Lcom/bumptech/glide/n;->b:Lcom/bumptech/glide/m;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/d/h;->a(Lcom/bumptech/glide/d/i;)V

    return-void
.end method
