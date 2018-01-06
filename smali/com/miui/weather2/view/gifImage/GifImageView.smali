.class public Lcom/miui/weather2/view/gifImage/GifImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/view/gifImage/GifImageView$a;,
        Lcom/miui/weather2/view/gifImage/GifImageView$b;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/weather2/view/gifImage/a;

.field private b:Landroid/graphics/Bitmap;

.field private final c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Thread;

.field private h:Lcom/miui/weather2/view/gifImage/GifImageView$b;

.field private i:J

.field private j:Lcom/miui/weather2/view/gifImage/GifImageView$a;

.field private final k:Ljava/lang/Runnable;

.field private final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->c:Landroid/os/Handler;

    iput-object v2, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->h:Lcom/miui/weather2/view/gifImage/GifImageView$b;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->i:J

    iput-object v2, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->j:Lcom/miui/weather2/view/gifImage/GifImageView$a;

    new-instance v0, Lcom/miui/weather2/view/gifImage/e;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/gifImage/e;-><init>(Lcom/miui/weather2/view/gifImage/GifImageView;)V

    iput-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/weather2/view/gifImage/f;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/gifImage/f;-><init>(Lcom/miui/weather2/view/gifImage/GifImageView;)V

    iput-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->l:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->c:Landroid/os/Handler;

    iput-object v2, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->h:Lcom/miui/weather2/view/gifImage/GifImageView$b;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->i:J

    iput-object v2, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->j:Lcom/miui/weather2/view/gifImage/GifImageView$a;

    new-instance v0, Lcom/miui/weather2/view/gifImage/e;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/gifImage/e;-><init>(Lcom/miui/weather2/view/gifImage/GifImageView;)V

    iput-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/weather2/view/gifImage/f;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/gifImage/f;-><init>(Lcom/miui/weather2/view/gifImage/GifImageView;)V

    iput-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->l:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/view/gifImage/GifImageView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/weather2/view/gifImage/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/weather2/view/gifImage/GifImageView;Lcom/miui/weather2/view/gifImage/a;)Lcom/miui/weather2/view/gifImage/a;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->a:Lcom/miui/weather2/view/gifImage/a;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/weather2/view/gifImage/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->g:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/miui/weather2/view/gifImage/GifImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->f:Z

    return p1
.end method

.method private d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->a:Lcom/miui/weather2/view/gifImage/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->g:Ljava/lang/Thread;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/weather2/view/gifImage/GifImageView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->d:Z

    invoke-direct {p0}, Lcom/miui/weather2/view/gifImage/GifImageView;->e()V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->a:Lcom/miui/weather2/view/gifImage/a;

    invoke-virtual {v0}, Lcom/miui/weather2/view/gifImage/a;->f()I

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->a:Lcom/miui/weather2/view/gifImage/a;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/gifImage/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->e:Z

    invoke-direct {p0}, Lcom/miui/weather2/view/gifImage/GifImageView;->e()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->d:Z

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->g:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->d:Z

    iput-boolean v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->f:Z

    invoke-virtual {p0}, Lcom/miui/weather2/view/gifImage/GifImageView;->b()V

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getFramesDisplayDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->i:J

    return-wide v0
.end method

.method public getGifHeight()I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->a:Lcom/miui/weather2/view/gifImage/a;

    invoke-virtual {v0}, Lcom/miui/weather2/view/gifImage/a;->b()I

    move-result v0

    return v0
.end method

.method public getGifWidth()I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->a:Lcom/miui/weather2/view/gifImage/a;

    invoke-virtual {v0}, Lcom/miui/weather2/view/gifImage/a;->a()I

    move-result v0

    return v0
.end method

.method public getOnAnimationStop()Lcom/miui/weather2/view/gifImage/GifImageView$a;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->j:Lcom/miui/weather2/view/gifImage/GifImageView$a;

    return-object v0
.end method

.method public getOnFrameAvailable()Lcom/miui/weather2/view/gifImage/GifImageView$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->h:Lcom/miui/weather2/view/gifImage/GifImageView$b;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/gifImage/GifImageView;->c()V

    return-void
.end method

.method public run()V
    .locals 9

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->d:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->e:Z

    if-nez v0, :cond_3

    :goto_0
    iget-boolean v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->j:Lcom/miui/weather2/view/gifImage/GifImageView$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->j:Lcom/miui/weather2/view/gifImage/GifImageView$a;

    invoke-interface {v0}, Lcom/miui/weather2/view/gifImage/GifImageView$a;->a()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->a:Lcom/miui/weather2/view/gifImage/a;

    invoke-virtual {v0}, Lcom/miui/weather2/view/gifImage/a;->c()Z

    move-result v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->a:Lcom/miui/weather2/view/gifImage/a;

    invoke-virtual {v2}, Lcom/miui/weather2/view/gifImage/a;->h()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->h:Lcom/miui/weather2/view/gifImage/GifImageView$b;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->h:Lcom/miui/weather2/view/gifImage/GifImageView$b;

    iget-object v6, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->b:Landroid/graphics/Bitmap;

    invoke-interface {v2, v6}, Lcom/miui/weather2/view/gifImage/GifImageView$b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->b:Landroid/graphics/Bitmap;

    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v0, v6, v0

    const-wide/32 v6, 0xf4240

    div-long/2addr v0, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->c:Landroid/os/Handler;

    iget-object v6, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->k:Ljava/lang/Runnable;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    iput-boolean v8, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->e:Z

    iget-boolean v2, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->d:Z

    if-eqz v2, :cond_5

    if-nez v3, :cond_6

    :cond_5
    iput-boolean v8, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->d:Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    move-wide v0, v4

    :goto_2
    const-string v6, "Wth2:GifDecoderView"

    const-string v7, "run()"

    invoke-static {v6, v7, v2}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->a:Lcom/miui/weather2/view/gifImage/a;

    invoke-virtual {v2}, Lcom/miui/weather2/view/gifImage/a;->d()I

    move-result v2

    int-to-long v2, v2

    sub-long v0, v2, v0

    long-to-int v0, v0

    if-lez v0, :cond_7

    iget-wide v2, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->i:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_8

    iget-wide v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->i:J

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    :goto_4
    iget-boolean v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_8
    int-to-long v0, v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public setBytes([B)V
    .locals 3

    new-instance v0, Lcom/miui/weather2/view/gifImage/a;

    invoke-direct {v0}, Lcom/miui/weather2/view/gifImage/a;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->a:Lcom/miui/weather2/view/gifImage/a;

    :try_start_0
    iget-object v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->a:Lcom/miui/weather2/view/gifImage/a;

    invoke-virtual {v0, p1}, Lcom/miui/weather2/view/gifImage/a;->a([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v0, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/view/gifImage/GifImageView;->e()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->a:Lcom/miui/weather2/view/gifImage/a;

    const-string v1, "Wth2:GifDecoderView"

    const-string v2, "setBytes()"

    invoke-static {v1, v2, v0}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/gifImage/GifImageView;->a(I)V

    goto :goto_0
.end method

.method public setFramesDisplayDuration(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->i:J

    return-void
.end method

.method public setOnAnimationStop(Lcom/miui/weather2/view/gifImage/GifImageView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->j:Lcom/miui/weather2/view/gifImage/GifImageView$a;

    return-void
.end method

.method public setOnFrameAvailable(Lcom/miui/weather2/view/gifImage/GifImageView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/gifImage/GifImageView;->h:Lcom/miui/weather2/view/gifImage/GifImageView$b;

    return-void
.end method
