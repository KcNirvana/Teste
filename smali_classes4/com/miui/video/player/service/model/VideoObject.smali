.class public Lcom/miui/video/player/service/model/VideoObject;
.super Ljava/lang/Object;
.source "VideoObject.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/video/player/service/model/VideoObject;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoObject.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoObject.kt\ncom/miui/video/player/service/model/VideoObject\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n238#2,2:78\n*E\n*S KotlinDebug\n*F\n+ 1 VideoObject.kt\ncom/miui/video/player/service/model/VideoObject\n*L\n57#1,2:78\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010 \n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010S\u001a\u00020\u00072\u0006\u0010T\u001a\u00020\u0000H\u0096\u0002J\u0010\u0010U\u001a\u0004\u0018\u0001052\u0006\u0010V\u001a\u00020\u0004J\u000e\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020,R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0005R&\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00078F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\t\"\u0004\u0008\u0016\u0010\u000bR\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0011\"\u0004\u0008\u001f\u0010\u0005R\u001a\u0010 \u001a\u00020!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001a\u0010&\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0011\"\u0004\u0008(\u0010\u0005R\u001c\u0010)\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0011\"\u0004\u0008+\u0010\u0005R\u001e\u0010-\u001a\u00020,2\u0006\u0010\u0013\u001a\u00020,@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u0011R\u001c\u00100\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0011\"\u0004\u00082\u0010\u0005R*\u00103\u001a\u0012\u0012\u0004\u0012\u00020504j\u0008\u0012\u0004\u0012\u000205`6X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001c\u0010;\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010\u0011\"\u0004\u0008=\u0010\u0005R*\u0010>\u001a\u0012\u0012\u0004\u0012\u00020\u001804j\u0008\u0012\u0004\u0012\u00020\u0018`6X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u00108\"\u0004\u0008@\u0010:R\u001c\u0010A\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010\u0011\"\u0004\u0008C\u0010\u0005R\u001c\u0010D\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010\u0011\"\u0004\u0008F\u0010\u0005R\"\u0010G\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010HX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u001c\u0010M\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010\u0011\"\u0004\u0008O\u0010\u0005R\u001a\u0010P\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010\t\"\u0004\u0008R\u0010\u000b\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/miui/video/player/service/model/VideoObject;",
        "Ljava/io/Serializable;",
        "",
        "mainMediaId",
        "",
        "(Ljava/lang/String;)V",
        "cachePosition",
        "",
        "getCachePosition",
        "()I",
        "setCachePosition",
        "(I)V",
        "ciIndex",
        "getCiIndex",
        "setCiIndex",
        "curCp",
        "getCurCp",
        "()Ljava/lang/String;",
        "setCurCp",
        "<set-?>",
        "curEpisodeDuration",
        "getCurEpisodeDuration",
        "setCurEpisodeDuration",
        "currentSpeed",
        "",
        "getCurrentSpeed",
        "()F",
        "setCurrentSpeed",
        "(F)V",
        "date",
        "getDate",
        "setDate",
        "duration",
        "",
        "getDuration",
        "()J",
        "setDuration",
        "(J)V",
        "episodeType",
        "getEpisodeType",
        "setEpisodeType",
        "image_url",
        "getImage_url",
        "setImage_url",
        "",
        "isOffline",
        "()Z",
        "getMainMediaId",
        "name",
        "getName",
        "setName",
        "playInfoList",
        "Ljava/util/ArrayList;",
        "Lcom/miui/video/common/feed/entity/PlayInfo;",
        "Lkotlin/collections/ArrayList;",
        "getPlayInfoList",
        "()Ljava/util/ArrayList;",
        "setPlayInfoList",
        "(Ljava/util/ArrayList;)V",
        "playlistId",
        "getPlaylistId",
        "setPlaylistId",
        "speedList",
        "getSpeedList",
        "setSpeedList",
        "subId",
        "getSubId",
        "setSubId",
        "target",
        "getTarget",
        "setTarget",
        "targetAdditions",
        "",
        "getTargetAdditions",
        "()Ljava/util/List;",
        "setTargetAdditions",
        "(Ljava/util/List;)V",
        "top_right_logo",
        "getTop_right_logo",
        "setTop_right_logo",
        "type",
        "getType",
        "setType",
        "compareTo",
        "out",
        "findPlayInfoByCP",
        "cp",
        "setOfflineFlag",
        "",
        "offline",
        "video_player_service_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private cachePosition:I

.field private ciIndex:I

.field private curCp:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private curEpisodeDuration:I

.field private currentSpeed:F

.field private date:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private duration:J

.field private episodeType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private image_url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isOffline:Z

.field private final mainMediaId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private playInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/common/feed/entity/PlayInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private playlistId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private speedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private subId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private target:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private targetAdditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private top_right_logo:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mainMediaId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->mainMediaId:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/player/service/model/VideoObject;->cachePosition:I

    const-string p1, ""

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->curCp:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->speedList:Ljava/util/ArrayList;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/miui/video/player/service/model/VideoObject;->currentSpeed:F

    const-string p1, "type_episodes"

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->episodeType:Ljava/lang/String;

    const/4 p1, 0x2

    iput p1, p0, Lcom/miui/video/player/service/model/VideoObject;->type:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->playInfoList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/video/player/service/model/VideoObject;)I
    .locals 2
    .param p1    # Lcom/miui/video/player/service/model/VideoObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/miui/video/player/service/model/VideoObject;->mainMediaId:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v0, p0, Lcom/miui/video/player/service/model/VideoObject;->ciIndex:I

    iget v1, p1, Lcom/miui/video/player/service/model/VideoObject;->ciIndex:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/miui/video/player/service/model/VideoObject;->ciIndex:I

    iget p1, p1, Lcom/miui/video/player/service/model/VideoObject;->ciIndex:I

    sub-int/2addr v0, p1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/player/service/model/VideoObject;->mainMediaId:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/video/player/service/model/VideoObject;->mainMediaId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/video/player/service/model/VideoObject;

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/model/VideoObject;->compareTo(Lcom/miui/video/player/service/model/VideoObject;)I

    move-result p1

    return p1
.end method

.method public final findPlayInfoByCP(Ljava/lang/String;)Lcom/miui/video/common/feed/entity/PlayInfo;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "cp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/player/service/model/VideoObject;->playInfoList:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/miui/video/common/feed/entity/PlayInfo;

    iget-object v2, v2, Lcom/miui/video/common/feed/entity/PlayInfo;->cp:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/miui/video/common/feed/entity/PlayInfo;

    return-object v1
.end method

.method public final getCachePosition()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/model/VideoObject;->cachePosition:I

    return v0
.end method

.method public final getCiIndex()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/model/VideoObject;->ciIndex:I

    return v0
.end method

.method public final getCurCp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/model/VideoObject;->curCp:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurEpisodeDuration()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/model/VideoObject;->curEpisodeDuration:I

    return v0
.end method

.method public final getCurrentSpeed()F
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/model/VideoObject;->currentSpeed:F

    return v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/model/VideoObject;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/video/player/service/model/VideoObject;->duration:J

    return-wide v0
.end method

.method public final getEpisodeType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/model/VideoObject;->episodeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getImage_url()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/model/VideoObject;->image_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getMainMediaId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/model/VideoObject;->mainMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/model/VideoObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/common/feed/entity/PlayInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/model/VideoObject;->playInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPlaylistId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/model/VideoObject;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpeedList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/model/VideoObject;->speedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSubId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/model/VideoObject;->subId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTarget()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/model/VideoObject;->target:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetAdditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/model/VideoObject;->targetAdditions:Ljava/util/List;

    return-object v0
.end method

.method public final getTop_right_logo()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/model/VideoObject;->top_right_logo:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/model/VideoObject;->type:I

    return v0
.end method

.method public final isOffline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/model/VideoObject;->isOffline:Z

    return v0
.end method

.method public final setCachePosition(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/model/VideoObject;->cachePosition:I

    return-void
.end method

.method public final setCiIndex(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/model/VideoObject;->ciIndex:I

    return-void
.end method

.method public final setCurCp(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->curCp:Ljava/lang/String;

    return-void
.end method

.method public final setCurEpisodeDuration(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/model/VideoObject;->curEpisodeDuration:I

    return-void
.end method

.method public final setCurrentSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/model/VideoObject;->currentSpeed:F

    return-void
.end method

.method public final setDate(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->date:Ljava/lang/String;

    return-void
.end method

.method public final setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/video/player/service/model/VideoObject;->duration:J

    return-void
.end method

.method public final setEpisodeType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->episodeType:Ljava/lang/String;

    return-void
.end method

.method public final setImage_url(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->image_url:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->name:Ljava/lang/String;

    return-void
.end method

.method public final setOfflineFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/model/VideoObject;->isOffline:Z

    return-void
.end method

.method public final setPlayInfoList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/common/feed/entity/PlayInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->playInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setPlaylistId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->playlistId:Ljava/lang/String;

    return-void
.end method

.method public final setSpeedList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->speedList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSubId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->subId:Ljava/lang/String;

    return-void
.end method

.method public final setTarget(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->target:Ljava/lang/String;

    return-void
.end method

.method public final setTargetAdditions(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->targetAdditions:Ljava/util/List;

    return-void
.end method

.method public final setTop_right_logo(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/player/service/model/VideoObject;->top_right_logo:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/model/VideoObject;->type:I

    return-void
.end method
