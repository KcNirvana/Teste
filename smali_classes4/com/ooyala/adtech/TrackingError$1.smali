.class final synthetic Lcom/ooyala/adtech/TrackingError$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/adtech/TrackingError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ooyala/adtech/TrackingError;->values()[Lcom/ooyala/adtech/TrackingError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ooyala/adtech/TrackingError$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/ooyala/adtech/TrackingError$1;->a:[I

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->AD_TYPE_NOT_SUPPORTED:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v1}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/ooyala/adtech/TrackingError$1;->a:[I

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->AD_NO_AD:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v1}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/ooyala/adtech/TrackingError$1;->a:[I

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->AD_GENERAL_ERROR:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v1}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/ooyala/adtech/TrackingError$1;->a:[I

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->CREATIVE_MEDIA_FILE_NOT_FOUND:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v1}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/ooyala/adtech/TrackingError$1;->a:[I

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->CREATIVE_MEDIA_FILE_TIMEOUT:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v1}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/ooyala/adtech/TrackingError$1;->a:[I

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->CREATIVE_NO_SUPPORTED_MEDIA_FILE_FOUND:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v1}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/ooyala/adtech/TrackingError$1;->a:[I

    sget-object v1, Lcom/ooyala/adtech/TrackingError;->CREATIVE_MEDIA_FILE_DISPLAY_ERROR:Lcom/ooyala/adtech/TrackingError;

    invoke-virtual {v1}, Lcom/ooyala/adtech/TrackingError;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
