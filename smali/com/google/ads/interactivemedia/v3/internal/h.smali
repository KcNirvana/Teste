.class public final enum Lcom/google/ads/interactivemedia/v3/internal/h;
.super Ljava/lang/Enum;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/interactivemedia/v3/internal/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/interactivemedia/v3/internal/h;

.field public static final enum b:Lcom/google/ads/interactivemedia/v3/internal/h;

.field public static final enum c:Lcom/google/ads/interactivemedia/v3/internal/h;

.field private static final synthetic e:[Lcom/google/ads/interactivemedia/v3/internal/h;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/h;

    const-string v1, "NATIVE"

    const-string v2, "native"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/h;->a:Lcom/google/ads/interactivemedia/v3/internal/h;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/h;

    const-string v1, "JAVASCRIPT"

    const-string v2, "javascript"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/interactivemedia/v3/internal/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/h;->b:Lcom/google/ads/interactivemedia/v3/internal/h;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/h;

    const-string v1, "NONE"

    const-string v2, "none"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/h;->c:Lcom/google/ads/interactivemedia/v3/internal/h;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/h;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/h;->a:Lcom/google/ads/interactivemedia/v3/internal/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/h;->b:Lcom/google/ads/interactivemedia/v3/internal/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/h;->c:Lcom/google/ads/interactivemedia/v3/internal/h;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/h;->e:[Lcom/google/ads/interactivemedia/v3/internal/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/h;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/h;
    .locals 1

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/h;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/internal/h;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/h;->e:[Lcom/google/ads/interactivemedia/v3/internal/h;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/internal/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/internal/h;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/h;->d:Ljava/lang/String;

    return-object v0
.end method
