.class public final synthetic Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$WhenMappings;
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


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/kaltura/playkit/PlayerState;->values()[Lcom/kaltura/playkit/PlayerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/kaltura/playkit/PlayerState;->IDLE:Lcom/kaltura/playkit/PlayerState;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/kaltura/playkit/PlayerState;->LOADING:Lcom/kaltura/playkit/PlayerState;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/kaltura/playkit/PlayerState;->READY:Lcom/kaltura/playkit/PlayerState;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lcom/miui/video/biz/player/online/plugin/cp/voot/VootVideoView$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/kaltura/playkit/PlayerState;->BUFFERING:Lcom/kaltura/playkit/PlayerState;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PlayerState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
