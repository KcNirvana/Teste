.class public Lcom/miui/common/customview/gif/GifImageView;
.super Landroid/widget/ImageView;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private awY:Z

.field private awZ:Ljava/lang/Thread;

.field private final axa:Ljava/lang/Runnable;

.field private axb:Lcom/miui/common/customview/gif/a;

.field private axc:J

.field private axd:Lcom/miui/common/customview/gif/e;

.field private axe:I

.field private axf:I

.field private axg:Z

.field private axh:Landroid/graphics/Bitmap;

.field private final axi:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axb:Lcom/miui/common/customview/gif/a;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axc:J

    new-instance v0, Lcom/miui/common/customview/gif/h;

    invoke-direct {v0, p0}, Lcom/miui/common/customview/gif/h;-><init>(Lcom/miui/common/customview/gif/GifImageView;)V

    iput-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axi:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/common/customview/gif/i;

    invoke-direct {v0, p0}, Lcom/miui/common/customview/gif/i;-><init>(Lcom/miui/common/customview/gif/GifImageView;)V

    iput-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axa:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axb:Lcom/miui/common/customview/gif/a;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axc:J

    new-instance v0, Lcom/miui/common/customview/gif/h;

    invoke-direct {v0, p0}, Lcom/miui/common/customview/gif/h;-><init>(Lcom/miui/common/customview/gif/GifImageView;)V

    iput-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axi:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/common/customview/gif/i;

    invoke-direct {v0, p0}, Lcom/miui/common/customview/gif/i;-><init>(Lcom/miui/common/customview/gif/GifImageView;)V

    iput-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axa:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic aEG(Lcom/miui/common/customview/gif/GifImageView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/customview/gif/GifImageView;->awY:Z

    return v0
.end method

.method static synthetic aEH(Lcom/miui/common/customview/gif/GifImageView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axh:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic aEI(Lcom/miui/common/customview/gif/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/gif/GifImageView;->awZ:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic aEJ(Lcom/miui/common/customview/gif/GifImageView;Lcom/miui/common/customview/gif/e;)Lcom/miui/common/customview/gif/e;
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    return-object p1
.end method

.method static synthetic aEK(Lcom/miui/common/customview/gif/GifImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/gif/GifImageView;->axg:Z

    return p1
.end method

.method static synthetic aEL(Lcom/miui/common/customview/gif/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/gif/GifImageView;->axh:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private aEy(Ljava/io/InputStream;)[B
    .locals 6

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x800

    :try_start_1
    new-array v2, v2, [B

    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_1
    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_2
    return-object v1

    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    if-eqz p1, :cond_3

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_4
    :goto_3
    return-object v1

    :cond_5
    if-eqz p1, :cond_1

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz p1, :cond_6

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_7
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method private canStart()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/common/customview/gif/GifImageView;->awY:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/customview/gif/GifImageView;->awZ:Ljava/lang/Thread;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public aEA()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    invoke-virtual {v0}, Lcom/miui/common/customview/gif/e;->aFh()I

    move-result v0

    return v0
.end method

.method public aEB()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    invoke-virtual {v0}, Lcom/miui/common/customview/gif/e;->aFg()I

    move-result v0

    return v0
.end method

.method public aEC([B)V
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lcom/miui/common/customview/gif/e;

    invoke-direct {v0}, Lcom/miui/common/customview/gif/e;-><init>()V

    iput-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    :try_start_0
    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    invoke-virtual {v0, p1}, Lcom/miui/common/customview/gif/e;->read([B)I

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    invoke-virtual {v0}, Lcom/miui/common/customview/gif/e;->aFe()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/miui/common/customview/gif/GifImageView;->canStart()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->awZ:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->awZ:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    iput-object v1, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    const-string/jumbo v1, "GifDecoderView"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public aED(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/customview/gif/GifImageView;->axe:I

    return-void
.end method

.method public aEE(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/customview/gif/GifImageView;->aEy(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/gif/GifImageView;->aEC([B)V

    return-void
.end method

.method public aEF()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/common/customview/gif/GifImageView;->awY:Z

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->awZ:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->awZ:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v1, p0, Lcom/miui/common/customview/gif/GifImageView;->awZ:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public aEx()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/common/customview/gif/GifImageView;->awY:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axg:Z

    invoke-virtual {p0}, Lcom/miui/common/customview/gif/GifImageView;->aEF()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/gif/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/common/customview/gif/GifImageView;->axa:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public aEz()Landroid/graphics/Bitmap;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    invoke-virtual {v0}, Lcom/miui/common/customview/gif/e;->aFf()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/common/customview/gif/GifImageView;->awY:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axg:Z

    invoke-virtual {p0}, Lcom/miui/common/customview/gif/GifImageView;->aEF()V

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/common/customview/gif/GifImageView;->axa:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 9

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/common/customview/gif/GifImageView;->axa:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    invoke-virtual {v0}, Lcom/miui/common/customview/gif/e;->aFi()I

    move-result v8

    :cond_2
    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_3

    iget-boolean v0, p0, Lcom/miui/common/customview/gif/GifImageView;->awY:Z

    if-nez v0, :cond_5

    :cond_3
    iget v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axf:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axf:I

    iget-boolean v0, p0, Lcom/miui/common/customview/gif/GifImageView;->awY:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axf:I

    iget v1, p0, Lcom/miui/common/customview/gif/GifImageView;->axe:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axe:I

    if-eqz v0, :cond_2

    :cond_4
    return-void

    :cond_5
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    invoke-virtual {v2}, Lcom/miui/common/customview/gif/e;->aFf()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/common/customview/gif/GifImageView;->axh:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0xf4240

    div-long v2, v0, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axb:Lcom/miui/common/customview/gif/a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axb:Lcom/miui/common/customview/gif/a;

    iget-object v1, p0, Lcom/miui/common/customview/gif/GifImageView;->axh:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/miui/common/customview/gif/a;->aEM(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axh:Landroid/graphics/Bitmap;

    :cond_6
    iget-boolean v0, p0, Lcom/miui/common/customview/gif/GifImageView;->awY:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/common/customview/gif/GifImageView;->axi:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    iget-boolean v0, p0, Lcom/miui/common/customview/gif/GifImageView;->awY:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    invoke-virtual {v0}, Lcom/miui/common/customview/gif/e;->aFe()V

    :try_start_2
    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axd:Lcom/miui/common/customview/gif/e;

    invoke-virtual {v0}, Lcom/miui/common/customview/gif/e;->aFj()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-lez v0, :cond_7

    iget-wide v2, p0, Lcom/miui/common/customview/gif/GifImageView;->axc:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_8

    iget-wide v0, p0, Lcom/miui/common/customview/gif/GifImageView;->axc:J

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v2, v4

    :goto_4
    const-string/jumbo v1, "GifDecoderView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    move-wide v2, v4

    :goto_5
    const-string/jumbo v1, "GifDecoderView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_8
    int-to-long v0, v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4
.end method

.method public startAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/customview/gif/GifImageView;->awY:Z

    invoke-direct {p0}, Lcom/miui/common/customview/gif/GifImageView;->canStart()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->awZ:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/miui/common/customview/gif/GifImageView;->awZ:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
