.class public final enum Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;
.super Ljava/lang/Enum;
.source "VideoCore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/core/VideoCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;",
        "",
        "(Ljava/lang/String;I)V",
        "fullScreen",
        "miniScreen",
        "biz_player_online_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

.field public static final enum fullScreen:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

.field public static final enum miniScreen:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    const-string v2, "fullScreen"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;->fullScreen:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    const-string v2, "miniScreen"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;->miniScreen:Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;->$VALUES:[Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;
    .locals 1

    const-class v0, Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;->$VALUES:[Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    invoke-virtual {v0}, [Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/biz/player/online/core/VideoCore$ScreenState;

    return-object v0
.end method
