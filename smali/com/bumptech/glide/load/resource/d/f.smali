.class Lcom/bumptech/glide/load/resource/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/d/f$1;,
        Lcom/bumptech/glide/load/resource/d/f$d;,
        Lcom/bumptech/glide/load/resource/d/f$a;,
        Lcom/bumptech/glide/load/resource/d/f$c;,
        Lcom/bumptech/glide/load/resource/d/f$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/d/f$b;

.field private final b:Lcom/bumptech/glide/b/a;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Lcom/bumptech/glide/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e",
            "<",
            "Lcom/bumptech/glide/b/a;",
            "Lcom/bumptech/glide/b/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/bumptech/glide/load/resource/d/f$a;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/resource/d/f$b;Lcom/bumptech/glide/b/a;II)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/bumptech/glide/j;->a(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/j;->a()Lcom/bumptech/glide/load/b/a/c;

    move-result-object v1

    invoke-static {p1, p3, p4, p5, v1}, Lcom/bumptech/glide/load/resource/d/f;->a(Landroid/content/Context;Lcom/bumptech/glide/b/a;IILcom/bumptech/glide/load/b/a/c;)Lcom/bumptech/glide/e;

    move-result-object v1

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/bumptech/glide/load/resource/d/f;-><init>(Lcom/bumptech/glide/load/resource/d/f$b;Lcom/bumptech/glide/b/a;Landroid/os/Handler;Lcom/bumptech/glide/e;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/d/f$b;Lcom/bumptech/glide/b/a;Landroid/os/Handler;Lcom/bumptech/glide/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/d/f$b;",
            "Lcom/bumptech/glide/b/a;",
            "Landroid/os/Handler;",
            "Lcom/bumptech/glide/e",
            "<",
            "Lcom/bumptech/glide/b/a;",
            "Lcom/bumptech/glide/b/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/f;->d:Z

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/f;->e:Z

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/resource/d/f$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bumptech/glide/load/resource/d/f$c;-><init>(Lcom/bumptech/glide/load/resource/d/f;Lcom/bumptech/glide/load/resource/d/f$1;)V

    invoke-direct {p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/f;->a:Lcom/bumptech/glide/load/resource/d/f$b;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/f;->b:Lcom/bumptech/glide/b/a;

    iput-object p3, p0, Lcom/bumptech/glide/load/resource/d/f;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/bumptech/glide/load/resource/d/f;->f:Lcom/bumptech/glide/e;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/bumptech/glide/b/a;IILcom/bumptech/glide/load/b/a/c;)Lcom/bumptech/glide/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/b/a;",
            "II",
            "Lcom/bumptech/glide/load/b/a/c;",
            ")",
            "Lcom/bumptech/glide/e",
            "<",
            "Lcom/bumptech/glide/b/a;",
            "Lcom/bumptech/glide/b/a;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/d/h;

    invoke-direct {v0, p4}, Lcom/bumptech/glide/load/resource/d/h;-><init>(Lcom/bumptech/glide/load/b/a/c;)V

    new-instance v1, Lcom/bumptech/glide/load/resource/d/g;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/d/g;-><init>()V

    invoke-static {}, Lcom/bumptech/glide/load/resource/a;->b()Lcom/bumptech/glide/load/b;

    move-result-object v2

    invoke-static {p0}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v3

    const-class v4, Lcom/bumptech/glide/b/a;

    invoke-virtual {v3, v1, v4}, Lcom/bumptech/glide/m;->a(Lcom/bumptech/glide/load/c/o;Ljava/lang/Class;)Lcom/bumptech/glide/m$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/m$b;->a(Ljava/lang/Object;)Lcom/bumptech/glide/m$b$a;

    move-result-object v1

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/m$b$a;->a(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/e;->d(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b(Z)Lcom/bumptech/glide/e;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/b/b;->b:Lcom/bumptech/glide/load/b/b;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/e;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/e;->b(II)Lcom/bumptech/glide/e;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 5

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/f;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/f;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/f;->e:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->b:Lcom/bumptech/glide/b/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/b/a;->a()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/f;->b:Lcom/bumptech/glide/b/a;

    invoke-virtual {v2}, Lcom/bumptech/glide/b/a;->b()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    new-instance v2, Lcom/bumptech/glide/load/resource/d/f$a;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/d/f;->c:Landroid/os/Handler;

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/d/f;->b:Lcom/bumptech/glide/b/a;

    invoke-virtual {v4}, Lcom/bumptech/glide/b/a;->d()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/bumptech/glide/load/resource/d/f$a;-><init>(Landroid/os/Handler;IJ)V

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->f:Lcom/bumptech/glide/e;

    new-instance v1, Lcom/bumptech/glide/load/resource/d/f$d;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/d/f$d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/g/b/j;)Lcom/bumptech/glide/g/b/j;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/f;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/f;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/f;->h:Z

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/f;->e()V

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Transformation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->f:Lcom/bumptech/glide/e;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bumptech/glide/load/g;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->b([Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->f:Lcom/bumptech/glide/e;

    return-void
.end method

.method a(Lcom/bumptech/glide/load/resource/d/f$a;)V
    .locals 4

    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/f;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->g:Lcom/bumptech/glide/load/resource/d/f$a;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/f;->g:Lcom/bumptech/glide/load/resource/d/f$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/f;->a:Lcom/bumptech/glide/load/resource/d/f$b;

    invoke-static {p1}, Lcom/bumptech/glide/load/resource/d/f$a;->a(Lcom/bumptech/glide/load/resource/d/f$a;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bumptech/glide/load/resource/d/f$b;->b(I)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/f;->c:Landroid/os/Handler;

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/f;->e:Z

    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/f;->e()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/f;->d:Z

    return-void
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/f;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->g:Lcom/bumptech/glide/load/resource/d/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->g:Lcom/bumptech/glide/load/resource/d/f$a;

    invoke-static {v0}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/g/b/j;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->g:Lcom/bumptech/glide/load/resource/d/f$a;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/f;->h:Z

    return-void
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->g:Lcom/bumptech/glide/load/resource/d/f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/f;->g:Lcom/bumptech/glide/load/resource/d/f$a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/f$a;->b_()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
