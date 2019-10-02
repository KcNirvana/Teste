.class public final enum Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAdBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaCacheFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

.field public static final enum NONE:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

.field private static final synthetic b:[Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;


# instance fields
.field private final a:Lcom/facebook/ads/internal/t/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    const-string v1, "NONE"

    sget-object v2, Lcom/facebook/ads/internal/t/d;->a:Lcom/facebook/ads/internal/t/d;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/t/d;)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->NONE:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    new-instance v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    const-string v1, "ALL"

    sget-object v2, Lcom/facebook/ads/internal/t/d;->b:Lcom/facebook/ads/internal/t/d;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/t/d;)V

    sput-object v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    sget-object v1, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->NONE:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->b:[Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/facebook/ads/internal/t/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/t/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->a:Lcom/facebook/ads/internal/t/d;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;
    .locals 1

    const-class v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    return-object p0
.end method

.method public static values()[Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;
    .locals 1

    sget-object v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->b:[Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    invoke-virtual {v0}, [Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    return-object v0
.end method


# virtual methods
.method a()Lcom/facebook/ads/internal/t/d;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->a:Lcom/facebook/ads/internal/t/d;

    return-object v0
.end method

.method public getCacheFlagValue()J
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->a:Lcom/facebook/ads/internal/t/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/d;->a()J

    move-result-wide v0

    return-wide v0
.end method
