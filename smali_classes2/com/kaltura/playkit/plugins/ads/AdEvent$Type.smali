.class public final enum Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;
.super Ljava/lang/Enum;
.source "AdEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/plugins/ads/AdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum AD_BREAK_ENDED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum AD_BREAK_IGNORED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum AD_BREAK_READY:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum AD_BREAK_STARTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum AD_BUFFER_END:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum AD_BUFFER_START:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum AD_DISPLAYED_AFTER_CONTENT_PAUSE:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum AD_FIRST_PLAY:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum AD_LOAD_TIMEOUT_TIMER_STARTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum AD_PROGRESS:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum AD_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum ALL_ADS_COMPLETED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum CLICKED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum COMPLETED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum CONTENT_PAUSE_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum CONTENT_RESUME_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum CUEPOINTS_CHANGED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum ERROR:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum FIRST_QUARTILE:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum ICON_TAPPED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum LOADED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum MIDPOINT:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum PAUSED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum PLAY_HEAD_CHANGED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum RESUMED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum SKIPPED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum STARTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum TAPPED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

.field public static final enum THIRD_QUARTILE:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "AD_REQUESTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "AD_FIRST_PLAY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_FIRST_PLAY:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "STARTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->STARTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "AD_DISPLAYED_AFTER_CONTENT_PAUSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_DISPLAYED_AFTER_CONTENT_PAUSE:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "PAUSED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->PAUSED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "RESUMED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->RESUMED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "COMPLETED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->COMPLETED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "FIRST_QUARTILE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->FIRST_QUARTILE:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "MIDPOINT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->MIDPOINT:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "THIRD_QUARTILE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->THIRD_QUARTILE:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "SKIPPED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->SKIPPED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "CLICKED"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CLICKED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "TAPPED"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->TAPPED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "ICON_TAPPED"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ICON_TAPPED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "AD_BREAK_READY"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_READY:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "AD_PROGRESS"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_PROGRESS:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "AD_BREAK_STARTED"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_STARTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "AD_BREAK_ENDED"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_ENDED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "AD_BREAK_IGNORED"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_IGNORED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "CUEPOINTS_CHANGED"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CUEPOINTS_CHANGED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "PLAY_HEAD_CHANGED"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->PLAY_HEAD_CHANGED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "LOADED"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->LOADED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "CONTENT_PAUSE_REQUESTED"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CONTENT_PAUSE_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "CONTENT_RESUME_REQUESTED"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CONTENT_RESUME_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "ALL_ADS_COMPLETED"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ALL_ADS_COMPLETED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "AD_LOAD_TIMEOUT_TIMER_STARTED"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_LOAD_TIMEOUT_TIMER_STARTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "AD_BUFFER_START"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BUFFER_START:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "AD_BUFFER_END"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BUFFER_END:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    new-instance v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const-string v1, "ERROR"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15}, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ERROR:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_FIRST_PLAY:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->STARTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_DISPLAYED_AFTER_CONTENT_PAUSE:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->PAUSED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->RESUMED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->COMPLETED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->FIRST_QUARTILE:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->MIDPOINT:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    aput-object v1, v0, v10

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->THIRD_QUARTILE:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    aput-object v1, v0, v11

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->SKIPPED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    aput-object v1, v0, v12

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CLICKED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    aput-object v1, v0, v13

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->TAPPED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    aput-object v1, v0, v14

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ICON_TAPPED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_READY:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_PROGRESS:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_STARTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_ENDED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BREAK_IGNORED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CUEPOINTS_CHANGED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->PLAY_HEAD_CHANGED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->LOADED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CONTENT_PAUSE_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->CONTENT_RESUME_REQUESTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ALL_ADS_COMPLETED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_LOAD_TIMEOUT_TIMER_STARTED:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BUFFER_START:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->AD_BUFFER_END:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->ERROR:Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sput-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->$VALUES:[Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;
    .locals 1

    const-class v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->$VALUES:[Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    invoke-virtual {v0}, [Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kaltura/playkit/plugins/ads/AdEvent$Type;

    return-object v0
.end method
