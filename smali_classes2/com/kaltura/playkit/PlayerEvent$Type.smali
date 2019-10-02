.class public final enum Lcom/kaltura/playkit/PlayerEvent$Type;
.super Ljava/lang/Enum;
.source "PlayerEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/PlayerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/PlayerEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum AUDIO_TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum CAN_PLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum DURATION_CHANGE:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum ENDED:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum ERROR:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum ERROR_NOT_FOUND_DRM_PLUGIN:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum LOADED_METADATA:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum METADATA_AVAILABLE:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum PAUSE:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum PLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum PLAYBACK_INFO_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum PLAYBACK_RATE_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum PLAYHEAD_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum PLAYING:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum REPLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum SEEKED:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum SEEKING:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum SOURCE_SELECTED:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum STATE_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum STOPPED:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum TEXT_TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum TRACKS_AVAILABLE:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum VIDEO_TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

.field public static final enum VOLUME_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "STATE_CHANGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->STATE_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "CAN_PLAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->CAN_PLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "DURATION_CHANGE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->DURATION_CHANGE:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "ENDED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->ENDED:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "ERROR_NOT_FOUND_DRM_PLUGIN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->ERROR_NOT_FOUND_DRM_PLUGIN:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "ERROR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->ERROR:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "LOADED_METADATA"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->LOADED_METADATA:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "PAUSE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PAUSE:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "PLAY"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "PLAYING"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYING:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "SEEKED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->SEEKED:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "SEEKING"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->SEEKING:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "TRACKS_AVAILABLE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->TRACKS_AVAILABLE:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "TRACK_CHANGED"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "REPLAY"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->REPLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "PLAYBACK_INFO_UPDATED"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYBACK_INFO_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "VOLUME_CHANGED"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->VOLUME_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "STOPPED"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->STOPPED:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "METADATA_AVAILABLE"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->METADATA_AVAILABLE:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "SOURCE_SELECTED"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->SOURCE_SELECTED:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "PLAYHEAD_UPDATED"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYHEAD_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "VIDEO_TRACK_CHANGED"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->VIDEO_TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "AUDIO_TRACK_CHANGED"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->AUDIO_TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "TEXT_TRACK_CHANGED"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->TEXT_TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    const-string v1, "PLAYBACK_RATE_CHANGED"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/PlayerEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYBACK_RATE_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/16 v0, 0x19

    new-array v0, v0, [Lcom/kaltura/playkit/PlayerEvent$Type;

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->STATE_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->CAN_PLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->DURATION_CHANGE:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->ENDED:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->ERROR_NOT_FOUND_DRM_PLUGIN:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->ERROR:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->LOADED_METADATA:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->PAUSE:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v1, v0, v10

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYING:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v1, v0, v11

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->SEEKED:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v1, v0, v12

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->SEEKING:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v1, v0, v13

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->TRACKS_AVAILABLE:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v1, v0, v14

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->REPLAY:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYBACK_INFO_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->VOLUME_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->STOPPED:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->METADATA_AVAILABLE:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->SOURCE_SELECTED:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYHEAD_UPDATED:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->VIDEO_TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->AUDIO_TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->TEXT_TRACK_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/PlayerEvent$Type;->PLAYBACK_RATE_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->$VALUES:[Lcom/kaltura/playkit/PlayerEvent$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/PlayerEvent$Type;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/PlayerEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/PlayerEvent$Type;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->$VALUES:[Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/PlayerEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/PlayerEvent$Type;

    return-object v0
.end method
