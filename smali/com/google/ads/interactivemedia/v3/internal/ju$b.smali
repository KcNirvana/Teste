.class final enum Lcom/google/ads/interactivemedia/v3/internal/ju$b;
.super Ljava/lang/Enum;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/ju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/interactivemedia/v3/internal/ju$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

.field public static final enum b:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

.field public static final enum c:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

.field private static final synthetic d:[Lcom/google/ads/interactivemedia/v3/internal/ju$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    const-string v1, "NOT_SKIPPABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ju$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ju$b;->a:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    const-string v1, "WAITING_TO_SKIP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ju$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ju$b;->b:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    const-string v1, "SKIPPABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/ju$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ju$b;->c:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ju$b;->a:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ju$b;->b:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ju$b;->c:Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ju$b;->d:[Lcom/google/ads/interactivemedia/v3/internal/ju$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ju$b;
    .locals 1

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/internal/ju$b;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ju$b;->d:[Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/internal/ju$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/internal/ju$b;

    return-object v0
.end method
