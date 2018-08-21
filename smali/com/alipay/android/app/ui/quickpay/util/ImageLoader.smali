.class public Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$d;,
        Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$e;,
        Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$c;,
        Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$b;,
        Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;,
        Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;,
        Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static b:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "(\\?|&)biztype=([^&]*)(&|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/16 v6, 0x40

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-object p3

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;->b()Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;->a()[I

    move-result-object v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->None:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    if-eq v0, v2, :cond_0

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    aget v2, v1, v4

    if-gtz v2, :cond_2

    aput v6, v1, v4

    :cond_2
    aget v2, v1, v5

    if-gtz v2, :cond_3

    aput v6, v1, v5

    :cond_3
    sget-object v2, Lcom/alipay/android/app/ui/quickpay/util/d;->b:[I

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;->c()I

    move-result v0

    aget v2, v1, v4

    aget v1, v1, v5

    invoke-static {p3, v0, v2, v1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;->a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    :pswitch_2
    aget v0, v1, v4

    aget v1, v1, v5

    invoke-static {p3, v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-static {p2, p3}, Lcom/alipay/android/app/ui/quickpay/util/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static a()Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string/jumbo v0, "alipay_icon"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/d;->a:[I

    invoke-virtual {p2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;ZLcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a()Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    move-result-object v0

    if-eqz p2, :cond_0

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->Background:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    :goto_0
    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;)V

    return-void

    :cond_0
    sget-object v3, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->Image:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b(Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private b(Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p4, p5, p2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private c(Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const-string/jumbo v0, ""

    if-eqz p2, :cond_0

    const-string/jumbo v1, "http"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {p4}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;->a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;)[I

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$d;->a(Ljava/lang/String;[I)Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$e;

    move-result-object v2

    new-instance v7, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$c;

    invoke-direct {v7, p0}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$c;-><init>(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;)V

    invoke-static {v7, p4}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$c;->a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$c;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;)Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/c;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/ui/quickpay/util/c;-><init>(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$e;Landroid/view/View;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_1

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$e;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p5, v3, v2

    const/4 v2, 0x2

    aput-object v0, v3, v2

    invoke-virtual {v7, v1, v3}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void

    :cond_0
    invoke-static {p2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-object p2, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$e;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p5, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-virtual {v7, v1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct/range {p0 .. p5}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b(Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Landroid/view/View;)V

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct/range {p0 .. p5}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->c(Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "local:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "net:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
