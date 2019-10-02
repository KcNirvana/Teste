.class public final Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;
.super Ljava/lang/Object;
.source "PlayStartInfoEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;,
        Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlayStartInfoEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlayStartInfoEntity.kt\ncom/miui/video/base/statistics/entity/PlayStartInfoEntity\n*L\n1#1,173:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0007\u0018\u0000 72\u00020\u0001:\u000278B\u0005\u00a2\u0006\u0002\u0010\u0002JD\u0010%\u001a\u00020&2\"\u0010\'\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040(j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u0004H\u0002J\u000e\u0010.\u001a\u00020&2\u0006\u0010\u0016\u001a\u00020\rJ\u000e\u0010\u000b\u001a\u00020&2\u0006\u0010/\u001a\u00020\nJ\"\u00100\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040(j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`)J\u0006\u00101\u001a\u000202J0\u00103\u001a\u00020&2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0008\u0010\"\u001a\u0004\u0018\u00010\u0004J\u000e\u00104\u001a\u00020&2\u0006\u0010/\u001a\u00020\nJ\u0016\u00105\u001a\u00020\r2\u0006\u0010/\u001a\u00020\n2\u0006\u00106\u001a\u00020\rR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006\"\u0004\u0008\u0015\u0010\u0008R\u000e\u0010\u0016\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0017\u001a\u0012\u0012\u0004\u0012\u00020\u00190\u0018j\u0008\u0012\u0004\u0012\u00020\u0019`\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0006\"\u0004\u0008\u001e\u0010\u0008R\u001a\u0010\u001f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0006\"\u0004\u0008!\u0010\u0008R\u001a\u0010\"\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0006\"\u0004\u0008$\u0010\u0008\u00a8\u00069"
    }
    d2 = {
        "Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;",
        "",
        "()V",
        "cp",
        "",
        "getCp",
        "()Ljava/lang/String;",
        "setCp",
        "(Ljava/lang/String;)V",
        "currentStep",
        "",
        "endStep",
        "hasInit",
        "",
        "hasSetPlayinfo",
        "getHasSetPlayinfo",
        "()Z",
        "setHasSetPlayinfo",
        "(Z)V",
        "id",
        "getId",
        "setId",
        "isComplete",
        "mSteps",
        "Ljava/util/ArrayList;",
        "Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;",
        "Lkotlin/collections/ArrayList;",
        "mTotalTime",
        "play_id",
        "getPlay_id",
        "setPlay_id",
        "playlist_id",
        "getPlaylist_id",
        "setPlaylist_id",
        "target",
        "getTarget",
        "setTarget",
        "addParams",
        "",
        "params",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "logStr",
        "Ljava/lang/StringBuilder;",
        "key",
        "value",
        "endAll",
        "step",
        "getParams",
        "getTotalTime",
        "",
        "setOpt",
        "startStep",
        "stepTimePolicy",
        "isStart",
        "Companion",
        "TimeInfo",
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
.field public static final Companion:Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$Companion;

# The value of this static final field might be set in the static constructor
.field private static final MaxOffset:I = 0x64

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "PlayStartInfoEntity"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private cp:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentStep:I

.field private endStep:I

.field private hasInit:Z

.field private hasSetPlayinfo:Z

.field private id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isComplete:Z

.field private final mSteps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalTime:Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

.field private play_id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private playlist_id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private target:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->Companion:Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$Companion;

    const-string v0, "PlayStartInfoEntity"

    sput-object v0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->TAG:Ljava/lang/String;

    const/16 v0, 0x64

    sput v0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->MaxOffset:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->play_id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->playlist_id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->cp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->target:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->id:Ljava/lang/String;

    sget-object v0, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->getLAST_STEP()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-direct {v3}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mSteps:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-direct {v0}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mTotalTime:Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->currentStep:I

    iput v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->endStep:I

    return-void
.end method

.method public static final synthetic access$getMaxOffset$cp()I
    .locals 1

    sget v0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->MaxOffset:I

    return v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final addParams(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final endAll(Z)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-boolean p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->isComplete:Z

    iget-object v2, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mTotalTime:Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-virtual {v2, v0, v1}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->setMEndTime(J)V

    sget-object v2, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    invoke-virtual {v2}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->getLAST_STEP()I

    move-result v2

    iput v2, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->endStep:I

    if-nez p1, :cond_0

    iget p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->currentStep:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mSteps:Ljava/util/ArrayList;

    iget v2, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->currentStep:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->setMEndTime(J)V

    iget p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->currentStep:I

    iput p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->endStep:I

    :cond_0
    return-void
.end method

.method public final endStep(I)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->stepTimePolicy(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->setMEndTime(J)V

    sget-object v0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endStep "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , endStep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->getMEndTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getCp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->cp:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasSetPlayinfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->hasSetPlayinfo:Z

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getParams()Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->play_id:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->id:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto/16 :goto_5

    :cond_2
    const-wide/16 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Lcom/google/gson/JsonObject;

    invoke-direct {v6}, Lcom/google/gson/JsonObject;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    iget-object v9, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    iget-object v9, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-virtual {v9}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "0"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v3

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-virtual {v9}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->getTime()J

    move-result-wide v9

    add-long/2addr v4, v9

    sget-object v9, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    invoke-virtual {v9}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->getMStepName()Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-virtual {v10}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v7, :cond_3

    const-string v7, "start_step"

    sget-object v9, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    invoke-virtual {v9}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->getMStepName()Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "mStepName[i]"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v7, v9}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->addParams(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "start_time"

    iget-object v9, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-virtual {v9}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->getMStartTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v1, v7, v9}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->addParams(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const-string v2, "steps"

    invoke-virtual {v6}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "stepsJson.toString()"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->addParams(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "total_time"

    invoke-virtual {p0}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->getTotalTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->addParams(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->getTotalTime()J

    move-result-wide v2

    sub-long/2addr v2, v4

    sget v4, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->MaxOffset:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_6

    const-string v4, "is_valid"

    const-string v5, "0"

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->addParams(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v4, "is_valid"

    const-string v5, "1"

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->addParams(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v4, "is_complete"

    iget-boolean v5, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->isComplete:Z

    if-eqz v5, :cond_7

    const-string v5, "1"

    goto :goto_4

    :cond_7
    const-string v5, "0"

    :goto_4
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->addParams(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "target"

    iget-object v5, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->target:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->addParams(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->endStep:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    const-string v4, "end_step"

    sget-object v5, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    invoke-virtual {v5}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->getMStepName()Landroid/util/SparseArray;

    move-result-object v5

    iget v6, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->endStep:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "mStepName[endStep]"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->addParams(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v4, "video_id"

    iget-object v5, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->id:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->addParams(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "play_id"

    iget-object v5, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->play_id:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->addParams(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "playlist_id"

    iget-object v5, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->playlist_id:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->addParams(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "total_step"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->addParams(Ljava/util/HashMap;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "offset:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_9
    :goto_5
    return-object v0
.end method

.method public final getPlay_id()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->play_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlaylist_id()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->playlist_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getTarget()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->target:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalTime()J
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mTotalTime:Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-virtual {v0}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final setCp(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->cp:Ljava/lang/String;

    return-void
.end method

.method public final setHasSetPlayinfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->hasSetPlayinfo:Z

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public final setOpt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "cp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "play_id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playlist_id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->cp:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->play_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->playlist_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->id:Ljava/lang/String;

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const-string p5, ""

    :goto_0
    iput-object p5, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->target:Ljava/lang/String;

    return-void
.end method

.method public final setPlay_id(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->play_id:Ljava/lang/String;

    return-void
.end method

.method public final setPlaylist_id(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->playlist_id:Ljava/lang/String;

    return-void
.end method

.method public final setTarget(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->target:Ljava/lang/String;

    return-void
.end method

.method public final startStep(I)V
    .locals 6

    iput p1, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->currentStep:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->stepTimePolicy(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->hasInit:Z

    if-nez v3, :cond_1

    sget-object v3, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    invoke-virtual {v3}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->getCanInitSteps()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-direct {v3}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;-><init>()V

    iput-object v3, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mTotalTime:Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    iget-object v3, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mTotalTime:Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-virtual {v3, v0, v1}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->setMStartTime(J)V

    iput-boolean v2, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->hasInit:Z

    :cond_1
    iget-boolean v3, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->hasInit:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startStep "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , mStartTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->hasSetPlayinfo:Z

    if-nez v3, :cond_2

    iput-boolean v2, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->hasSetPlayinfo:Z

    :cond_2
    iget-object v2, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->setMStartTime(J)V

    :cond_3
    return-void
.end method

.method public final stepTimePolicy(IZ)Z
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    sget-object p2, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    invoke-virtual {p2}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->getCanInitSteps()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->getMStartTime()J

    move-result-wide p1

    int-to-long v2, v0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    return v1

    :cond_0
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-virtual {p2}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->getMStartTime()J

    move-result-wide v2

    int-to-long v4, v0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_1

    sget-object p2, Lcom/miui/video/base/statistics/PlayInfoTrackManager;->Companion:Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;

    invoke-virtual {p2}, Lcom/miui/video/base/statistics/PlayInfoTrackManager$Companion;->getCanInitSteps()Ljava/util/ArrayList;

    move-result-object p2

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;

    invoke-virtual {p1}, Lcom/miui/video/base/statistics/entity/PlayStartInfoEntity$TimeInfo;->getMEndTime()J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
