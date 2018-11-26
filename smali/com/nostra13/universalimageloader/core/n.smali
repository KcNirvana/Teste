.class public final Lcom/nostra13/universalimageloader/core/n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final blA:Lcom/nostra13/universalimageloader/core/d/a;

.field private final blB:Lcom/nostra13/universalimageloader/core/d/a;

.field private final blC:Z

.field private final bll:Z

.field private final blm:Z

.field private final bln:Z

.field private final blo:Landroid/graphics/BitmapFactory$Options;

.field private final blp:I

.field private final blq:Lcom/nostra13/universalimageloader/core/c/a;

.field private final blr:Ljava/lang/Object;

.field private final bls:Landroid/graphics/drawable/Drawable;

.field private final blt:Landroid/graphics/drawable/Drawable;

.field private final blu:Landroid/graphics/drawable/Drawable;

.field private final blv:I

.field private final blw:I

.field private final blx:I

.field private final bly:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private final blz:Z

.field private final handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bIY(Lcom/nostra13/universalimageloader/core/o;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/n;->blx:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bIW(Lcom/nostra13/universalimageloader/core/o;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/n;->blv:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bIX(Lcom/nostra13/universalimageloader/core/o;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/n;->blw:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bIV(Lcom/nostra13/universalimageloader/core/o;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blu:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bIT(Lcom/nostra13/universalimageloader/core/o;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->bls:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bIU(Lcom/nostra13/universalimageloader/core/o;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blt:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bJd(Lcom/nostra13/universalimageloader/core/o;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/n;->blC:Z

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bIL(Lcom/nostra13/universalimageloader/core/o;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/n;->bll:Z

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bIM(Lcom/nostra13/universalimageloader/core/o;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/n;->blm:Z

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bIZ(Lcom/nostra13/universalimageloader/core/o;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->bly:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bIO(Lcom/nostra13/universalimageloader/core/o;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blo:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bIP(Lcom/nostra13/universalimageloader/core/o;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/n;->blp:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bIN(Lcom/nostra13/universalimageloader/core/o;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/n;->bln:Z

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bIR(Lcom/nostra13/universalimageloader/core/o;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blr:Ljava/lang/Object;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bJc(Lcom/nostra13/universalimageloader/core/o;)Lcom/nostra13/universalimageloader/core/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blB:Lcom/nostra13/universalimageloader/core/d/a;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bJb(Lcom/nostra13/universalimageloader/core/o;)Lcom/nostra13/universalimageloader/core/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blA:Lcom/nostra13/universalimageloader/core/d/a;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bIQ(Lcom/nostra13/universalimageloader/core/o;)Lcom/nostra13/universalimageloader/core/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blq:Lcom/nostra13/universalimageloader/core/c/a;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bIS(Lcom/nostra13/universalimageloader/core/o;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->handler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/o;->bJa(Lcom/nostra13/universalimageloader/core/o;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/n;->blz:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/o;Lcom/nostra13/universalimageloader/core/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/n;-><init>(Lcom/nostra13/universalimageloader/core/o;)V

    return-void
.end method

.method public static bHZ()Lcom/nostra13/universalimageloader/core/n;
    .locals 1

    new-instance v0, Lcom/nostra13/universalimageloader/core/o;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/o;-><init>()V

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/o;->build()Lcom/nostra13/universalimageloader/core/n;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bIA(Lcom/nostra13/universalimageloader/core/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/n;->blC:Z

    return v0
.end method

.method static synthetic bIi(Lcom/nostra13/universalimageloader/core/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/n;->bll:Z

    return v0
.end method

.method static synthetic bIj(Lcom/nostra13/universalimageloader/core/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/n;->blm:Z

    return v0
.end method

.method static synthetic bIk(Lcom/nostra13/universalimageloader/core/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/n;->bln:Z

    return v0
.end method

.method static synthetic bIl(Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blo:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic bIm(Lcom/nostra13/universalimageloader/core/n;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/n;->blp:I

    return v0
.end method

.method static synthetic bIn(Lcom/nostra13/universalimageloader/core/n;)Lcom/nostra13/universalimageloader/core/c/a;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blq:Lcom/nostra13/universalimageloader/core/c/a;

    return-object v0
.end method

.method static synthetic bIo(Lcom/nostra13/universalimageloader/core/n;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blr:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic bIp(Lcom/nostra13/universalimageloader/core/n;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic bIq(Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->bls:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic bIr(Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blt:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic bIs(Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blu:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic bIt(Lcom/nostra13/universalimageloader/core/n;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/n;->blv:I

    return v0
.end method

.method static synthetic bIu(Lcom/nostra13/universalimageloader/core/n;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/n;->blw:I

    return v0
.end method

.method static synthetic bIv(Lcom/nostra13/universalimageloader/core/n;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/n;->blx:I

    return v0
.end method

.method static synthetic bIw(Lcom/nostra13/universalimageloader/core/n;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->bly:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method static synthetic bIx(Lcom/nostra13/universalimageloader/core/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/n;->blz:Z

    return v0
.end method

.method static synthetic bIy(Lcom/nostra13/universalimageloader/core/n;)Lcom/nostra13/universalimageloader/core/d/a;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blA:Lcom/nostra13/universalimageloader/core/d/a;

    return-object v0
.end method

.method static synthetic bIz(Lcom/nostra13/universalimageloader/core/n;)Lcom/nostra13/universalimageloader/core/d/a;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blB:Lcom/nostra13/universalimageloader/core/d/a;

    return-object v0
.end method


# virtual methods
.method bHM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/n;->blz:Z

    return v0
.end method

.method public bHN()Z
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blB:Lcom/nostra13/universalimageloader/core/d/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bHO()Lcom/nostra13/universalimageloader/core/d/a;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blB:Lcom/nostra13/universalimageloader/core/d/a;

    return-object v0
.end method

.method public bHP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/n;->bll:Z

    return v0
.end method

.method public bHQ()Z
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blA:Lcom/nostra13/universalimageloader/core/d/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bHR()Lcom/nostra13/universalimageloader/core/d/a;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blA:Lcom/nostra13/universalimageloader/core/d/a;

    return-object v0
.end method

.method public bHS()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/nostra13/universalimageloader/core/n;->blp:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bHT()I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/n;->blp:I

    return v0
.end method

.method public bHU()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/n;->blm:Z

    return v0
.end method

.method public bHV()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blr:Ljava/lang/Object;

    return-object v0
.end method

.method public bHW()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/n;->blt:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/nostra13/universalimageloader/core/n;->blw:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bHX(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/n;->blw:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/n;->blw:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blt:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public bHY()Lcom/nostra13/universalimageloader/core/c/a;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blq:Lcom/nostra13/universalimageloader/core/c/a;

    return-object v0
.end method

.method public bIa()Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->bly:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public bIb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/n;->bln:Z

    return v0
.end method

.method public bIc()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blo:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method public bId()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/n;->bls:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/nostra13/universalimageloader/core/n;->blv:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bIe(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/n;->blv:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/n;->blv:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->bls:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public bIf()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/n;->blu:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget v2, p0, Lcom/nostra13/universalimageloader/core/n;->blx:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bIg(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/n;->blx:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nostra13/universalimageloader/core/n;->blx:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->blu:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public bIh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/n;->blC:Z

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/n;->handler:Landroid/os/Handler;

    return-object v0
.end method
