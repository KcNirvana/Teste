.class public final enum Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
.super Ljava/lang/Enum;
.source "InfoStreamRefreshType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "setValue",
        "(Ljava/lang/String;)V",
        "REFRESH_INIT",
        "REFRESH_DOWN_MANUAL",
        "REFRESH_BACK_AUTO",
        "REFRESH_CHANNEL_CLICK",
        "REFRESH_TAB_CLICK",
        "REFRESH_UP_AUTO",
        "REFRESH_UP_MANUAL",
        "video_service_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

.field public static final enum REFRESH_BACK_AUTO:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

.field public static final enum REFRESH_CHANNEL_CLICK:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

.field public static final enum REFRESH_DOWN_MANUAL:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

.field public static final enum REFRESH_INIT:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

.field public static final enum REFRESH_TAB_CLICK:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

.field public static final enum REFRESH_UP_AUTO:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

.field public static final enum REFRESH_UP_MANUAL:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;


# instance fields
.field private value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    new-instance v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    const-string v2, "REFRESH_INIT"

    const-string v3, "refresh_down_first_auto"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_INIT:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    const-string v2, "REFRESH_DOWN_MANUAL"

    const-string v3, "refresh_down_manual"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_DOWN_MANUAL:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    const-string v2, "REFRESH_BACK_AUTO"

    const-string v3, "refresh_down_back_auto"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4, v3}, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_BACK_AUTO:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    const-string v2, "REFRESH_CHANNEL_CLICK"

    const-string v3, "refresh_down_top_click"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4, v3}, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_CHANNEL_CLICK:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    const-string v2, "REFRESH_TAB_CLICK"

    const-string v3, "refresh_down_bottom_click"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4, v3}, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_TAB_CLICK:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    const-string v2, "REFRESH_UP_AUTO"

    const-string v3, "refresh_up_auto"

    const/4 v4, 0x5

    invoke-direct {v1, v2, v4, v3}, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_UP_AUTO:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    const-string v2, "REFRESH_UP_MANUAL"

    const-string v3, "refresh_up_manual"

    const/4 v4, 0x6

    invoke-direct {v1, v2, v4, v3}, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->REFRESH_UP_MANUAL:Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->$VALUES:[Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
    .locals 1

    const-class v0, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;
    .locals 1

    sget-object v0, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->$VALUES:[Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    invoke-virtual {v0}, [Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/service/common/architeture/common/InfoStreamRefreshType;->value:Ljava/lang/String;

    return-void
.end method
