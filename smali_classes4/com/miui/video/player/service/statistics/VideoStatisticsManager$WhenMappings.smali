.class public final synthetic Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/miui/video/base/IPlayer$playerMode;->values()[Lcom/miui/video/base/IPlayer$playerMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/miui/video/base/IPlayer$playerMode;->inline:Lcom/miui/video/base/IPlayer$playerMode;

    invoke-virtual {v1}, Lcom/miui/video/base/IPlayer$playerMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/miui/video/base/IPlayer$playerMode;->normal:Lcom/miui/video/base/IPlayer$playerMode;

    invoke-virtual {v1}, Lcom/miui/video/base/IPlayer$playerMode;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Lcom/miui/video/base/IPlayer$playerMode;->values()[Lcom/miui/video/base/IPlayer$playerMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/miui/video/base/IPlayer$playerMode;->inline:Lcom/miui/video/base/IPlayer$playerMode;

    invoke-virtual {v1}, Lcom/miui/video/base/IPlayer$playerMode;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/miui/video/base/IPlayer$playerMode;->normal:Lcom/miui/video/base/IPlayer$playerMode;

    invoke-virtual {v1}, Lcom/miui/video/base/IPlayer$playerMode;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/miui/video/base/IPlayer$playerMode;->values()[Lcom/miui/video/base/IPlayer$playerMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/miui/video/base/IPlayer$playerMode;->inline:Lcom/miui/video/base/IPlayer$playerMode;

    invoke-virtual {v1}, Lcom/miui/video/base/IPlayer$playerMode;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/miui/video/base/IPlayer$playerMode;->normal:Lcom/miui/video/base/IPlayer$playerMode;

    invoke-virtual {v1}, Lcom/miui/video/base/IPlayer$playerMode;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/miui/video/base/IPlayer$playerMode;->values()[Lcom/miui/video/base/IPlayer$playerMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/miui/video/base/IPlayer$playerMode;->inline:Lcom/miui/video/base/IPlayer$playerMode;

    invoke-virtual {v1}, Lcom/miui/video/base/IPlayer$playerMode;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/miui/video/base/IPlayer$playerMode;->normal:Lcom/miui/video/base/IPlayer$playerMode;

    invoke-virtual {v1}, Lcom/miui/video/base/IPlayer$playerMode;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/miui/video/base/PlayStatus;->values()[Lcom/miui/video/base/PlayStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lcom/miui/video/base/PlayStatus;->AD_BEGIN:Lcom/miui/video/base/PlayStatus;

    invoke-virtual {v1}, Lcom/miui/video/base/PlayStatus;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lcom/miui/video/base/PlayStatus;->AD_END:Lcom/miui/video/base/PlayStatus;

    invoke-virtual {v1}, Lcom/miui/video/base/PlayStatus;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lcom/miui/video/base/PlayStatus;->VIDEO_BUFFERING_END:Lcom/miui/video/base/PlayStatus;

    invoke-virtual {v1}, Lcom/miui/video/base/PlayStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
