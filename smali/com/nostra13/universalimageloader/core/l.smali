.class public Lcom/nostra13/universalimageloader/core/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static volatile blj:Lcom/nostra13/universalimageloader/core/l;


# instance fields
.field private blg:Lcom/nostra13/universalimageloader/core/d;

.field private blh:Lcom/nostra13/universalimageloader/core/b/a;

.field private bli:Lcom/nostra13/universalimageloader/core/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nostra13/universalimageloader/core/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nostra13/universalimageloader/core/l;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nostra13/universalimageloader/core/b/c;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/b/c;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->blh:Lcom/nostra13/universalimageloader/core/b/a;

    return-void
.end method

.method private bHB()V
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->blg:Lcom/nostra13/universalimageloader/core/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static bHC(Lcom/nostra13/universalimageloader/core/n;)Landroid/os/Handler;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/n;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/n;->bHM()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/nostra13/universalimageloader/core/l;
    .locals 2

    sget-object v0, Lcom/nostra13/universalimageloader/core/l;->blj:Lcom/nostra13/universalimageloader/core/l;

    if-nez v0, :cond_1

    const-class v1, Lcom/nostra13/universalimageloader/core/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nostra13/universalimageloader/core/l;->blj:Lcom/nostra13/universalimageloader/core/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nostra13/universalimageloader/core/l;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/l;-><init>()V

    sput-object v0, Lcom/nostra13/universalimageloader/core/l;->blj:Lcom/nostra13/universalimageloader/core/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/nostra13/universalimageloader/core/l;->blj:Lcom/nostra13/universalimageloader/core/l;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public bHA()V
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->bli:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/c;->bGG()V

    return-void
.end method

.method public bHD(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V
    .locals 6

    const/4 v4, 0x0

    new-instance v2, Lcom/nostra13/universalimageloader/core/e/c;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/e/c;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/l;->bHF(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/e/d;Lcom/nostra13/universalimageloader/core/n;Lcom/nostra13/universalimageloader/core/b/a;Lcom/nostra13/universalimageloader/core/b/b;)V

    return-void
.end method

.method public bHE(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/e/d;Lcom/nostra13/universalimageloader/core/n;Lcom/nostra13/universalimageloader/core/b/a;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/l;->bHF(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/e/d;Lcom/nostra13/universalimageloader/core/n;Lcom/nostra13/universalimageloader/core/b/a;Lcom/nostra13/universalimageloader/core/b/b;)V

    return-void
.end method

.method public bHF(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/e/d;Lcom/nostra13/universalimageloader/core/n;Lcom/nostra13/universalimageloader/core/b/a;Lcom/nostra13/universalimageloader/core/b/b;)V
    .locals 10

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/l;->bHB()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p4, :cond_a

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/l;->blh:Lcom/nostra13/universalimageloader/core/b/a;

    :goto_0
    if-nez p3, :cond_9

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->blg:Lcom/nostra13/universalimageloader/core/d;

    iget-object v5, v0, Lcom/nostra13/universalimageloader/core/d;->bkn:Lcom/nostra13/universalimageloader/core/n;

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->bli:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v0, p2}, Lcom/nostra13/universalimageloader/core/c;->bGB(Lcom/nostra13/universalimageloader/core/e/d;)V

    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/e/d;->bFR()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0}, Lcom/nostra13/universalimageloader/core/b/a;->bFm(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/n;->bId()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->blg:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->resources:Landroid/content/res/Resources;

    invoke-virtual {v5, v0}, Lcom/nostra13/universalimageloader/core/n;->bIe(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/e/d;->bFU(Landroid/graphics/drawable/Drawable;)Z

    :goto_2
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/e/d;->bFR()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0, v1}, Lcom/nostra13/universalimageloader/core/b/a;->bcn(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    invoke-interface {p2, v1}, Lcom/nostra13/universalimageloader/core/e/d;->bFU(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->blg:Lcom/nostra13/universalimageloader/core/d;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->bGM()Lcom/nostra13/universalimageloader/core/assist/b;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/nostra13/universalimageloader/a/d;->bEe(Lcom/nostra13/universalimageloader/core/e/d;Lcom/nostra13/universalimageloader/core/assist/b;)Lcom/nostra13/universalimageloader/core/assist/b;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/nostra13/universalimageloader/a/f;->bEo(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/b;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->bli:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v0, p2, v4}, Lcom/nostra13/universalimageloader/core/c;->bGF(Lcom/nostra13/universalimageloader/core/e/d;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/e/d;->bFR()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0}, Lcom/nostra13/universalimageloader/core/b/a;->bFm(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->blg:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->bkb:Lcom/nostra13/universalimageloader/b/b/a;

    invoke-interface {v0, v4}, Lcom/nostra13/universalimageloader/b/b/a;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    const-string/jumbo v0, "Load image from memory cache [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/n;->bHQ()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/nostra13/universalimageloader/core/h;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/l;->bli:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/core/c;->bGD(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/nostra13/universalimageloader/core/h;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/e/d;Lcom/nostra13/universalimageloader/core/assist/b;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/n;Lcom/nostra13/universalimageloader/core/b/a;Lcom/nostra13/universalimageloader/core/b/b;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance v1, Lcom/nostra13/universalimageloader/core/k;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/l;->bli:Lcom/nostra13/universalimageloader/core/c;

    invoke-static {v5}, Lcom/nostra13/universalimageloader/core/l;->bHC(Lcom/nostra13/universalimageloader/core/n;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v9, v0, v3}, Lcom/nostra13/universalimageloader/core/k;-><init>(Lcom/nostra13/universalimageloader/core/c;Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/h;Landroid/os/Handler;)V

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/n;->bHM()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/k;->run()V

    :goto_3
    return-void

    :cond_3
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->bli:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/c;->bGI(Lcom/nostra13/universalimageloader/core/k;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/n;->bHY()Lcom/nostra13/universalimageloader/core/c/a;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->biA:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-interface {v0, v9, p2, v1}, Lcom/nostra13/universalimageloader/core/c/a;->bFo(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/e/d;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/e/d;->bFR()Landroid/view/View;

    move-result-object v0

    invoke-interface {v6, p1, v0, v9}, Lcom/nostra13/universalimageloader/core/b/a;->bcn(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/n;->bIf()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->blg:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->resources:Landroid/content/res/Resources;

    invoke-virtual {v5, v0}, Lcom/nostra13/universalimageloader/core/n;->bIg(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/e/d;->bFU(Landroid/graphics/drawable/Drawable;)Z

    :cond_6
    :goto_4
    new-instance v0, Lcom/nostra13/universalimageloader/core/h;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/l;->bli:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v1, p1}, Lcom/nostra13/universalimageloader/core/c;->bGD(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/nostra13/universalimageloader/core/h;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/e/d;Lcom/nostra13/universalimageloader/core/assist/b;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/n;Lcom/nostra13/universalimageloader/core/b/a;Lcom/nostra13/universalimageloader/core/b/b;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance v1, Lcom/nostra13/universalimageloader/core/a;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/l;->bli:Lcom/nostra13/universalimageloader/core/c;

    invoke-static {v5}, Lcom/nostra13/universalimageloader/core/l;->bHC(Lcom/nostra13/universalimageloader/core/n;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/nostra13/universalimageloader/core/a;-><init>(Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/h;Landroid/os/Handler;)V

    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/n;->bHM()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/a;->run()V

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/n;->bIh()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2, v1}, Lcom/nostra13/universalimageloader/core/e/d;->bFU(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->bli:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/c;->bGH(Lcom/nostra13/universalimageloader/core/a;)V

    goto :goto_3

    :cond_9
    move-object v5, p3

    goto/16 :goto_1

    :cond_a
    move-object v6, p4

    goto/16 :goto_0
.end method

.method public declared-synchronized bHG(Lcom/nostra13/universalimageloader/core/d;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ImageLoader configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->blg:Lcom/nostra13/universalimageloader/core/d;

    if-nez v0, :cond_1

    const-string/jumbo v0, "Initialize ImageLoader with configuration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/nostra13/universalimageloader/core/c;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/c;-><init>(Lcom/nostra13/universalimageloader/core/d;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->bli:Lcom/nostra13/universalimageloader/core/c;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/l;->blg:Lcom/nostra13/universalimageloader/core/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string/jumbo v0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDU(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public bHH(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/n;Lcom/nostra13/universalimageloader/core/b/a;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/l;->bHI(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/n;Lcom/nostra13/universalimageloader/core/b/a;Lcom/nostra13/universalimageloader/core/b/b;)V

    return-void
.end method

.method public bHI(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/n;Lcom/nostra13/universalimageloader/core/b/a;Lcom/nostra13/universalimageloader/core/b/b;)V
    .locals 6

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/l;->bHB()V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->blg:Lcom/nostra13/universalimageloader/core/d;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->bGM()Lcom/nostra13/universalimageloader/core/assist/b;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->blg:Lcom/nostra13/universalimageloader/core/d;

    iget-object v3, v0, Lcom/nostra13/universalimageloader/core/d;->bkn:Lcom/nostra13/universalimageloader/core/n;

    :goto_0
    new-instance v2, Lcom/nostra13/universalimageloader/core/e/a;

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->biD:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {v2, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/e/a;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/l;->bHF(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/e/d;Lcom/nostra13/universalimageloader/core/n;Lcom/nostra13/universalimageloader/core/b/a;Lcom/nostra13/universalimageloader/core/b/b;)V

    return-void

    :cond_1
    move-object v3, p3

    goto :goto_0
.end method

.method public bHJ(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/nostra13/universalimageloader/core/l;->bHK(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bHK(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->blg:Lcom/nostra13/universalimageloader/core/d;

    iget-object p3, v0, Lcom/nostra13/universalimageloader/core/d;->bkn:Lcom/nostra13/universalimageloader/core/n;

    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/o;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/o;-><init>()V

    invoke-virtual {v0, p3}, Lcom/nostra13/universalimageloader/core/o;->bIH(Lcom/nostra13/universalimageloader/core/n;)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/o;->bIJ(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/o;->build()Lcom/nostra13/universalimageloader/core/n;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/m;

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/core/m;-><init>(Lcom/nostra13/universalimageloader/core/m;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/nostra13/universalimageloader/core/l;->bHH(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/b;Lcom/nostra13/universalimageloader/core/n;Lcom/nostra13/universalimageloader/core/b/a;)V

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/m;->bHL()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/l;->bli:Lcom/nostra13/universalimageloader/core/c;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/c;->pause()V

    return-void
.end method
