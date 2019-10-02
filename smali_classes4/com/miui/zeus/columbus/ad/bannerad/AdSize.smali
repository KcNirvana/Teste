.class public final Lcom/miui/zeus/columbus/ad/bannerad/AdSize;
.super Ljava/lang/Object;
.source "AdSize.java"


# static fields
.field public static final BANNER:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

.field public static final MEDIUM_RECTANGLE:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;


# instance fields
.field private height:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;-><init>(II)V

    sput-object v0, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->BANNER:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

    new-instance v0, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2}, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;-><init>(II)V

    sput-object v0, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->MEDIUM_RECTANGLE:Lcom/miui/zeus/columbus/ad/bannerad/AdSize;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    const/16 p2, 0x140

    if-ne p1, p2, :cond_0

    iput p2, p0, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->width:I

    const/16 p1, 0x32

    iput p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->height:I

    goto :goto_0

    :cond_0
    const/16 p2, 0x12c

    if-ne p1, p2, :cond_1

    iput p2, p0, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->width:I

    const/16 p1, 0xfa

    iput p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->height:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x258

    iput p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->width:I

    const/16 p1, 0x13a

    iput p1, p0, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->height:I

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid height for AdSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid width for AdSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->height:I

    return v0
.end method

.method public final getHeightInPixels(Landroid/content/Context;)I
    .locals 4

    iget v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->height:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->width:I

    return v0
.end method

.method public final getWidthInPixels(Landroid/content/Context;)I
    .locals 4

    iget v0, p0, Lcom/miui/zeus/columbus/ad/bannerad/AdSize;->width:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method
