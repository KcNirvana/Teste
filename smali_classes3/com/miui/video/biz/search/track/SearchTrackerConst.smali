.class public final Lcom/miui/video/biz/search/track/SearchTrackerConst;
.super Ljava/lang/Object;
.source "SearchTrackerConst.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;
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
        "Lcom/miui/video/biz/search/track/SearchTrackerConst;",
        "",
        "()V",
        "Companion",
        "biz_group_search_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;

.field public static final EVENT_LANGUAGE_CHANGE:Ljava/lang/String; = "language_change"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_LANGUAGE_CLICK:Ljava/lang/String; = "language_click"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_OTHERS_SEARCH_CLICK:Ljava/lang/String; = "others_search_click"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_OTHERS_SEARCH_EXPOSE:Ljava/lang/String; = "others_search_expose"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_OTHERS_SEARCH_FAIL:Ljava/lang/String; = "others_search_fail"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_OTHERS_SEARCH_PLAY:Ljava/lang/String; = "others_search_play"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_OTHERS_SEARCH_SUCCESS:Ljava/lang/String; = "others_search_success"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_RESULT_TAB_CLICK:Ljava/lang/String; = "result_tab_click"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_RESULT_TAB_SLIPE:Ljava/lang/String; = "result_tab_slipe"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_SEARCH_FAIL:Ljava/lang/String; = "search_fail"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_SEARCH_REQ:Ljava/lang/String; = "search_req"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_SEARCH_SUCCESS:Ljava/lang/String; = "search_success"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EVENT_SEARCH_VOICE_UP:Ljava/lang/String; = "search_voice_up"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAGE_SEARCH:Ljava/lang/String; = "search"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_SEARCH_RESULT_PAGE:Ljava/lang/String; = "search_result_page"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_SEARCH_START_PAGE:Ljava/lang/String; = "search_start_page"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_TERM_ASSOCIATIONAL:Ljava/lang/String; = "term_associational"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_TERM_BUTTON:Ljava/lang/String; = "term_button"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_TERM_HIS:Ljava/lang/String; = "term_his"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_TERM_HOT:Ljava/lang/String; = "term_hot"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_TERM_RECOMMEND:Ljava/lang/String; = "term_recommend"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOURCE_TERM_VOICE:Ljava/lang/String; = "term_voice"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/search/track/SearchTrackerConst;->Companion:Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
