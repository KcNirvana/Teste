.class public final enum Lcom/google/ads/interactivemedia/v3/internal/iy$g;
.super Ljava/lang/Enum;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ads/interactivemedia/v3/internal/iy$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/interactivemedia/v3/internal/iy$g;

.field public static final enum b:Lcom/google/ads/interactivemedia/v3/internal/iy$g;

.field private static final synthetic d:[Lcom/google/ads/interactivemedia/v3/internal/iy$g;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/iy$g;

    const-string v1, "TYPE_VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/ads/interactivemedia/v3/internal/iy$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/iy$g;->a:Lcom/google/ads/interactivemedia/v3/internal/iy$g;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/iy$g;

    const-string v1, "TYPE_AUDIO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/ads/interactivemedia/v3/internal/iy$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/iy$g;->b:Lcom/google/ads/interactivemedia/v3/internal/iy$g;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/iy$g;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/iy$g;->a:Lcom/google/ads/interactivemedia/v3/internal/iy$g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/iy$g;->b:Lcom/google/ads/interactivemedia/v3/internal/iy$g;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/iy$g;->d:[Lcom/google/ads/interactivemedia/v3/internal/iy$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/iy$g;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/iy$g;
    .locals 1

    const-class v0, Lcom/google/ads/interactivemedia/v3/internal/iy$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/iy$g;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/internal/iy$g;
    .locals 1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/iy$g;->d:[Lcom/google/ads/interactivemedia/v3/internal/iy$g;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/internal/iy$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/internal/iy$g;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy$g;->c:I

    return v0
.end method
