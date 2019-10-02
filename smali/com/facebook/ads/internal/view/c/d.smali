.class public Lcom/facebook/ads/internal/view/c/d;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "d"


# instance fields
.field public a:Z

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/internal/view/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/facebook/ads/internal/view/c/e;

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/c/d;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/view/c/d;->i:I

    iput v0, p0, Lcom/facebook/ads/internal/view/c/d;->j:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c/d;->c:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c/d;->f:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c/d;->e:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/c/d;->g:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/facebook/ads/internal/view/c/d;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/c/d;->a:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/internal/view/c/d;->i:I

    iput v1, p0, Lcom/facebook/ads/internal/view/c/d;->j:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/c/d;->c:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/internal/view/c/d;->f:Ljava/lang/ref/WeakReference;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/facebook/ads/internal/view/c/d;->e:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/facebook/ads/internal/view/c/d;->g:Ljava/lang/ref/WeakReference;

    iput v0, p0, Lcom/facebook/ads/internal/view/c/d;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/view/c/b;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/c/d;->a:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/internal/view/c/d;->i:I

    iput v1, p0, Lcom/facebook/ads/internal/view/c/d;->j:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/c/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/c/d;->c:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/c/d;->f:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/c/d;->e:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/facebook/ads/internal/view/c/d;->g:Ljava/lang/ref/WeakReference;

    iput v0, p0, Lcom/facebook/ads/internal/view/c/d;->d:I

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/view/c/d;
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/view/c/d;->i:I

    iput v0, p0, Lcom/facebook/ads/internal/view/c/d;->j:I

    return-object p0
.end method

.method public a(II)Lcom/facebook/ads/internal/view/c/d;
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/view/c/d;->i:I

    iput p2, p0, Lcom/facebook/ads/internal/view/c/d;->j:I

    return-object p0
.end method

.method public a(Lcom/facebook/ads/internal/view/c/e;)Lcom/facebook/ads/internal/view/c/d;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/c/d;->h:Lcom/facebook/ads/internal/view/c/e;

    return-object p0
.end method

.method public a(Z)Lcom/facebook/ads/internal/view/c/d;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/c/d;->a:Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c/d;->h:Lcom/facebook/ads/internal/view/c/e;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/c/d;->h:Lcom/facebook/ads/internal/view/c/e;

    invoke-interface {p1, v1}, Lcom/facebook/ads/internal/view/c/e;->a(Z)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/facebook/ads/internal/w/b/p;->a:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/internal/view/c/d;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected a([Landroid/graphics/Bitmap;)V
    .locals 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/d;->e:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/d;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/d;->f:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/d;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/c/b;

    if-eqz v0, :cond_1

    aget-object v3, p1, v1

    aget-object v4, p1, v2

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/internal/view/c/b;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/d;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/d;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    aget-object v0, p1, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/d;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/c/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget-object v5, p1, v2

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v3}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/d;->h:Lcom/facebook/ads/internal/view/c/e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/d;->h:Lcom/facebook/ads/internal/view/c/e;

    aget-object p1, p1, v1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/c/e;->a(Z)V

    :cond_4
    return-void
.end method

.method protected varargs a([Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c/d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    new-array p1, v2, [Landroid/graphics/Bitmap;

    aput-object v3, p1, v0

    aput-object v3, p1, v4

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/facebook/ads/internal/h/d;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/h/d;

    move-result-object v1

    iget v5, p0, Lcom/facebook/ads/internal/view/c/d;->i:I

    iget v6, p0, Lcom/facebook/ads/internal/view/c/d;->j:I

    invoke-virtual {v1, p1, v5, v6}, Lcom/facebook/ads/internal/h/d;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v5, p0, Lcom/facebook/ads/internal/view/c/d;->f:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/facebook/ads/internal/view/c/d;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/facebook/ads/internal/view/c/d;->g:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/facebook/ads/internal/view/c/d;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-nez v5, :cond_3

    if-eqz v6, :cond_5

    :cond_3
    if-eqz v1, :cond_5

    iget-boolean v5, p0, Lcom/facebook/ads/internal/view/c/d;->a:Z

    if-nez v5, :cond_5

    new-instance v5, Lcom/facebook/ads/internal/w/c/f;

    invoke-direct {v5, v1}, Lcom/facebook/ads/internal/w/c/f;-><init>(Landroid/graphics/Bitmap;)V

    iget v6, p0, Lcom/facebook/ads/internal/view/c/d;->d:I

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/facebook/ads/internal/view/c/d;->d:I

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42200000    # 40.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    :goto_2
    invoke-virtual {v5, v6}, Lcom/facebook/ads/internal/w/c/f;->a(I)Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Lcom/facebook/ads/internal/w/c/f;->a()Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v5

    goto :goto_4

    :catch_0
    move-exception v5

    goto :goto_3

    :catch_1
    move-exception v5

    move-object v1, v3

    :goto_3
    sget-object v6, Lcom/facebook/ads/internal/view/c/d;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error downloading image: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v5, v3}, Lcom/facebook/ads/internal/o/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/o/a;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/o/b;->a(Lcom/facebook/ads/internal/o/a;)V

    :cond_5
    :goto_4
    new-array p1, v2, [Landroid/graphics/Bitmap;

    aput-object v1, p1, v0

    aput-object v3, p1, v4

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/c/d;->a([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/c/d;->a([Landroid/graphics/Bitmap;)V

    return-void
.end method
