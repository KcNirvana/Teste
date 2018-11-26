.class public final Lcom/nostra13/universalimageloader/core/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final bjX:Lcom/nostra13/universalimageloader/core/download/c;

.field final bjY:Lcom/nostra13/universalimageloader/core/download/c;

.field final bjZ:Lcom/nostra13/universalimageloader/core/download/c;

.field final bka:Lcom/nostra13/universalimageloader/core/a/a;

.field final bkb:Lcom/nostra13/universalimageloader/b/b/a;

.field final bkc:Lcom/nostra13/universalimageloader/b/a/a;

.field final bkd:I

.field final bke:I

.field final bkf:Lcom/nostra13/universalimageloader/core/d/a;

.field final bkg:Ljava/util/concurrent/Executor;

.field final bkh:Ljava/util/concurrent/Executor;

.field final bki:Z

.field final bkj:Z

.field final bkk:I

.field final bkl:I

.field final bkm:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field final bkn:Lcom/nostra13/universalimageloader/core/n;

.field final bko:I

.field final bkp:I

.field final resources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bGS(Lcom/nostra13/universalimageloader/core/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->resources:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bHc(Lcom/nostra13/universalimageloader/core/e;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/d;->bkp:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bHa(Lcom/nostra13/universalimageloader/core/e;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/d;->bko:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bHb(Lcom/nostra13/universalimageloader/core/e;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/d;->bkd:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bGZ(Lcom/nostra13/universalimageloader/core/e;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/d;->bke:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bHe(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/core/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->bkf:Lcom/nostra13/universalimageloader/core/d/a;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bHf(Lcom/nostra13/universalimageloader/core/e;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->bkg:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bHg(Lcom/nostra13/universalimageloader/core/e;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->bkh:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bHi(Lcom/nostra13/universalimageloader/core/e;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/d;->bkk:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bHj(Lcom/nostra13/universalimageloader/core/e;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/d;->bkl:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bHh(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->bkm:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bGX(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->bkc:Lcom/nostra13/universalimageloader/b/a/a;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bHd(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->bkb:Lcom/nostra13/universalimageloader/b/b/a;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bGW(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/core/n;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->bkn:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bGY(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/core/download/c;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->bjX:Lcom/nostra13/universalimageloader/core/download/c;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bGV(Lcom/nostra13/universalimageloader/core/e;)Lcom/nostra13/universalimageloader/core/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->bka:Lcom/nostra13/universalimageloader/core/a/a;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bGT(Lcom/nostra13/universalimageloader/core/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->bki:Z

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bGU(Lcom/nostra13/universalimageloader/core/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->bkj:Z

    new-instance v0, Lcom/nostra13/universalimageloader/core/f;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/d;->bjX:Lcom/nostra13/universalimageloader/core/download/c;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/f;-><init>(Lcom/nostra13/universalimageloader/core/download/c;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->bjY:Lcom/nostra13/universalimageloader/core/download/c;

    new-instance v0, Lcom/nostra13/universalimageloader/core/g;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/d;->bjX:Lcom/nostra13/universalimageloader/core/download/c;

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/g;-><init>(Lcom/nostra13/universalimageloader/core/download/c;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->bjZ:Lcom/nostra13/universalimageloader/core/download/c;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/e;->bHk(Lcom/nostra13/universalimageloader/core/e;)Z

    move-result v0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/a/a;->bDV(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/e;Lcom/nostra13/universalimageloader/core/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/d;-><init>(Lcom/nostra13/universalimageloader/core/e;)V

    return-void
.end method


# virtual methods
.method bGM()Lcom/nostra13/universalimageloader/core/assist/b;
    .locals 3

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, p0, Lcom/nostra13/universalimageloader/core/d;->bkp:I

    if-gtz v0, :cond_0

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_0
    iget v1, p0, Lcom/nostra13/universalimageloader/core/d;->bko:I

    if-gtz v1, :cond_1

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_1
    new-instance v2, Lcom/nostra13/universalimageloader/core/assist/b;

    invoke-direct {v2, v0, v1}, Lcom/nostra13/universalimageloader/core/assist/b;-><init>(II)V

    return-object v2
.end method
