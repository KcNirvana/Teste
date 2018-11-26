.class public Lcom/nostra13/universalimageloader/core/o;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private blD:Z

.field private blE:Z

.field private blF:Z

.field private blG:Landroid/graphics/BitmapFactory$Options;

.field private blH:I

.field private blI:Lcom/nostra13/universalimageloader/core/c/a;

.field private blJ:Ljava/lang/Object;

.field private blK:Landroid/graphics/drawable/Drawable;

.field private blL:Landroid/graphics/drawable/Drawable;

.field private blM:Landroid/graphics/drawable/Drawable;

.field private blN:I

.field private blO:I

.field private blP:I

.field private blQ:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private blR:Z

.field private blS:Lcom/nostra13/universalimageloader/core/d/a;

.field private blT:Lcom/nostra13/universalimageloader/core/d/a;

.field private blU:Z

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/nostra13/universalimageloader/core/o;->blP:I

    iput v1, p0, Lcom/nostra13/universalimageloader/core/o;->blN:I

    iput v1, p0, Lcom/nostra13/universalimageloader/core/o;->blO:I

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/o;->blM:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/o;->blK:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/o;->blL:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/o;->blU:Z

    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/o;->blD:Z

    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/o;->blE:Z

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bim:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blQ:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blG:Landroid/graphics/BitmapFactory$Options;

    iput v1, p0, Lcom/nostra13/universalimageloader/core/o;->blH:I

    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/o;->blF:Z

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/o;->blJ:Ljava/lang/Object;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/o;->blT:Lcom/nostra13/universalimageloader/core/d/a;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/o;->blS:Lcom/nostra13/universalimageloader/core/d/a;

    invoke-static {}, Lcom/nostra13/universalimageloader/core/i;->bHu()Lcom/nostra13/universalimageloader/core/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blI:Lcom/nostra13/universalimageloader/core/c/a;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/o;->handler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/nostra13/universalimageloader/core/o;->blR:Z

    return-void
.end method

.method static synthetic bIL(Lcom/nostra13/universalimageloader/core/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/o;->blD:Z

    return v0
.end method

.method static synthetic bIM(Lcom/nostra13/universalimageloader/core/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/o;->blE:Z

    return v0
.end method

.method static synthetic bIN(Lcom/nostra13/universalimageloader/core/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/o;->blF:Z

    return v0
.end method

.method static synthetic bIO(Lcom/nostra13/universalimageloader/core/o;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blG:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic bIP(Lcom/nostra13/universalimageloader/core/o;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/o;->blH:I

    return v0
.end method

.method static synthetic bIQ(Lcom/nostra13/universalimageloader/core/o;)Lcom/nostra13/universalimageloader/core/c/a;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blI:Lcom/nostra13/universalimageloader/core/c/a;

    return-object v0
.end method

.method static synthetic bIR(Lcom/nostra13/universalimageloader/core/o;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blJ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic bIS(Lcom/nostra13/universalimageloader/core/o;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic bIT(Lcom/nostra13/universalimageloader/core/o;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blK:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic bIU(Lcom/nostra13/universalimageloader/core/o;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blL:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic bIV(Lcom/nostra13/universalimageloader/core/o;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blM:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic bIW(Lcom/nostra13/universalimageloader/core/o;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/o;->blN:I

    return v0
.end method

.method static synthetic bIX(Lcom/nostra13/universalimageloader/core/o;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/o;->blO:I

    return v0
.end method

.method static synthetic bIY(Lcom/nostra13/universalimageloader/core/o;)I
    .locals 1

    iget v0, p0, Lcom/nostra13/universalimageloader/core/o;->blP:I

    return v0
.end method

.method static synthetic bIZ(Lcom/nostra13/universalimageloader/core/o;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blQ:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method static synthetic bJa(Lcom/nostra13/universalimageloader/core/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/o;->blR:Z

    return v0
.end method

.method static synthetic bJb(Lcom/nostra13/universalimageloader/core/o;)Lcom/nostra13/universalimageloader/core/d/a;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blS:Lcom/nostra13/universalimageloader/core/d/a;

    return-object v0
.end method

.method static synthetic bJc(Lcom/nostra13/universalimageloader/core/o;)Lcom/nostra13/universalimageloader/core/d/a;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blT:Lcom/nostra13/universalimageloader/core/d/a;

    return-object v0
.end method

.method static synthetic bJd(Lcom/nostra13/universalimageloader/core/o;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/o;->blU:Z

    return v0
.end method


# virtual methods
.method public bIB(Z)Lcom/nostra13/universalimageloader/core/o;
    .locals 0

    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/o;->blD:Z

    return-object p0
.end method

.method public bIC(Z)Lcom/nostra13/universalimageloader/core/o;
    .locals 0

    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/o;->blE:Z

    return-object p0
.end method

.method public bID(Z)Lcom/nostra13/universalimageloader/core/o;
    .locals 0

    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/o;->blF:Z

    return-object p0
.end method

.method public bIE(I)Lcom/nostra13/universalimageloader/core/o;
    .locals 0

    iput p1, p0, Lcom/nostra13/universalimageloader/core/o;->blO:I

    return-object p0
.end method

.method public bIF(I)Lcom/nostra13/universalimageloader/core/o;
    .locals 0

    iput p1, p0, Lcom/nostra13/universalimageloader/core/o;->blN:I

    return-object p0
.end method

.method public bIG(Lcom/nostra13/universalimageloader/core/d/a;)Lcom/nostra13/universalimageloader/core/o;
    .locals 0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/o;->blT:Lcom/nostra13/universalimageloader/core/d/a;

    return-object p0
.end method

.method public bIH(Lcom/nostra13/universalimageloader/core/n;)Lcom/nostra13/universalimageloader/core/o;
    .locals 1

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIv(Lcom/nostra13/universalimageloader/core/n;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/o;->blP:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIt(Lcom/nostra13/universalimageloader/core/n;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/o;->blN:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIu(Lcom/nostra13/universalimageloader/core/n;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/o;->blO:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIs(Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blM:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIq(Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blK:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIr(Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blL:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIA(Lcom/nostra13/universalimageloader/core/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/o;->blU:Z

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIi(Lcom/nostra13/universalimageloader/core/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/o;->blD:Z

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIj(Lcom/nostra13/universalimageloader/core/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/o;->blE:Z

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIw(Lcom/nostra13/universalimageloader/core/n;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blQ:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIl(Lcom/nostra13/universalimageloader/core/n;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blG:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIm(Lcom/nostra13/universalimageloader/core/n;)I

    move-result v0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/o;->blH:I

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIk(Lcom/nostra13/universalimageloader/core/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/o;->blF:Z

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIo(Lcom/nostra13/universalimageloader/core/n;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blJ:Ljava/lang/Object;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIz(Lcom/nostra13/universalimageloader/core/n;)Lcom/nostra13/universalimageloader/core/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blT:Lcom/nostra13/universalimageloader/core/d/a;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIy(Lcom/nostra13/universalimageloader/core/n;)Lcom/nostra13/universalimageloader/core/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blS:Lcom/nostra13/universalimageloader/core/d/a;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIn(Lcom/nostra13/universalimageloader/core/n;)Lcom/nostra13/universalimageloader/core/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->blI:Lcom/nostra13/universalimageloader/core/c/a;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIp(Lcom/nostra13/universalimageloader/core/n;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->handler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/nostra13/universalimageloader/core/n;->bIx(Lcom/nostra13/universalimageloader/core/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostra13/universalimageloader/core/o;->blR:Z

    return-object p0
.end method

.method public bII(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/o;
    .locals 0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/o;->blQ:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object p0
.end method

.method bIJ(Z)Lcom/nostra13/universalimageloader/core/o;
    .locals 0

    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/o;->blR:Z

    return-object p0
.end method

.method public bIK(I)Lcom/nostra13/universalimageloader/core/o;
    .locals 0

    iput p1, p0, Lcom/nostra13/universalimageloader/core/o;->blP:I

    return-object p0
.end method

.method public build()Lcom/nostra13/universalimageloader/core/n;
    .locals 2

    new-instance v0, Lcom/nostra13/universalimageloader/core/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/n;-><init>(Lcom/nostra13/universalimageloader/core/o;Lcom/nostra13/universalimageloader/core/n;)V

    return-object v0
.end method
