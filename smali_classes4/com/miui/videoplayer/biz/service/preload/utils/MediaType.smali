.class public final enum Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;
.super Ljava/lang/Enum;
.source "MediaUtils.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;",
        "",
        "(Ljava/lang/String;I)V",
        "HLS",
        "DASH",
        "SS",
        "OTHER",
        "biz_service_preload_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

.field public static final enum DASH:Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

.field public static final enum HLS:Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

.field public static final enum OTHER:Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

.field public static final enum SS:Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

    new-instance v1, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

    const-string v2, "HLS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;->HLS:Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

    const-string v2, "DASH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;->DASH:Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

    const-string v2, "SS"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;->SS:Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

    const-string v2, "OTHER"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;->OTHER:Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;->$VALUES:[Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;
    .locals 1

    const-class v0, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

    return-object p0
.end method

.method public static values()[Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;
    .locals 1

    sget-object v0, Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;->$VALUES:[Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

    invoke-virtual {v0}, [Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/videoplayer/biz/service/preload/utils/MediaType;

    return-object v0
.end method
