.class public final enum Lcom/google/ads/interactivemedia/v3/internal/in$a;
.super Ljava/lang/Enum;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/in;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/interactivemedia/v3/internal/in$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/interactivemedia/v3/internal/in$a;

.field public static final enum AUTO:Lcom/google/ads/interactivemedia/v3/internal/in$a;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/gt;
        a = "auto"
    .end annotation
.end field

.field public static final enum CLICK:Lcom/google/ads/interactivemedia/v3/internal/in$a;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/gt;
        a = "click"
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/google/ads/interactivemedia/v3/internal/in$a;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/gt;
        a = "unknown"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/in$a;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/in$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/in$a;->AUTO:Lcom/google/ads/interactivemedia/v3/internal/in$a;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/in$a;

    const-string v1, "CLICK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/in$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/in$a;->CLICK:Lcom/google/ads/interactivemedia/v3/internal/in$a;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/in$a;

    const-string v1, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/in$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/in$a;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/internal/in$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/in$a;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/in$a;->AUTO:Lcom/google/ads/interactivemedia/v3/internal/in$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/in$a;->CLICK:Lcom/google/ads/interactivemedia/v3/internal/in$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/in$a;->UNKNOWN:Lcom/google/ads/interactivemedia/v3/internal/in$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/in$a;->$VALUES:[Lcom/google/ads/interactivemedia/v3/internal/in$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/in$a;
    .locals 1

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/in$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/in$a;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/internal/in$a;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/in$a;->$VALUES:[Lcom/google/ads/interactivemedia/v3/internal/in$a;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/internal/in$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/internal/in$a;

    return-object v0
.end method
