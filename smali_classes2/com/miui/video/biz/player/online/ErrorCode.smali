.class public final Lcom/miui/video/biz/player/online/ErrorCode;
.super Ljava/lang/Object;
.source "ErrorCode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/miui/video/biz/player/online/ErrorCode;",
        "",
        "()V",
        "ERROR_CODE_EXTRA_DATASOURCE_ERROR",
        "",
        "ERROR_CODE_EXTRA_LOCALSERVER_ERROR",
        "ERROR_CODE_EXTRA_OTHER_ERROR",
        "ERROR_CODE_EXTRA_PLAYER_ERROR",
        "ERROR_CODE_PLUGIN_ORIGINALBASE_DATA",
        "ERROR_CODE_PLUGIN_ORIGINALBASE_ERROR",
        "FLICK_ERROR",
        "HUNGAMA_NORMALERROR",
        "HUNGAMA_WEBSERVICE_FAIL",
        "VIU_ERROR",
        "VOOT_ERROR",
        "VOOT_ERROR_EXTRA",
        "YoutubeCantPlay",
        "YoutubeShouldOffline",
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
.field public static final ERROR_CODE_EXTRA_DATASOURCE_ERROR:I = 0x15f93

.field public static final ERROR_CODE_EXTRA_LOCALSERVER_ERROR:I = 0x15f95

.field public static final ERROR_CODE_EXTRA_OTHER_ERROR:I = 0x15f92

.field public static final ERROR_CODE_EXTRA_PLAYER_ERROR:I = 0x15f94

.field public static final ERROR_CODE_PLUGIN_ORIGINALBASE_DATA:I = 0x15f91

.field public static final ERROR_CODE_PLUGIN_ORIGINALBASE_ERROR:I = 0x384

.field public static final FLICK_ERROR:I = 0x1f4

.field public static final HUNGAMA_NORMALERROR:I = 0x12c

.field public static final HUNGAMA_WEBSERVICE_FAIL:I = 0x12d

.field public static final INSTANCE:Lcom/miui/video/biz/player/online/ErrorCode;

.field public static final VIU_ERROR:I = 0x190

.field public static final VOOT_ERROR:I = 0xc8

.field public static final VOOT_ERROR_EXTRA:I = 0x2711

.field public static final YoutubeCantPlay:I = 0x66

.field public static final YoutubeShouldOffline:I = 0x65


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/player/online/ErrorCode;

    invoke-direct {v0}, Lcom/miui/video/biz/player/online/ErrorCode;-><init>()V

    sput-object v0, Lcom/miui/video/biz/player/online/ErrorCode;->INSTANCE:Lcom/miui/video/biz/player/online/ErrorCode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
