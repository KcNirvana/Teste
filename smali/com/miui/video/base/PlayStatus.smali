.class public final enum Lcom/miui/video/base/PlayStatus;
.super Ljava/lang/Enum;
.source "PlayStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/base/PlayStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0011\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/miui/video/base/PlayStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "IDLE",
        "LAUNCH",
        "AD_BEGIN",
        "AD_END",
        "VIDEO_START",
        "VIDEO_BUFFERING_START",
        "VIDEO_BUFFERING_END",
        "VIDEO_BUFFERING",
        "VIDEO_SEEKED",
        "VIDEO_PAUSED",
        "ERROR",
        "VIDEO_FINISHED",
        "VIDEO_FINISHED_EPISODE",
        "VIDEO_DESTROY",
        "VIDEO_REPLAY",
        "video_service_base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/base/PlayStatus;

.field public static final enum AD_BEGIN:Lcom/miui/video/base/PlayStatus;

.field public static final enum AD_END:Lcom/miui/video/base/PlayStatus;

.field public static final enum ERROR:Lcom/miui/video/base/PlayStatus;

.field public static final enum IDLE:Lcom/miui/video/base/PlayStatus;

.field public static final enum LAUNCH:Lcom/miui/video/base/PlayStatus;

.field public static final enum VIDEO_BUFFERING:Lcom/miui/video/base/PlayStatus;

.field public static final enum VIDEO_BUFFERING_END:Lcom/miui/video/base/PlayStatus;

.field public static final enum VIDEO_BUFFERING_START:Lcom/miui/video/base/PlayStatus;

.field public static final enum VIDEO_DESTROY:Lcom/miui/video/base/PlayStatus;

.field public static final enum VIDEO_FINISHED:Lcom/miui/video/base/PlayStatus;

.field public static final enum VIDEO_FINISHED_EPISODE:Lcom/miui/video/base/PlayStatus;

.field public static final enum VIDEO_PAUSED:Lcom/miui/video/base/PlayStatus;

.field public static final enum VIDEO_REPLAY:Lcom/miui/video/base/PlayStatus;

.field public static final enum VIDEO_SEEKED:Lcom/miui/video/base/PlayStatus;

.field public static final enum VIDEO_START:Lcom/miui/video/base/PlayStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/miui/video/base/PlayStatus;

    new-instance v1, Lcom/miui/video/base/PlayStatus;

    const-string v2, "IDLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/base/PlayStatus;->IDLE:Lcom/miui/video/base/PlayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/video/base/PlayStatus;

    const-string v2, "LAUNCH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/base/PlayStatus;->LAUNCH:Lcom/miui/video/base/PlayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/video/base/PlayStatus;

    const-string v2, "AD_BEGIN"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/base/PlayStatus;->AD_BEGIN:Lcom/miui/video/base/PlayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/video/base/PlayStatus;

    const-string v2, "AD_END"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/base/PlayStatus;->AD_END:Lcom/miui/video/base/PlayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/video/base/PlayStatus;

    const-string v2, "VIDEO_START"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/base/PlayStatus;->VIDEO_START:Lcom/miui/video/base/PlayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/video/base/PlayStatus;

    const-string v2, "VIDEO_BUFFERING_START"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/base/PlayStatus;->VIDEO_BUFFERING_START:Lcom/miui/video/base/PlayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/video/base/PlayStatus;

    const-string v2, "VIDEO_BUFFERING_END"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/base/PlayStatus;->VIDEO_BUFFERING_END:Lcom/miui/video/base/PlayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/video/base/PlayStatus;

    const-string v2, "VIDEO_BUFFERING"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/base/PlayStatus;->VIDEO_BUFFERING:Lcom/miui/video/base/PlayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/video/base/PlayStatus;

    const-string v2, "VIDEO_SEEKED"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/base/PlayStatus;->VIDEO_SEEKED:Lcom/miui/video/base/PlayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/video/base/PlayStatus;

    const-string v2, "VIDEO_PAUSED"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/base/PlayStatus;->VIDEO_PAUSED:Lcom/miui/video/base/PlayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/video/base/PlayStatus;

    const-string v2, "ERROR"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/base/PlayStatus;->ERROR:Lcom/miui/video/base/PlayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/video/base/PlayStatus;

    const-string v2, "VIDEO_FINISHED"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/base/PlayStatus;->VIDEO_FINISHED:Lcom/miui/video/base/PlayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/video/base/PlayStatus;

    const-string v2, "VIDEO_FINISHED_EPISODE"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/base/PlayStatus;->VIDEO_FINISHED_EPISODE:Lcom/miui/video/base/PlayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/video/base/PlayStatus;

    const-string v2, "VIDEO_DESTROY"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/base/PlayStatus;->VIDEO_DESTROY:Lcom/miui/video/base/PlayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/video/base/PlayStatus;

    const-string v2, "VIDEO_REPLAY"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lcom/miui/video/base/PlayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/base/PlayStatus;->VIDEO_REPLAY:Lcom/miui/video/base/PlayStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/video/base/PlayStatus;->$VALUES:[Lcom/miui/video/base/PlayStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/base/PlayStatus;
    .locals 1

    const-class v0, Lcom/miui/video/base/PlayStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/base/PlayStatus;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/base/PlayStatus;
    .locals 1

    sget-object v0, Lcom/miui/video/base/PlayStatus;->$VALUES:[Lcom/miui/video/base/PlayStatus;

    invoke-virtual {v0}, [Lcom/miui/video/base/PlayStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/base/PlayStatus;

    return-object v0
.end method
