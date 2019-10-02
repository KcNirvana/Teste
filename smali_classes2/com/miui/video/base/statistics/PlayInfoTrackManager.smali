.class public final Lcom/miui/video/base/statistics/PlayInfoTrackManager;
.super Ljava/lang/Object;
.source "PlayInfoTrackManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;
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
        "Lcom/miui/video/base/statistics/PlayInfoTrackManager;",
        "",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

# The value of this static final field might be set in the static constructor
.field private static final LAST_STEP:I = 0x7

.field public static final STEP_1:I = 0x0

# The value of this static final field might be set in the static constructor
.field private static final STEP_1_GETENTITYREQ:Ljava/lang/String; = "get_detail"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STEP_2:I = 0x1

# The value of this static final field might be set in the static constructor
.field private static final STEP_2_CREATEENTITY:Ljava/lang/String; = "render_detail"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STEP_3:I = 0x2

# The value of this static final field might be set in the static constructor
.field private static final STEP_3_GETPLAYINFOREQ:Ljava/lang/String; = "play"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STEP_4:I = 0x3

# The value of this static final field might be set in the static constructor
.field private static final STEP_4_MIADSPREPARE:Ljava/lang/String; = "prepare_xiaomi_ads"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STEP_5:I = 0x4

# The value of this static final field might be set in the static constructor
.field private static final STEP_5_MIADSPLAY:Ljava/lang/String; = "play_xiaomi_ads"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STEP_6:I = 0x5

# The value of this static final field might be set in the static constructor
.field private static final STEP_6_CPADSPREPARE:Ljava/lang/String; = "prepare_cp_ads"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STEP_7:I = 0x6

# The value of this static final field might be set in the static constructor
.field private static final STEP_7_CPADSPLAY:Ljava/lang/String; = "play_cp_ads"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STEP_8:I = 0x7

# The value of this static final field might be set in the static constructor
.field private static final STEP_8_PREPARESRC:Ljava/lang/String; = "prepare_source"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "PlayInfoTrackManager"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final canInitSteps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static cpAdsPrepareEnd:Z

.field private static final cpAdsSteps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final mStepName$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static playStartInfoEntity:Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    const-string v0, "PlayInfoTrackManager"

    sput-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->TAG:Ljava/lang/String;

    const-string v0, "get_detail"

    sput-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_1_GETENTITYREQ:Ljava/lang/String;

    const-string v0, "render_detail"

    sput-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_2_CREATEENTITY:Ljava/lang/String;

    const-string v0, "play"

    sput-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_3_GETPLAYINFOREQ:Ljava/lang/String;

    const-string v0, "prepare_xiaomi_ads"

    sput-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_4_MIADSPREPARE:Ljava/lang/String;

    const-string v0, "play_xiaomi_ads"

    sput-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_5_MIADSPLAY:Ljava/lang/String;

    const-string v0, "prepare_cp_ads"

    sput-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_6_CPADSPREPARE:Ljava/lang/String;

    const-string v0, "play_cp_ads"

    sput-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_7_CPADSPLAY:Ljava/lang/String;

    const-string v0, "prepare_source"

    sput-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_8_PREPARESRC:Ljava/lang/String;

    const/4 v0, 0x7

    sput v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->LAST_STEP:I

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->canInitSteps:Ljava/util/ArrayList;

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->cpAdsSteps:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion$mStepName$2;->INSTANCE:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion$mStepName$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->mStepName$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCanInitSteps$cp()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->canInitSteps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$getCpAdsPrepareEnd$cp()Z
    .locals 1

    sget-boolean v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->cpAdsPrepareEnd:Z

    return v0
.end method

.method public static final synthetic access$getCpAdsSteps$cp()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->cpAdsSteps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$getLAST_STEP$cp()I
    .locals 1

    sget v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->LAST_STEP:I

    return v0
.end method

.method public static final synthetic access$getMStepName$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->mStepName$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getPlayStartInfoEntity$cp()Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->playStartInfoEntity:Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;

    return-object v0
.end method

.method public static final synthetic access$getSTEP_1_GETENTITYREQ$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_1_GETENTITYREQ:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSTEP_2_CREATEENTITY$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_2_CREATEENTITY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSTEP_3_GETPLAYINFOREQ$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_3_GETPLAYINFOREQ:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSTEP_4_MIADSPREPARE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_4_MIADSPREPARE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSTEP_5_MIADSPLAY$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_5_MIADSPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSTEP_6_CPADSPREPARE$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_6_CPADSPREPARE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSTEP_7_CPADSPLAY$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_7_CPADSPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSTEP_8_PREPARESRC$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->STEP_8_PREPARESRC:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setCpAdsPrepareEnd$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->cpAdsPrepareEnd:Z

    return-void
.end method

.method public static final synthetic access$setPlayStartInfoEntity$cp(Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;)V
    .locals 0

    sput-object p0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->playStartInfoEntity:Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;

    return-void
.end method
