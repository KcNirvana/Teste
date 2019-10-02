.class final synthetic Lcom/ooyala/pulse/k$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/pulse/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/ooyala/pulse/k$a;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ooyala/pulse/k$2;->c:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/ooyala/pulse/k$2;->c:[I

    sget v2, Lcom/ooyala/pulse/k$a;->a:I

    sub-int/2addr v2, v0

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/ooyala/pulse/k$2;->c:[I

    sget v3, Lcom/ooyala/pulse/k$a;->b:I

    sub-int/2addr v3, v0

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/ooyala/pulse/k$2;->c:[I

    sget v4, Lcom/ooyala/pulse/k$a;->c:I

    sub-int/2addr v4, v0

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/ooyala/pulse/k$2;->c:[I

    sget v5, Lcom/ooyala/pulse/k$a;->d:I

    sub-int/2addr v5, v0

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/ooyala/adtech/TrackingError;->values()[Lcom/ooyala/adtech/TrackingError;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/ooyala/pulse/k$2;->b:[I

    :try_start_4
    sget-object v4, Lcom/ooyala/pulse/k$2;->b:[I

    sget-object v5, Lcom/ooyala/adtech/TrackingError;->CREATIVE_MEDIA_FILE_DISPLAY_ERROR:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v5}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/ooyala/pulse/k$2;->b:[I

    sget-object v5, Lcom/ooyala/adtech/TrackingError;->CREATIVE_MEDIA_FILE_NOT_FOUND:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v5}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/ooyala/pulse/k$2;->b:[I

    sget-object v5, Lcom/ooyala/adtech/TrackingError;->CREATIVE_MEDIA_FILE_TIMEOUT:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v5}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, Lcom/ooyala/pulse/k$2;->b:[I

    sget-object v4, Lcom/ooyala/adtech/TrackingError;->CREATIVE_NO_SUPPORTED_MEDIA_FILE_FOUND:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v4}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v4

    aput v3, v2, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Lcom/ooyala/pulse/k$2;->b:[I

    sget-object v3, Lcom/ooyala/adtech/TrackingError;->AD_GENERAL_ERROR:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v3}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lcom/ooyala/pulse/k$2;->b:[I

    sget-object v3, Lcom/ooyala/adtech/TrackingError;->AD_NO_AD:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v3}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v2, Lcom/ooyala/pulse/k$2;->b:[I

    sget-object v3, Lcom/ooyala/adtech/TrackingError;->AD_TYPE_NOT_SUPPORTED:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v3}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    invoke-static {}, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->values()[Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/ooyala/pulse/k$2;->a:[I

    :try_start_b
    sget-object v2, Lcom/ooyala/pulse/k$2;->a:[I

    sget-object v3, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->ALWAYS:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    invoke-virtual {v3}, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/ooyala/pulse/k$2;->a:[I

    sget-object v2, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->AFTER_FIRST_COMPLETION:Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;

    invoke-virtual {v2}, Lcom/ooyala/adtech/LinearCreative$SkipButtonMode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
