.class public final Lcom/miui/video/biz/search/OnlineSearchConfig;
.super Ljava/lang/Object;
.source "OnlineSearchConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/search/OnlineSearchConfig$Companion;
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
        "Lcom/miui/video/biz/search/OnlineSearchConfig;",
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
.field public static final Companion:Lcom/miui/video/biz/search/OnlineSearchConfig$Companion;

.field public static final GOOGLE_SEARCH_REQUEST_C0DE:I = 0x3e9

.field public static final INTENT_SEARCH_CATEGORY:Ljava/lang/String; = "intent_search_category"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INTENT_SEARCH_KEY:Ljava/lang/String; = "intent_search_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INTENT_SEARCH_POSITION:Ljava/lang/String; = "intent_search_position"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INTENT_SEARCH_TYPE:Ljava/lang/String; = "intent_search_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LOAD_TYPE_DOWN:I = 0x1

.field public static final LOAD_TYPE_INIT:I = 0x0

.field public static final LOAD_TYPE_UP:I = 0x2

.field public static final SEARCH_HISTORY_COUNT:I = 0x6

.field public static final SEARCH_RESULT_NULL_DATA:Ljava/lang/String; = "search_result_null_data"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VERSION_V1:Ljava/lang/String; = "v1"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VOICE_LANGUAGE_ID:Ljava/lang/String; = "voice_language_id.json"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VOICE_LANGUAGE_IN:Ljava/lang/String; = "voice_language_in.json"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/biz/search/OnlineSearchConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/biz/search/OnlineSearchConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/biz/search/OnlineSearchConfig;->Companion:Lcom/miui/video/biz/search/OnlineSearchConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
