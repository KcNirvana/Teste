.class synthetic Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;
.super Ljava/lang/Object;
.source "YouboraLibraryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kaltura$playkit$PlayerEvent$Type:[I

.field static final synthetic $SwitchMap$com$kaltura$playkit$PlayerState:[I

.field static final synthetic $SwitchMap$com$kaltura$playkit$plugins$ads$AdEvent$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->values()[Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$plugins$ads$AdEvent$Type:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$plugins$ads$AdEvent$Type:[I

    sget-object v2, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->STARTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-virtual {v2}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$plugins$ads$AdEvent$Type:[I

    sget-object v3, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CONTENT_RESUME_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-virtual {v3}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$plugins$ads$AdEvent$Type:[I

    sget-object v4, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CUEPOINTS_CHANGED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-virtual {v4}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$plugins$ads$AdEvent$Type:[I

    sget-object v5, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ALL_ADS_COMPLETED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-virtual {v5}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/kaltura/playkit/PlayerEvent$Type;->values()[Lcom/kaltura/playkit/PlayerEvent$Type;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerEvent$Type:[I

    :try_start_4
    sget-object v4, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerEvent$Type:[I

    sget-object v5, Lcom/kaltura/playkit/PlayerEvent$Type;->DURATION_CHANGE:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {v5}, Lcom/kaltura/playkit/PlayerEvent$Type;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerEvent$Type:[I

    sget-object v5, Lcom/kaltura/playkit/PlayerEvent$Type;->STATE_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {v5}, Lcom/kaltura/playkit/PlayerEvent$Type;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerEvent$Type:[I

    sget-object v5, Lcom/kaltura/playkit/PlayerEvent$Type;->ENDED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {v5}, Lcom/kaltura/playkit/PlayerEvent$Type;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerEvent$Type:[I

    sget-object v4, Lcom/kaltura/playkit/PlayerEvent$Type;->ERROR:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {v4}, Lcom/kaltura/playkit/PlayerEvent$Type;->ordinal()I

    move-result v4

    aput v3, v2, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerEvent$Type:[I

    sget-object v3, Lcom/kaltura/playkit/PlayerEvent$Type;->PAUSE:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {v3}, Lcom/kaltura/playkit/PlayerEvent$Type;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerEvent$Type:[I

    sget-object v3, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {v3}, Lcom/kaltura/playkit/PlayerEvent$Type;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerEvent$Type:[I

    sget-object v3, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYING:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {v3}, Lcom/kaltura/playkit/PlayerEvent$Type;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerEvent$Type:[I

    sget-object v3, Lcom/kaltura/playkit/PlayerEvent$Type;->SEEKED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {v3}, Lcom/kaltura/playkit/PlayerEvent$Type;->ordinal()I

    move-result v3

    const/16 v4, 0x8

    aput v4, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerEvent$Type:[I

    sget-object v3, Lcom/kaltura/playkit/PlayerEvent$Type;->SEEKING:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {v3}, Lcom/kaltura/playkit/PlayerEvent$Type;->ordinal()I

    move-result v3

    const/16 v4, 0x9

    aput v4, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerEvent$Type:[I

    sget-object v3, Lcom/kaltura/playkit/PlayerEvent$Type;->SOURCE_SELECTED:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {v3}, Lcom/kaltura/playkit/PlayerEvent$Type;->ordinal()I

    move-result v3

    const/16 v4, 0xa

    aput v4, v2, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    invoke-static {}, Lcom/kaltura/playkit/PlayerState;->values()[Lcom/kaltura/playkit/PlayerState;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerState:[I

    :try_start_e
    sget-object v2, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerState:[I

    sget-object v3, Lcom/kaltura/playkit/PlayerState;->READY:Lcom/kaltura/playkit/PlayerState;

    invoke-virtual {v3}, Lcom/kaltura/playkit/PlayerState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager$2;->$SwitchMap$com$kaltura$playkit$PlayerState:[I

    sget-object v2, Lcom/kaltura/playkit/PlayerState;->BUFFERING:Lcom/kaltura/playkit/PlayerState;

    invoke-virtual {v2}, Lcom/kaltura/playkit/PlayerState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method
