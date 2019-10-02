.class public final Lcom/miui/video/biz/player/online/videoCoreManager;
.super Ljava/lang/Object;
.source "videoCoreManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nvideoCoreManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 videoCoreManager.kt\ncom/miui/video/biz/player/online/videoCoreManager\n*L\n1#1,10:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/videoCoreManager;",
        "",
        "()V",
        "continuePlayMap",
        "",
        "",
        "getContinuePlayMap",
        "()Ljava/util/List;",
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
.field public static final INSTANCE:Lcom/miui/video/biz/player/online/videoCoreManager;

.field private static final continuePlayMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/player/online/videoCoreManager;

    invoke-direct {v0}, Lcom/miui/video/biz/player/online/videoCoreManager;-><init>()V

    sput-object v0, Lcom/miui/video/biz/player/online/videoCoreManager;->INSTANCE:Lcom/miui/video/biz/player/online/videoCoreManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/miui/video/biz/player/online/videoCoreManager;->continuePlayMap:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContinuePlayMap()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/video/biz/player/online/videoCoreManager;->continuePlayMap:Ljava/util/List;

    return-object v0
.end method
