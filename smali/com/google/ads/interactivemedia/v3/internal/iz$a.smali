.class public final enum Lcom/google/ads/interactivemedia/v3/internal/iz$a;
.super Ljava/lang/Enum;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/interactivemedia/v3/internal/iz$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/interactivemedia/v3/internal/iz$a;

.field public static final enum b:Lcom/google/ads/interactivemedia/v3/internal/iz$a;

.field public static final enum c:Lcom/google/ads/interactivemedia/v3/internal/iz$a;

.field public static final enum d:Lcom/google/ads/interactivemedia/v3/internal/iz$a;

.field private static final synthetic e:[Lcom/google/ads/interactivemedia/v3/internal/iz$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/iz$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/iz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    const-string v1, "ABRIDGED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/iz$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/iz$a;->b:Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    const-string v1, "LIFECYCLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/iz$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/iz$a;->c:Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    const-string v1, "PROD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/iz$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/iz$a;->d:Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/iz$a;->a:Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/iz$a;->b:Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/iz$a;->c:Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/iz$a;->d:Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/iz$a;->e:[Lcom/google/ads/interactivemedia/v3/internal/iz$a;

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

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/iz$a;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/iz$a;->ordinal()I

    move-result p0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/iz;->a:Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/iz$a;->ordinal()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/iz$a;
    .locals 1

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/internal/iz$a;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/iz$a;->e:[Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/internal/iz$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/internal/iz$a;

    return-object v0
.end method
