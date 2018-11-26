.class final Lcom/nostra13/universalimageloader/core/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final bjG:Lcom/nostra13/universalimageloader/core/c/a;

.field private final bjH:Lcom/nostra13/universalimageloader/core/c;

.field private final bjI:Lcom/nostra13/universalimageloader/core/e/d;

.field private final bjJ:Ljava/lang/String;

.field private final bjK:Lcom/nostra13/universalimageloader/core/b/a;

.field private final bjL:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

.field private final bjM:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/h;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/b;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/h;->bkS:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/b;->bjJ:Ljava/lang/String;

    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/h;->bkU:Lcom/nostra13/universalimageloader/core/e/d;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/b;->bjI:Lcom/nostra13/universalimageloader/core/e/d;

    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/h;->bkT:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/b;->bjM:Ljava/lang/String;

    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/h;->options:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/n;->bHY()Lcom/nostra13/universalimageloader/core/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/b;->bjG:Lcom/nostra13/universalimageloader/core/c/a;

    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/h;->bkW:Lcom/nostra13/universalimageloader/core/b/a;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/b;->bjK:Lcom/nostra13/universalimageloader/core/b/a;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/b;->bjH:Lcom/nostra13/universalimageloader/core/c;

    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/b;->bjL:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    return-void
.end method

.method private bGu()Z
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b;->bjH:Lcom/nostra13/universalimageloader/core/c;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b;->bjI:Lcom/nostra13/universalimageloader/core/e/d;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/c;->bGz(Lcom/nostra13/universalimageloader/core/e/d;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b;->bjM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b;->bjI:Lcom/nostra13/universalimageloader/core/e/d;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/e/d;->bFS()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/b;->bjM:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b;->bjK:Lcom/nostra13/universalimageloader/core/b/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b;->bjJ:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/b;->bjI:Lcom/nostra13/universalimageloader/core/e/d;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/e/d;->bFR()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/b/a;->bFl(Ljava/lang/String;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/b;->bGu()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ImageAware is reused for another image. Task is cancelled. [%s]"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/b;->bjM:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b;->bjK:Lcom/nostra13/universalimageloader/core/b/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b;->bjJ:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/b;->bjI:Lcom/nostra13/universalimageloader/core/e/d;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/e/d;->bFR()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/b/a;->bFl(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/b;->bjL:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/b;->bjM:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/a/a;->bDO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b;->bjG:Lcom/nostra13/universalimageloader/core/c/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/b;->bjI:Lcom/nostra13/universalimageloader/core/e/d;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/b;->bjL:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-interface {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/c/a;->bFo(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/e/d;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b;->bjH:Lcom/nostra13/universalimageloader/core/c;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b;->bjI:Lcom/nostra13/universalimageloader/core/e/d;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/c;->bGB(Lcom/nostra13/universalimageloader/core/e/d;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b;->bjK:Lcom/nostra13/universalimageloader/core/b/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b;->bjJ:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/b;->bjI:Lcom/nostra13/universalimageloader/core/e/d;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/e/d;->bFR()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/b;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/b/a;->bcn(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
