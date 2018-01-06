.class Lcom/bumptech/glide/m$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/m;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/m;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/m$c;->a:Lcom/bumptech/glide/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "X:",
            "Lcom/bumptech/glide/e",
            "<TA;***>;>(TX;)TX;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/m$c;->a:Lcom/bumptech/glide/m;

    invoke-static {v0}, Lcom/bumptech/glide/m;->f(Lcom/bumptech/glide/m;)Lcom/bumptech/glide/m$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/m$c;->a:Lcom/bumptech/glide/m;

    invoke-static {v0}, Lcom/bumptech/glide/m;->f(Lcom/bumptech/glide/m;)Lcom/bumptech/glide/m$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bumptech/glide/m$a;->a(Lcom/bumptech/glide/e;)V

    :cond_0
    return-object p1
.end method
