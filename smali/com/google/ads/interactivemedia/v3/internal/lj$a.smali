.class abstract enum Lcom/google/ads/interactivemedia/v3/internal/lj$a;
.super Ljava/lang/Enum;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/kr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/lj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/interactivemedia/v3/internal/lj$a;",
        ">;",
        "Lcom/google/ads/interactivemedia/v3/internal/kr<",
        "Ljava/util/Map$Entry<",
        "**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/interactivemedia/v3/internal/lj$a;

.field public static final enum b:Lcom/google/ads/interactivemedia/v3/internal/lj$a;

.field private static final synthetic c:[Lcom/google/ads/interactivemedia/v3/internal/lj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/lj$a$1;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/lj$a$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/lj$a;->a:Lcom/google/ads/interactivemedia/v3/internal/lj$a;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/lj$a$2;

    const-string v1, "VALUE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/lj$a$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/lj$a;->b:Lcom/google/ads/interactivemedia/v3/internal/lj$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/lj$a;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/lj$a;->a:Lcom/google/ads/interactivemedia/v3/internal/lj$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/lj$a;->b:Lcom/google/ads/interactivemedia/v3/internal/lj$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/lj$a;->c:[Lcom/google/ads/interactivemedia/v3/internal/lj$a;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/ads/interactivemedia/v3/internal/lj$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/lj$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/lj$a;
    .locals 1

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/lj$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/lj$a;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/internal/lj$a;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/lj$a;->c:[Lcom/google/ads/interactivemedia/v3/internal/lj$a;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/internal/lj$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/internal/lj$a;

    return-object v0
.end method
