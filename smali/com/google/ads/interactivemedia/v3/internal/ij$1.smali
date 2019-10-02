.class synthetic Lcom/google/ads/interactivemedia/v3/internal/ij$1;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/ij;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->values()[Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/ij$1;->b:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ij$1;->b:[I

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/jc$a;->values()[Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/ij$1;->a:[I

    :try_start_1
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ij$1;->a:[I

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jc$a;->b:Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/jc$a;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ij$1;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$a;->a:Lcom/google/ads/interactivemedia/v3/internal/jc$a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/jc$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
