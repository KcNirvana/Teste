.class public final enum Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum biA:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

.field private static final synthetic biB:[Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

.field public static final enum biy:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

.field public static final enum biz:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    const-string/jumbo v1, "NETWORK"

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->biy:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    const-string/jumbo v1, "DISC_CACHE"

    invoke-direct {v0, v1, v3}, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->biz:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    const-string/jumbo v1, "MEMORY_CACHE"

    invoke-direct {v0, v1, v4}, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->biA:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->biy:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->biz:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->biA:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->biB:[Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
    .locals 1

    const-class v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    return-object v0
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
    .locals 1

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->biB:[Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    return-object v0
.end method
