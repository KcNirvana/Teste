.class public Lcom/alipay/birdnest/a/b;
.super Ljava/lang/Object;
.source "FBImageLoader.java"

# interfaces
.implements Lcom/alipay/birdnest/api/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/birdnest/a/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/birdnest/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/birdnest/a/b;->c:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/birdnest/a/b;->b:Landroid/util/SparseArray;

    const/high16 v0, 0x100000

    new-instance v1, Lcom/alipay/birdnest/a/c;

    invoke-direct {v1, p0, v0}, Lcom/alipay/birdnest/a/c;-><init>(Lcom/alipay/birdnest/a/b;I)V

    iput-object v1, p0, Lcom/alipay/birdnest/a/b;->a:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;[IZLjava/lang/String;ZLcom/alipay/android/app/template/FBResourceClient;Landroid/content/Context;Lcom/alipay/birdnest/api/BirdNestEngine$h;Z)Landroid/graphics/drawable/Drawable;
    .locals 13

    const/4 v3, 0x0

    if-eqz p7, :cond_2

    if-eqz p5, :cond_2

    const-string/jumbo v2, "/"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    const-string/jumbo v2, "TemplateImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "offline pkg intercept imageUrl (imageloader) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/android/app/template/FBResourceClient$Type;->DRAWABLE:Lcom/alipay/android/app/template/FBResourceClient$Type;

    move-object/from16 v0, p7

    move-object/from16 v1, p5

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/template/FBResourceClient;->shouldInterceptResource(Ljava/lang/String;Lcom/alipay/android/app/template/FBResourceClient$Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p10, :cond_0

    if-eqz v2, :cond_0

    if-eqz p4, :cond_1

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    instance-of v3, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    const-string/jumbo v3, "TemplateImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "final display, url is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_2
    const-string/jumbo v4, "TemplateImageLoader"

    invoke-static {v4, v3}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v2, p0

    move-object/from16 v3, p9

    move-object/from16 v4, p8

    move-object/from16 v5, p5

    move-object v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object v9, p1

    move/from16 v10, p6

    move/from16 v11, p10

    invoke-virtual/range {v2 .. v11}, Lcom/alipay/birdnest/a/b;->a(Lcom/alipay/birdnest/api/BirdNestEngine$h;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[IZLandroid/view/View;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v12, v2

    move-object v2, v3

    move-object v3, v12

    goto :goto_2

    :cond_3
    move-object v2, v3

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/birdnest/a/b;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/alipay/birdnest/a/b;->b:Landroid/util/SparseArray;

    return-object v0
.end method

.method private a(ILjava/lang/String;[ILandroid/graphics/drawable/Drawable;)Lcom/alipay/birdnest/a/b$a;
    .locals 3

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/alipay/birdnest/a/b$a;

    invoke-direct {v1, p0}, Lcom/alipay/birdnest/a/b$a;-><init>(Lcom/alipay/birdnest/a/b;)V

    iput p1, v1, Lcom/alipay/birdnest/a/b$a;->a:I

    iput-object p4, v1, Lcom/alipay/birdnest/a/b$a;->c:Landroid/graphics/drawable/Drawable;

    iput-object p3, v1, Lcom/alipay/birdnest/a/b$a;->b:[I

    iget-object v2, p0, Lcom/alipay/birdnest/a/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/alipay/birdnest/a/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/birdnest/a/b;->a:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/alipay/birdnest/api/BirdNestEngine$h;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[IZLandroid/view/View;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v1, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p9, :cond_0

    if-eqz p6, :cond_1

    invoke-virtual {p7, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    check-cast p7, Landroid/widget/ImageView;

    invoke-virtual {p7, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p5, :cond_3

    array-length v2, p5

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/16 v2, 0x5f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p5, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, p5, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p8, :cond_4

    const-string/jumbo v2, "_needGray"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/birdnest/a/b;->a:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/birdnest/a/b$a;

    if-nez v0, :cond_8

    const-string/jumbo v0, "TemplateImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadLocalDrawable cacheItem == null, url is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "drawable"

    invoke-interface {p1, p2, p3, p4, v0}, Lcom/alipay/birdnest/api/BirdNestEngine$h;->getResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    instance-of v3, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_a

    const-string/jumbo v3, "TemplateImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "image != null && image instanceof Drawable, url is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz p8, :cond_5

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_5

    const-string/jumbo v3, "TemplateImageLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "needGray && drawable instanceof BitmapDrawable, url is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/birdnest/a/i;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_5
    :goto_1
    if-nez v0, :cond_7

    const-string/jumbo v0, "TemplateImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "drawable == null, url is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p9, :cond_0

    if-eqz p6, :cond_6

    invoke-virtual {p7, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_6
    check-cast p7, Landroid/widget/ImageView;

    invoke-virtual {p7, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {p0, v1, v2, p5, v0}, Lcom/alipay/birdnest/a/b;->a(ILjava/lang/String;[ILandroid/graphics/drawable/Drawable;)Lcom/alipay/birdnest/a/b$a;

    move-object v1, v0

    :goto_2
    if-eqz p9, :cond_0

    if-eqz p6, :cond_9

    invoke-virtual {p7, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    instance-of v0, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "TemplateImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cacheItem != null, url is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/alipay/birdnest/a/b$a;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_9
    const-string/jumbo v0, "TemplateImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "final display, url is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p7, Landroid/widget/ImageView;

    invoke-virtual {p7, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public a(I)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/birdnest/a/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/alipay/birdnest/a/b;->a:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/alipay/birdnest/a/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/alipay/birdnest/a/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/birdnest/a/b;->a:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TemplateImageLoader"

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/alipay/birdnest/api/BirdNestEngine;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;IZLcom/alipay/birdnest/api/c$a;Lcom/alipay/android/app/template/FBResourceClient;Landroid/os/Bundle;)V
    .locals 19

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/birdnest/a/b;->c:I

    if-gez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->g()Lcom/alipay/birdnest/api/BirdNestEngine$e;

    move-result-object v2

    const-string/jumbo v3, "alipay_msp_image_loader_view_tag"

    invoke-interface {v2, v3}, Lcom/alipay/birdnest/api/BirdNestEngine$e;->getUniqueResId(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/alipay/birdnest/a/b;->c:I

    const-string/jumbo v2, "TemplateImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "image_loader_view_tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/alipay/birdnest/a/b;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v3, 0x64

    const/16 v2, 0x64

    if-eqz p5, :cond_a

    const/4 v2, 0x0

    aget v3, p5, v2

    const/4 v2, 0x1

    aget v2, p5, v2

    move/from16 v16, v2

    move/from16 v17, v3

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->f()Lcom/alipay/birdnest/api/BirdNestEngine$h;

    move-result-object v3

    if-eqz p12, :cond_6

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "TemplateImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "offline pkg intercept res(imageloader) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/android/app/template/FBResourceClient$Type;->DRAWABLE:Lcom/alipay/android/app/template/FBResourceClient$Type;

    move-object/from16 v0, p12

    move-object/from16 v1, p3

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/template/FBResourceClient;->shouldInterceptResource(Ljava/lang/String;Lcom/alipay/android/app/template/FBResourceClient$Type;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-eqz p11, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    move-object/from16 v0, p11

    invoke-interface {v0, v3, v4}, Lcom/alipay/birdnest/api/c$a;->requestLayout(II)V

    :cond_3
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    if-eqz p6, :cond_5

    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    const-string/jumbo v2, "TemplateImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadLocalDrawable use offlineObj, url is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    check-cast p2, Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    const-string/jumbo v2, "TemplateImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "try to complete LoadLocalDrawable using LocalImage, url is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "http"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "https"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "www"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "/"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v11, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p2

    move/from16 v10, p10

    invoke-virtual/range {v2 .. v11}, Lcom/alipay/birdnest/a/b;->a(Lcom/alipay/birdnest/api/BirdNestEngine$h;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[IZLandroid/view/View;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "TemplateImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadLocalDrawable == null, url is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_7
    check-cast p2, Landroid/widget/ImageView;

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "TemplateImageLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "try to complete LoadLocalDrawable using RemoteImage, url is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/birdnest/a/b;->c:I

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/birdnest/a/b;->c:I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_9
    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p10

    move-object/from16 v12, p12

    move-object v13, v4

    move-object v14, v3

    invoke-direct/range {v5 .. v15}, Lcom/alipay/birdnest/a/b;->a(Landroid/view/View;Ljava/lang/String;[IZLjava/lang/String;ZLcom/alipay/android/app/template/FBResourceClient;Landroid/content/Context;Lcom/alipay/birdnest/api/BirdNestEngine$h;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p8

    move/from16 v11, p10

    move-object/from16 v12, p12

    move-object v13, v4

    move-object v14, v3

    invoke-direct/range {v5 .. v15}, Lcom/alipay/birdnest/a/b;->a(Landroid/view/View;Ljava/lang/String;[IZLjava/lang/String;ZLcom/alipay/android/app/template/FBResourceClient;Landroid/content/Context;Lcom/alipay/birdnest/api/BirdNestEngine$h;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/birdnest/api/BirdNestEngine;->b()Lcom/alipay/birdnest/api/BirdNestEngine$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/birdnest/api/BirdNestEngine$a;->f()Lcom/alipay/birdnest/api/BirdNestEngine$h;

    move-result-object v8

    new-instance v2, Lcom/alipay/birdnest/a/d;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p11

    move-object/from16 v6, p2

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/alipay/birdnest/a/d;-><init>(Lcom/alipay/birdnest/a/b;Ljava/lang/String;Lcom/alipay/birdnest/api/c$a;Landroid/view/View;Z)V

    move-object v3, v8

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, v17

    move/from16 v7, v16

    move-object/from16 v8, v18

    move/from16 v10, p9

    move/from16 v11, p10

    move-object v12, v2

    move-object/from16 v13, p13

    invoke-interface/range {v3 .. v13}, Lcom/alipay/birdnest/api/BirdNestEngine$h;->getResourceAsync(Landroid/view/View;Ljava/lang/String;IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZLcom/alipay/birdnest/api/BirdNestEngine$h$a;Landroid/os/Bundle;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    move/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_1
.end method
