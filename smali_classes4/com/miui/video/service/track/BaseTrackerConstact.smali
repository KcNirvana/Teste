.class public final Lcom/miui/video/service/track/BaseTrackerConstact;
.super Ljava/lang/Object;
.source "BaseTrackerConstact.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/track/BaseTrackerConstact$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/miui/video/service/track/BaseTrackerConstact;",
        "",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/miui/video/service/track/BaseTrackerConstact$Companion;

.field public static final PAGE_DETAIL_PAGE:Ljava/lang/String; = "detail_page"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAGE_FLITER_SELECT:Ljava/lang/String; = "_select"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_LONGVIDEO_FILTER:Ljava/lang/String; = "longvideo_filter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_LONG_VIDEO:Ljava/lang/String; = "long_video"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_LONG_VIDEO_DETAIL:Ljava/lang/String; = "long_video_detail"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/service/track/BaseTrackerConstact$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/service/track/BaseTrackerConstact$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/service/track/BaseTrackerConstact;->Companion:Lcom/miui/video/service/track/BaseTrackerConstact$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
