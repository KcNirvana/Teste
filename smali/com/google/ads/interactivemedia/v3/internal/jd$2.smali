.class synthetic Lcom/google/ads/interactivemedia/v3/internal/jd$2;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/jd;
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
    .locals 12

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->values()[Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->c:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->c:[I

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->Html:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->c:[I

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->IFrame:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->c:[I

    sget-object v4, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->Static:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->values()[Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    :try_start_3
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->omidReady:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->omidUnavailable:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->initialized:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v3, 0x4

    :try_start_6
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->log:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/4 v4, 0x5

    :try_start_7
    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->displayCompanions:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v5, 0x6

    :try_start_8
    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->adsLoaded:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/4 v6, 0x7

    :try_start_9
    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->streamInitialized:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v7, 0x8

    :try_start_a
    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->error:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v8, 0x9

    :try_start_b
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->adMetadata:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->loaded:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0xa

    aput v11, v9, v10
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->contentPauseRequested:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0xb

    aput v11, v9, v10
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->contentResumeRequested:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0xc

    aput v11, v9, v10
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->complete:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0xd

    aput v11, v9, v10
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->allAdsCompleted:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0xe

    aput v11, v9, v10
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->cuepointsChanged:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0xf

    aput v11, v9, v10
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->skip:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x10

    aput v11, v9, v10
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->start:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x11

    aput v11, v9, v10
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->pause:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x12

    aput v11, v9, v10
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->resume:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x13

    aput v11, v9, v10
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->firstquartile:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x14

    aput v11, v9, v10
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->midpoint:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x15

    aput v11, v9, v10
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->thirdquartile:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x16

    aput v11, v9, v10
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->click:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x17

    aput v11, v9, v10
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->skippableStateChanged:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x18

    aput v11, v9, v10
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->videoClicked:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x19

    aput v11, v9, v10
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->videoIconClicked:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x1a

    aput v11, v9, v10
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->adProgress:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x1b

    aput v11, v9, v10
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->adBreakReady:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x1c

    aput v11, v9, v10
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->adBreakStarted:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x1d

    aput v11, v9, v10
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->adBreakEnded:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x1e

    aput v11, v9, v10
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->impression:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x1f

    aput v11, v9, v10
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->mute:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x20

    aput v11, v9, v10
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->unmute:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x21

    aput v11, v9, v10
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->volumeChange:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x22

    aput v11, v9, v10
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->getViewability:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x23

    aput v11, v9, v10
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->b:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->reportVastEvent:Lcom/google/ads/interactivemedia/v3/internal/jc$c;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$c;->ordinal()I

    move-result v10

    const/16 v11, 0x24

    aput v11, v9, v10
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->values()[Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->a:[I

    :try_start_27
    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->a:[I

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->adsManager:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->a:[I

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->activityMonitor:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->ordinal()I

    move-result v9

    aput v1, v0, v9
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->adsLoader:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->displayContainer:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->i18n:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->omid:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->webViewLoaded:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/jd$2;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->log:Lcom/google/ads/interactivemedia/v3/internal/jc$b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/jc$b;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    return-void
.end method
