.class public final enum Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum bij:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum bik:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum bil:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum bim:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum bin:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field public static final enum bio:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

.field private static final synthetic bip:[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bin:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string/jumbo v1, "NONE_SAFE"

    invoke-direct {v0, v1, v4}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bio:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string/jumbo v1, "IN_SAMPLE_POWER_OF_2"

    invoke-direct {v0, v1, v5}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bim:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string/jumbo v1, "IN_SAMPLE_INT"

    invoke-direct {v0, v1, v6}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bij:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string/jumbo v1, "EXACTLY"

    invoke-direct {v0, v1, v7}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bik:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const-string/jumbo v1, "EXACTLY_STRETCHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bil:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bin:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bio:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bim:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bij:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bik:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bil:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bip:[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    const-class v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;
    .locals 1

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->bip:[Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    return-object v0
.end method
