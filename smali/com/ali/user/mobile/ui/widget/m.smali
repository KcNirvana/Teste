.class public Lcom/ali/user/mobile/ui/widget/m;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "APRecyclingBitmapDrawable.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method private declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/m;->a:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/ali/user/mobile/ui/widget/m;->b:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/m;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CountingBitmapDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No longer being used or cached so recycling. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/m;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/m;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/m;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/m;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/ui/widget/m;->c:Z

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/ali/user/mobile/ui/widget/m;->a()V

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/ali/user/mobile/ui/widget/m;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ali/user/mobile/ui/widget/m;->b:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
