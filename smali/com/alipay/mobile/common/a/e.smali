.class final Lcom/alipay/mobile/common/a/e;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/alipay/mobile/common/common/Callback$a;
.implements Lcom/alipay/mobile/common/common/Callback$b;
.implements Lcom/alipay/mobile/common/common/Callback$d;
.implements Lcom/alipay/mobile/common/common/Callback$e;
.implements Lcom/alipay/mobile/common/common/Callback$g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/common/common/Callback$a",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lcom/alipay/mobile/common/common/Callback$b;",
        "Lcom/alipay/mobile/common/common/Callback$d",
        "<",
        "Ljava/io/File;",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lcom/alipay/mobile/common/common/Callback$e",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lcom/alipay/mobile/common/common/Callback$g",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final m:Ljava/util/concurrent/Executor;

.field private static final n:Lcom/alipay/mobile/common/cache/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/cache/b",
            "<",
            "Lcom/alipay/mobile/common/a/k;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/a/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/lang/reflect/Type;


# instance fields
.field private a:Lcom/alipay/mobile/common/a/k;

.field private b:Lcom/alipay/mobile/common/a/j;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final e:J

.field private volatile f:Z

.field private volatile g:Z

.field private h:Lcom/alipay/mobile/common/common/Callback$b;

.field private i:Lcom/alipay/mobile/common/common/Callback$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/common/Callback$c",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/alipay/mobile/common/common/Callback$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/common/Callback$d",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/alipay/mobile/common/common/Callback$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/common/Callback$a",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/alipay/mobile/common/common/Callback$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/common/Callback$e",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v1, 0x400000

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/alipay/mobile/common/a/e;->d:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/alipay/mobile/common/common/task/a;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/common/common/task/a;-><init>(IZ)V

    sput-object v0, Lcom/alipay/mobile/common/a/e;->m:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/alipay/mobile/common/a/f;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/a/f;-><init>(I)V

    sput-object v0, Lcom/alipay/mobile/common/a/e;->n:Lcom/alipay/mobile/common/cache/b;

    invoke-static {}, Lcom/alipay/mobile/common/Sdk;->b()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/high16 v2, 0x100000

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x8

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/a/e;->n:Lcom/alipay/mobile/common/cache/b;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/cache/b;->a(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/a/e;->o:Ljava/util/HashMap;

    const-class v0, Ljava/io/File;

    sput-object v0, Lcom/alipay/mobile/common/a/e;->p:Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/mobile/common/a/e;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/a/e;->e:J

    iput-boolean v2, p0, Lcom/alipay/mobile/common/a/e;->f:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/common/a/e;->g:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/common/a/e;->q:Z

    return-void
.end method

.method static a(Landroid/widget/ImageView;Ljava/lang/String;Lcom/alipay/mobile/common/a/j;Lcom/alipay/mobile/common/common/Callback$c;)Lcom/alipay/mobile/common/common/Callback$b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/a/j;",
            "Lcom/alipay/mobile/common/common/Callback$c",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/alipay/mobile/common/common/Callback$b;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_1

    const-string/jumbo v1, "view is null"

    invoke-static {v3, p2, v1, p3}, Lcom/alipay/mobile/common/a/e;->a(Landroid/widget/ImageView;Lcom/alipay/mobile/common/a/j;Ljava/lang/String;Lcom/alipay/mobile/common/common/Callback$c;)V

    move-object v1, v3

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "url is null"

    invoke-static {p0, p2, v1, p3}, Lcom/alipay/mobile/common/a/e;->a(Landroid/widget/ImageView;Lcom/alipay/mobile/common/a/j;Ljava/lang/String;Lcom/alipay/mobile/common/common/Callback$c;)V

    move-object v1, v3

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    sget-object p2, Lcom/alipay/mobile/common/a/j;->a:Lcom/alipay/mobile/common/a/j;

    :cond_3
    invoke-virtual {p2, p0}, Lcom/alipay/mobile/common/a/j;->a(Landroid/widget/ImageView;)V

    new-instance v2, Lcom/alipay/mobile/common/a/k;

    invoke-direct {v2, p1, p2}, Lcom/alipay/mobile/common/a/k;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/a/j;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v5, v1, Lcom/alipay/mobile/common/a/a;

    if-eqz v5, :cond_5

    check-cast v1, Lcom/alipay/mobile/common/a/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/a/a;->a()Lcom/alipay/mobile/common/a/e;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-boolean v5, v1, Lcom/alipay/mobile/common/a/e;->f:Z

    if-nez v5, :cond_5

    iget-object v5, v1, Lcom/alipay/mobile/common/a/e;->a:Lcom/alipay/mobile/common/a/k;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/common/a/k;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v1, v3

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/alipay/mobile/common/a/e;->b()V

    :cond_5
    invoke-virtual {p2}, Lcom/alipay/mobile/common/a/j;->r()Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/alipay/mobile/common/a/e;->n:Lcom/alipay/mobile/common/cache/b;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/cache/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_c

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_6
    move-object v5, v3

    :goto_1
    if-eqz v5, :cond_b

    :try_start_0
    invoke-virtual {p2}, Lcom/alipay/mobile/common/a/j;->p()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    instance-of v1, p3, Lcom/alipay/mobile/common/common/Callback$a;

    if-eqz v1, :cond_7

    move-object v0, p3

    check-cast v0, Lcom/alipay/mobile/common/common/Callback$a;

    move-object v1, v0

    invoke-interface {v1, v5}, Lcom/alipay/mobile/common/common/Callback$a;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v1, Lcom/alipay/mobile/common/a/e;

    invoke-direct {v1}, Lcom/alipay/mobile/common/a/e;-><init>()V

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/common/a/e;->b(Landroid/widget/ImageView;Ljava/lang/String;Lcom/alipay/mobile/common/a/j;Lcom/alipay/mobile/common/common/Callback$c;)Lcom/alipay/mobile/common/common/Callback$b;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    :try_start_2
    invoke-interface {p3}, Lcom/alipay/mobile/common/common/Callback$c;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v4, "ImageLoader"

    invoke-interface {v3, v4, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    if-eqz p3, :cond_8

    :try_start_3
    invoke-interface {p3, v5}, Lcom/alipay/mobile/common/common/Callback$c;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_8
    if-eqz v2, :cond_9

    if-eqz p3, :cond_9

    :try_start_4
    invoke-interface {p3}, Lcom/alipay/mobile/common/common/Callback$c;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_9
    :goto_2
    move-object v1, v3

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v4, "ImageLoader"

    invoke-interface {v2, v4, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v1

    move v2, v4

    :goto_3
    :try_start_5
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v5, "ImageLoader"

    invoke-interface {v3, v5, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    new-instance v1, Lcom/alipay/mobile/common/a/e;

    invoke-direct {v1}, Lcom/alipay/mobile/common/a/e;-><init>()V

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/common/a/e;->b(Landroid/widget/ImageView;Ljava/lang/String;Lcom/alipay/mobile/common/a/j;Lcom/alipay/mobile/common/common/Callback$c;)Lcom/alipay/mobile/common/common/Callback$b;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move v2, v4

    :goto_4
    if-eqz v2, :cond_a

    if-eqz p3, :cond_a

    :try_start_7
    invoke-interface {p3}, Lcom/alipay/mobile/common/common/Callback$c;->a()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_a
    :goto_5
    throw v1

    :catch_3
    move-exception v2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v3

    const-string/jumbo v4, "ImageLoader"

    invoke-interface {v3, v4, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_b
    new-instance v1, Lcom/alipay/mobile/common/a/e;

    invoke-direct {v1}, Lcom/alipay/mobile/common/a/e;-><init>()V

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/common/a/e;->b(Landroid/widget/ImageView;Ljava/lang/String;Lcom/alipay/mobile/common/a/j;Lcom/alipay/mobile/common/common/Callback$c;)Lcom/alipay/mobile/common/common/Callback$b;

    move-result-object v1

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :cond_c
    move-object v5, v1

    goto/16 :goto_1

    :cond_d
    move-object v5, v3

    goto/16 :goto_1
.end method

.method static a(Ljava/lang/String;Lcom/alipay/mobile/common/a/j;Lcom/alipay/mobile/common/common/Callback$c;)Lcom/alipay/mobile/common/common/Callback$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/a/j;",
            "Lcom/alipay/mobile/common/common/Callback$c",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/alipay/mobile/common/common/Callback$b;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "url is null"

    invoke-static {v0, p1, v1, p2}, Lcom/alipay/mobile/common/a/e;->a(Landroid/widget/ImageView;Lcom/alipay/mobile/common/a/j;Ljava/lang/String;Lcom/alipay/mobile/common/common/Callback$c;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/a/e;->o:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/a/e;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/a/e$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/common/a/e$a;

    invoke-direct {v0}, Lcom/alipay/mobile/common/a/e$a;-><init>()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, p0, p1, p2}, Lcom/alipay/mobile/common/a/e;->a(Landroid/widget/ImageView;Ljava/lang/String;Lcom/alipay/mobile/common/a/j;Lcom/alipay/mobile/common/common/Callback$c;)Lcom/alipay/mobile/common/common/Callback$b;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/mobile/common/a/j;)Lcom/alipay/mobile/common/http/g;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/http/g;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/http/g;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "inside_img"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/http/g;->b(Ljava/lang/String;)V

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/http/g;->a(I)V

    sget-object v1, Lcom/alipay/mobile/common/a/e;->m:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/http/g;->a(Ljava/util/concurrent/Executor;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/http/g;->a(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/a/j;->s()Lcom/alipay/mobile/common/a/j$a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, Lcom/alipay/mobile/common/a/j$a;->a(Lcom/alipay/mobile/common/http/g;Lcom/alipay/mobile/common/a/j;)Lcom/alipay/mobile/common/http/g;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/common/a/e;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static a(Landroid/widget/ImageView;Lcom/alipay/mobile/common/a/j;Ljava/lang/String;Lcom/alipay/mobile/common/common/Callback$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lcom/alipay/mobile/common/a/j;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/common/Callback$c",
            "<*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/mobile/common/Sdk;->c()Lcom/alipay/mobile/common/common/a;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/a/h;

    invoke-direct {v1, p3, p0, p1, p2}, Lcom/alipay/mobile/common/a/h;-><init>(Lcom/alipay/mobile/common/common/Callback$c;Landroid/widget/ImageView;Lcom/alipay/mobile/common/a/j;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/common/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Z)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v4, v1, Lcom/alipay/mobile/common/a/a;

    if-eqz v4, :cond_3

    check-cast v1, Lcom/alipay/mobile/common/a/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/a/a;->a()Lcom/alipay/mobile/common/a/e;

    move-result-object v1

    if-eqz v1, :cond_4

    if-ne v1, p0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/a/e;->b()V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/alipay/mobile/common/a/e;->e:J

    iget-wide v6, v1, Lcom/alipay/mobile/common/a/e;->e:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/common/a/e;->b()V

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/a/e;->b()V

    move v0, v2

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/common/a/e;->b()V

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/common/a/e;)Lcom/alipay/mobile/common/a/k;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->a:Lcom/alipay/mobile/common/a/k;

    return-object v0
.end method

.method private b(Landroid/widget/ImageView;Ljava/lang/String;Lcom/alipay/mobile/common/a/j;Lcom/alipay/mobile/common/common/Callback$c;)Lcom/alipay/mobile/common/common/Callback$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/a/j;",
            "Lcom/alipay/mobile/common/common/Callback$c",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/alipay/mobile/common/common/Callback$b;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/a/e;->c:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/alipay/mobile/common/a/e;->b:Lcom/alipay/mobile/common/a/j;

    new-instance v0, Lcom/alipay/mobile/common/a/k;

    invoke-direct {v0, p2, p3}, Lcom/alipay/mobile/common/a/k;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/a/j;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/a/e;->a:Lcom/alipay/mobile/common/a/k;

    iput-object p4, p0, Lcom/alipay/mobile/common/a/e;->i:Lcom/alipay/mobile/common/common/Callback$c;

    instance-of v0, p4, Lcom/alipay/mobile/common/common/Callback$e;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/alipay/mobile/common/common/Callback$e;

    iput-object v0, p0, Lcom/alipay/mobile/common/a/e;->l:Lcom/alipay/mobile/common/common/Callback$e;

    :cond_0
    instance-of v0, p4, Lcom/alipay/mobile/common/common/Callback$d;

    if-eqz v0, :cond_1

    move-object v0, p4

    check-cast v0, Lcom/alipay/mobile/common/common/Callback$d;

    iput-object v0, p0, Lcom/alipay/mobile/common/a/e;->j:Lcom/alipay/mobile/common/common/Callback$d;

    :cond_1
    instance-of v0, p4, Lcom/alipay/mobile/common/common/Callback$a;

    if-eqz v0, :cond_2

    check-cast p4, Lcom/alipay/mobile/common/common/Callback$a;

    iput-object p4, p0, Lcom/alipay/mobile/common/a/e;->k:Lcom/alipay/mobile/common/common/Callback$a;

    :cond_2
    invoke-virtual {p3}, Lcom/alipay/mobile/common/a/j;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Lcom/alipay/mobile/common/a/j;->b(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3}, Lcom/alipay/mobile/common/a/j;->o()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Lcom/alipay/mobile/common/a/a;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/common/a/a;-><init>(Lcom/alipay/mobile/common/a/e;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-static {p2, p3}, Lcom/alipay/mobile/common/a/e;->a(Ljava/lang/String;Lcom/alipay/mobile/common/a/j;)Lcom/alipay/mobile/common/http/g;

    move-result-object v0

    instance-of v1, p1, Lcom/alipay/mobile/common/a/e$a;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/alipay/mobile/common/a/e;->o:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/alipay/mobile/common/a/e;->o:Ljava/util/HashMap;

    check-cast p1, Lcom/alipay/mobile/common/a/e$a;

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/Sdk;->d()Lcom/alipay/mobile/common/b;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Lcom/alipay/mobile/common/b;->a(Lcom/alipay/mobile/common/http/g;Lcom/alipay/mobile/common/common/Callback$c;)Lcom/alipay/mobile/common/common/Callback$b;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/a/e;->h:Lcom/alipay/mobile/common/common/Callback$b;

    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/a/a;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/common/a/a;-><init>(Lcom/alipay/mobile/common/a/e;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/alipay/mobile/common/a/e;)Lcom/alipay/mobile/common/a/j;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->b:Lcom/alipay/mobile/common/a/j;

    return-object v0
.end method

.method private c(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/a/e;->b:Lcom/alipay/mobile/common/a/j;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/a/j;->p()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/a/e;->b:Lcom/alipay/mobile/common/a/j;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/a/j;->n()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/a/e;->b:Lcom/alipay/mobile/common/a/j;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/a/j;->n()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/alipay/mobile/common/a/b;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/a/e;->b:Lcom/alipay/mobile/common/a/j;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/a/j;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/a/b;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/mobile/common/a/e;)Lcom/alipay/mobile/common/common/Callback$c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->i:Lcom/alipay/mobile/common/common/Callback$c;

    return-object v0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/a/e;->b:Lcom/alipay/mobile/common/a/j;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/a/j;->c(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/a/e;->b:Lcom/alipay/mobile/common/a/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/a/j;->o()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/a/e;->a(Z)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->j:Lcom/alipay/mobile/common/common/Callback$d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->j:Lcom/alipay/mobile/common/common/Callback$d;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/common/Callback$d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->b:Lcom/alipay/mobile/common/a/j;

    invoke-static {p1, v0, p0}, Lcom/alipay/mobile/common/a/c;->a(Ljava/io/File;Lcom/alipay/mobile/common/a/j;Lcom/alipay/mobile/common/common/Callback$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_0

    sget-object v2, Lcom/alipay/mobile/common/a/e;->n:Lcom/alipay/mobile/common/cache/b;

    iget-object v3, p0, Lcom/alipay/mobile/common/a/e;->a:Lcom/alipay/mobile/common/a/k;

    invoke-virtual {v2, v3, v0}, Lcom/alipay/mobile/common/cache/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/alipay/mobile/common/common/a/d;->a(Ljava/io/File;)Z

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "ImageLoader"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/a/e;->f:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/alipay/mobile/common/a/e$a;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/mobile/common/a/e;->o:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/a/e;->o:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/alipay/mobile/common/a/e;->a:Lcom/alipay/mobile/common/a/k;

    iget-object v2, v2, Lcom/alipay/mobile/common/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/a/e;->a(Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->i:Lcom/alipay/mobile/common/common/Callback$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->i:Lcom/alipay/mobile/common/common/Callback$c;

    invoke-interface {v0}, Lcom/alipay/mobile/common/common/Callback$c;->a()V

    goto :goto_0
.end method

.method public a(JJZ)V
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/a/e;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->l:Lcom/alipay/mobile/common/common/Callback$e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/a/e;->l:Lcom/alipay/mobile/common/common/Callback$e;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/common/common/Callback$e;->a(JJZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/alipay/mobile/common/common/Callback$CancelledException;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/a/e;->f:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/a/e;->a(Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->i:Lcom/alipay/mobile/common/common/Callback$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->i:Lcom/alipay/mobile/common/common/Callback$c;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/common/Callback$c;->a(Lcom/alipay/mobile/common/common/Callback$CancelledException;)V

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/a/e;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;Z)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/a/e;->f:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/a/e;->a(Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/common/ex/FileLockedException;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "ImageLoader:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ImageFileLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/a/e;->a:Lcom/alipay/mobile/common/a/k;

    iget-object v3, v3, Lcom/alipay/mobile/common/a/k;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/Sdk;->c()Lcom/alipay/mobile/common/common/a;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/a/g;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/a/g;-><init>(Lcom/alipay/mobile/common/a/e;)V

    const-wide/16 v2, 0xa

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/common/common/a;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "ImageLoader:"

    iget-object v2, p0, Lcom/alipay/mobile/common/a/e;->a:Lcom/alipay/mobile/common/a/k;

    iget-object v2, v2, Lcom/alipay/mobile/common/a/k;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/a/e;->f()V

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->i:Lcom/alipay/mobile/common/common/Callback$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->i:Lcom/alipay/mobile/common/common/Callback$c;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/common/Callback$c;->a(Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/a/e;->a(Z)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/alipay/mobile/common/a/e;->q:Z

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/a/e;->c(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->k:Lcom/alipay/mobile/common/common/Callback$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->k:Lcom/alipay/mobile/common/common/Callback$a;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/common/Callback$a;->b(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->i:Lcom/alipay/mobile/common/common/Callback$c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->i:Lcom/alipay/mobile/common/common/Callback$c;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/common/Callback$c;->a(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/a/e;->f:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/common/a/e;->g:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->h:Lcom/alipay/mobile/common/common/Callback$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->h:Lcom/alipay/mobile/common/common/Callback$b;

    invoke-interface {v0}, Lcom/alipay/mobile/common/common/Callback$b;->b()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/e;->q:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/a/e;->a(Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/a/e;->c(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->i:Lcom/alipay/mobile/common/common/Callback$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->i:Lcom/alipay/mobile/common/common/Callback$c;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/common/Callback$c;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public synthetic b(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/a/e;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/a/e;->a(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/a/e;->g:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/a/e;->a(Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/a/e;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->l:Lcom/alipay/mobile/common/common/Callback$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/a/e;->l:Lcom/alipay/mobile/common/common/Callback$e;

    invoke-interface {v0}, Lcom/alipay/mobile/common/common/Callback$e;->d()V

    :cond_0
    return-void
.end method

.method public e()Ljava/lang/reflect/Type;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/a/e;->p:Ljava/lang/reflect/Type;

    return-object v0
.end method
