.class public final Lcom/miui/video/biz/longvideo/track/LongVideoTrackerConst;
.super Ljava/lang/Object;
.source "LongVideoTrackerConst.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/longvideo/track/LongVideoTrackerConst$Companion;
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
        "Lcom/miui/video/biz/longvideo/track/LongVideoTrackerConst;",
        "",
        "()V",
        "Companion",
        "biz_group_longvideo_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/biz/longvideo/track/LongVideoTrackerConst$Companion;

.field public static final EVENT_SEARCH_CLICK_UP:Ljava/lang/String; = "search_click_up"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAGE_MAIN_TAB_VIDEO:Ljava/lang/String; = "maintab_video"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_LONG_VIDEO:Ljava/lang/String; = "long_video"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/longvideo/track/LongVideoTrackerConst$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/longvideo/track/LongVideoTrackerConst$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/longvideo/track/LongVideoTrackerConst;->Companion:Lcom/miui/video/biz/longvideo/track/LongVideoTrackerConst$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
