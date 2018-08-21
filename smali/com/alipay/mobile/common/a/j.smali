.class public Lcom/alipay/mobile/common/a/j;
.super Ljava/lang/Object;
.source "ImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/common/a/j$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/alipay/mobile/common/a/j;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/graphics/Bitmap$Config;

.field private m:Z

.field private n:I

.field private o:I

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Z

.field private s:Landroid/widget/ImageView$ScaleType;

.field private t:Landroid/widget/ImageView$ScaleType;

.field private u:Z

.field private v:Landroid/view/animation/Animation;

.field private w:Z

.field private x:Lcom/alipay/mobile/common/a/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/a/j;

    invoke-direct {v0}, Lcom/alipay/mobile/common/a/j;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/a/j;->a:Lcom/alipay/mobile/common/a/j;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/alipay/mobile/common/a/j;->b:I

    iput v1, p0, Lcom/alipay/mobile/common/a/j;->c:I

    iput v1, p0, Lcom/alipay/mobile/common/a/j;->d:I

    iput v1, p0, Lcom/alipay/mobile/common/a/j;->e:I

    iput-boolean v1, p0, Lcom/alipay/mobile/common/a/j;->f:Z

    iput v1, p0, Lcom/alipay/mobile/common/a/j;->g:I

    iput-boolean v1, p0, Lcom/alipay/mobile/common/a/j;->h:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/a/j;->i:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/a/j;->j:Z

    iput-boolean v2, p0, Lcom/alipay/mobile/common/a/j;->k:Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/alipay/mobile/common/a/j;->l:Landroid/graphics/Bitmap$Config;

    iput-boolean v2, p0, Lcom/alipay/mobile/common/a/j;->m:Z

    iput v1, p0, Lcom/alipay/mobile/common/a/j;->n:I

    iput v1, p0, Lcom/alipay/mobile/common/a/j;->o:I

    iput-object v3, p0, Lcom/alipay/mobile/common/a/j;->p:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/alipay/mobile/common/a/j;->q:Landroid/graphics/drawable/Drawable;

    iput-boolean v2, p0, Lcom/alipay/mobile/common/a/j;->r:Z

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/alipay/mobile/common/a/j;->s:Landroid/widget/ImageView$ScaleType;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/alipay/mobile/common/a/j;->t:Landroid/widget/ImageView$ScaleType;

    iput-boolean v1, p0, Lcom/alipay/mobile/common/a/j;->u:Z

    iput-object v3, p0, Lcom/alipay/mobile/common/a/j;->v:Landroid/view/animation/Animation;

    iput-boolean v2, p0, Lcom/alipay/mobile/common/a/j;->w:Z

    return-void
.end method

.method private static a(Landroid/widget/ImageView;Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const v2, 0x7fffffff

    if-ge v0, v2, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->b:I

    return v0
.end method

.method final a(Landroid/widget/ImageView;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, -0x2

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->e:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->d:I

    iput v0, p0, Lcom/alipay/mobile/common/a/j;->b:I

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->e:I

    iput v0, p0, Lcom/alipay/mobile/common/a/j;->c:I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/common/a/a;->a()I

    move-result v2

    invoke-static {}, Lcom/alipay/mobile/common/common/a/a;->b()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/common/a/j;->d:I

    if-gez v1, :cond_1

    mul-int/lit8 v1, v2, 0x3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alipay/mobile/common/a/j;->b:I

    iput-boolean v3, p0, Lcom/alipay/mobile/common/a/j;->k:Z

    :cond_1
    iget v1, p0, Lcom/alipay/mobile/common/a/j;->e:I

    if-gez v1, :cond_2

    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alipay/mobile/common/a/j;->c:I

    iput-boolean v3, p0, Lcom/alipay/mobile/common/a/j;->k:Z

    :cond_2
    if-nez p1, :cond_3

    iget v1, p0, Lcom/alipay/mobile/common/a/j;->b:I

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/alipay/mobile/common/a/j;->c:I

    if-gtz v1, :cond_3

    iput v2, p0, Lcom/alipay/mobile/common/a/j;->b:I

    iput v0, p0, Lcom/alipay/mobile/common/a/j;->c:I

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/alipay/mobile/common/a/j;->b:I

    iget v1, p0, Lcom/alipay/mobile/common/a/j;->c:I

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_5

    if-gtz v3, :cond_4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v5, :cond_8

    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, p0, Lcom/alipay/mobile/common/a/j;->d:I

    if-gtz v5, :cond_4

    iput v3, p0, Lcom/alipay/mobile/common/a/j;->d:I

    :cond_4
    :goto_1
    if-gtz v1, :cond_5

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_9

    iget v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v4, p0, Lcom/alipay/mobile/common/a/j;->e:I

    if-gtz v4, :cond_5

    iput v1, p0, Lcom/alipay/mobile/common/a/j;->e:I

    :cond_5
    :goto_2
    if-gtz v3, :cond_6

    const-string/jumbo v3, "mMaxWidth"

    invoke-static {p1, v3}, Lcom/alipay/mobile/common/a/j;->a(Landroid/widget/ImageView;Ljava/lang/String;)I

    move-result v3

    :cond_6
    if-gtz v1, :cond_7

    const-string/jumbo v1, "mMaxHeight"

    invoke-static {p1, v1}, Lcom/alipay/mobile/common/a/j;->a(Landroid/widget/ImageView;Ljava/lang/String;)I

    move-result v1

    :cond_7
    if-gtz v3, :cond_b

    :goto_3
    if-gtz v1, :cond_a

    :goto_4
    iput v2, p0, Lcom/alipay/mobile/common/a/j;->b:I

    iput v0, p0, Lcom/alipay/mobile/common/a/j;->c:I

    goto :goto_0

    :cond_8
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v5, v6, :cond_4

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    goto :goto_1

    :cond_9
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v6, :cond_5

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_4

    :cond_b
    move v2, v3

    goto :goto_3
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->c:I

    return v0
.end method

.method public b(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/a/j;->p:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->n:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/a/j;->n:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/a/j;->p:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/a/j;->p:Landroid/graphics/drawable/Drawable;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "ImageOptions"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->d:I

    return v0
.end method

.method public c(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/a/j;->q:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->o:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/a/j;->o:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/a/j;->q:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/a/j;->q:Landroid/graphics/drawable/Drawable;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "ImageOptions"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->e:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->f:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/alipay/mobile/common/a/j;

    iget v2, p0, Lcom/alipay/mobile/common/a/j;->b:I

    iget v3, p1, Lcom/alipay/mobile/common/a/j;->b:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/alipay/mobile/common/a/j;->c:I

    iget v3, p1, Lcom/alipay/mobile/common/a/j;->c:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/alipay/mobile/common/a/j;->d:I

    iget v3, p1, Lcom/alipay/mobile/common/a/j;->d:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/alipay/mobile/common/a/j;->e:I

    iget v3, p1, Lcom/alipay/mobile/common/a/j;->e:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/alipay/mobile/common/a/j;->f:Z

    iget-boolean v3, p1, Lcom/alipay/mobile/common/a/j;->f:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/alipay/mobile/common/a/j;->g:I

    iget v3, p1, Lcom/alipay/mobile/common/a/j;->g:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/alipay/mobile/common/a/j;->h:Z

    iget-boolean v3, p1, Lcom/alipay/mobile/common/a/j;->h:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/alipay/mobile/common/a/j;->i:Z

    iget-boolean v3, p1, Lcom/alipay/mobile/common/a/j;->i:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/alipay/mobile/common/a/j;->j:Z

    iget-boolean v3, p1, Lcom/alipay/mobile/common/a/j;->j:Z

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/alipay/mobile/common/a/j;->k:Z

    iget-boolean v3, p1, Lcom/alipay/mobile/common/a/j;->k:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/common/a/j;->l:Landroid/graphics/Bitmap$Config;

    iget-object v3, p1, Lcom/alipay/mobile/common/a/j;->l:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->g:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->h:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->i:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/alipay/mobile/common/a/j;->c:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/alipay/mobile/common/a/j;->d:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/alipay/mobile/common/a/j;->e:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->f:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/alipay/mobile/common/a/j;->g:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->h:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->i:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->j:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/alipay/mobile/common/a/j;->k:Z

    if-eqz v3, :cond_5

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alipay/mobile/common/a/j;->l:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/a/j;->l:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->m:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->j:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->k:Z

    return v0
.end method

.method public l()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/a/j;->l:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->u:Z

    return v0
.end method

.method public n()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/a/j;->v:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public o()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/a/j;->s:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public p()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/a/j;->t:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->r:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->w:Z

    return v0
.end method

.method public s()Lcom/alipay/mobile/common/a/j$a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/a/j;->x:Lcom/alipay/mobile/common/a/j$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "_"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->c:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->d:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->e:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alipay/mobile/common/a/j;->g:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/common/a/j;->l:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->f:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->h:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->i:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/alipay/mobile/common/a/j;->j:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/alipay/mobile/common/a/j;->k:Z

    if-eqz v4, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method
