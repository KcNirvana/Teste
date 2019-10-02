.class public final Lcom/miui/video/onlineplayer/core/VideoContext;
.super Ljava/lang/Object;
.source "VideoContext.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/onlineplayer/core/VideoContext$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoContext.kt\ncom/miui/video/onlineplayer/core/VideoContext\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n*L\n1#1,324:1\n33#2,3:325\n*E\n*S KotlinDebug\n*F\n+ 1 VideoContext.kt\ncom/miui/video/onlineplayer/core/VideoContext\n*L\n59#1,3:325\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008%\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u0000 ~2\u00020\u0001:\u0001~B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010A\u001a\u0004\u0018\u00010\u00012\u0006\u0010B\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020\u0001J\u0018\u0010C\u001a\u0004\u0018\u00010@2\u0006\u0010D\u001a\u00020\u00122\u0006\u0010E\u001a\u00020@J\u0014\u0010F\u001a\u00020G2\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u000b0IJ\u0016\u0010J\u001a\u00020G2\u0006\u0010K\u001a\u00020\u00122\u0006\u0010L\u001a\u00020>J\u0016\u0010M\u001a\u00020\u00152\u0006\u0010B\u001a\u00020\u00122\u0006\u0010N\u001a\u00020\u0015J\u0016\u0010O\u001a\u00020\u00122\u0006\u0010B\u001a\u00020\u00122\u0006\u0010N\u001a\u00020\u0012J\u000e\u0010P\u001a\u00020/2\u0006\u0010Q\u001a\u00020/J \u0010R\u001a\u00020(2\u0006\u0010S\u001a\u00020\u000b2\u0006\u0010T\u001a\u00020/2\u0006\u0010U\u001a\u00020\u0012H\u0002J\u0008\u0010V\u001a\u0004\u0018\u00010(J\u0010\u0010V\u001a\u0004\u0018\u00010(2\u0006\u0010W\u001a\u00020(J\u0008\u0010X\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010Y\u001a\u00020/2\u0006\u0010W\u001a\u00020(J\u0010\u0010Z\u001a\u0004\u0018\u00010(2\u0006\u0010Q\u001a\u00020/J\u0010\u0010Z\u001a\u0004\u0018\u00010(2\u0006\u0010[\u001a\u00020\u0012J\t\u0010\\\u001a\u00020\u0015H\u0086\u0002J\u0006\u0010]\u001a\u00020\u0015J\u0006\u0010^\u001a\u00020\u0015J\u0006\u0010_\u001a\u00020\u0015J\u0006\u0010`\u001a\u00020\u0015J\u0006\u0010a\u001a\u00020GJ\u0006\u0010b\u001a\u00020GJ\u0006\u0010c\u001a\u00020GJ+\u0010d\u001a\u00020G2\u0008\u0008\u0002\u0010e\u001a\u00020/2\n\u0008\u0002\u0010f\u001a\u0004\u0018\u00010/2\u0008\u0008\u0002\u0010g\u001a\u00020/\u00a2\u0006\u0002\u0010hJ\u0006\u0010i\u001a\u00020GJ\u0006\u0010j\u001a\u00020GJ\u0006\u0010k\u001a\u00020GJ\u0016\u0010l\u001a\u00020G2\u0006\u0010m\u001a\u00020(2\u0006\u0010n\u001a\u00020oJ\u0006\u0010p\u001a\u00020GJ\u0006\u0010q\u001a\u00020GJ\u0006\u0010r\u001a\u00020GJ\u0006\u0010s\u001a\u00020GJ\u0006\u0010t\u001a\u00020GJ\u0006\u0010u\u001a\u00020GJ\u0006\u0010v\u001a\u00020GJ\u0006\u0010w\u001a\u00020GJ\u0018\u0010x\u001a\u00020G2\u0006\u0010y\u001a\u00020\u001b2\u0006\u0010z\u001a\u00020\u001bH\u0002J\u0006\u0010{\u001a\u00020GJ\u001e\u0010|\u001a\u00020G2\u000c\u0010H\u001a\u0008\u0012\u0004\u0012\u00020\u000b0I2\u0008\u0010}\u001a\u0004\u0018\u00010\u001dR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R>\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\u0008\u0012\u0004\u0012\u00020\u000b`\u000c2\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\u0008\u0012\u0004\u0012\u00020\u000b`\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR*\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00010\u0011j\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0001`\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R(\u0010#\u001a\u0004\u0018\u00010\u00122\u0008\u0010\"\u001a\u0004\u0018\u00010\u0012@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R(\u0010)\u001a\u0004\u0018\u00010(2\u0008\u0010\"\u001a\u0004\u0018\u00010(@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u000e\u0010.\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u00100\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010%\"\u0004\u00082\u0010\'R>\u00103\u001a\u0012\u0012\u0004\u0012\u00020(0\nj\u0008\u0012\u0004\u0012\u00020(`\u000c2\u0016\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020(0\nj\u0008\u0012\u0004\u0012\u00020(`\u000c@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u000fR+\u00105\u001a\u00020\u001b2\u0006\u0010\t\u001a\u00020\u001b8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u0014\u0010<\u001a\u0008\u0012\u0004\u0012\u00020>0=X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010?\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020@0\u0011j\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020@`\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u007f"
    }
    d2 = {
        "Lcom/miui/video/onlineplayer/core/VideoContext;",
        "",
        "()V",
        "authorInfo",
        "Lcom/miui/video/base/model/MediaData$AuthorInfo;",
        "getAuthorInfo",
        "()Lcom/miui/video/base/model/MediaData$AuthorInfo;",
        "setAuthorInfo",
        "(Lcom/miui/video/base/model/MediaData$AuthorInfo;)V",
        "<set-?>",
        "Ljava/util/ArrayList;",
        "Lcom/miui/video/base/model/MediaData$Episode;",
        "Lkotlin/collections/ArrayList;",
        "episodeItems",
        "getEpisodeItems",
        "()Ljava/util/ArrayList;",
        "featuresMap",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "hasPreloadThisVideoObject",
        "",
        "getHasPreloadThisVideoObject",
        "()Z",
        "setHasPreloadThisVideoObject",
        "(Z)V",
        "lastVideoPlayStatus",
        "Lcom/miui/video/base/PlayStatus;",
        "media",
        "Lcom/miui/video/base/model/MediaData$Media;",
        "getMedia",
        "()Lcom/miui/video/base/model/MediaData$Media;",
        "setMedia",
        "(Lcom/miui/video/base/model/MediaData$Media;)V",
        "value",
        "playId",
        "getPlayId",
        "()Ljava/lang/String;",
        "setPlayId",
        "(Ljava/lang/String;)V",
        "Lcom/miui/video/player/service/model/VideoObject;",
        "playingVideo",
        "getPlayingVideo",
        "()Lcom/miui/video/player/service/model/VideoObject;",
        "setPlayingVideo$biz_player_online_release",
        "(Lcom/miui/video/player/service/model/VideoObject;)V",
        "resolution",
        "",
        "targetCP",
        "getTargetCP",
        "setTargetCP",
        "videoItems",
        "getVideoItems",
        "videoPlayStatus",
        "getVideoPlayStatus",
        "()Lcom/miui/video/base/PlayStatus;",
        "setVideoPlayStatus",
        "(Lcom/miui/video/base/PlayStatus;)V",
        "videoPlayStatus$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "videoStatusListeners",
        "Lcom/miui/video/biz/player/online/common/ListenerHolder;",
        "Lcom/miui/video/base/IPlayer$IVideoStatusListener;",
        "vipAuthInfos",
        "Lcom/miui/video/biz/player/online/model/VIPAuth;",
        "addPlayFeature",
        "key",
        "addVIPAuthInfo",
        "cp",
        "auth",
        "addVideoItems",
        "",
        "items",
        "",
        "addVideoStatusListener",
        "tag",
        "listener",
        "checkPlayFeatureBoolean",
        "def",
        "checkPlayFeatureString",
        "ciIndex2Position",
        "ciIndex",
        "createVideoObject",
        "e",
        "index",
        "type",
        "findNextVideo",
        "current",
        "findNextVideoEpisode",
        "findNextVideoPosition",
        "findVideoItem",
        "id",
        "hasNext",
        "isAdPlay",
        "isIdle",
        "isReplay",
        "isVideoHasPlayed",
        "onAdBegin",
        "onAdEnd",
        "onDestroy",
        "onError",
        "err",
        "extra",
        "pos",
        "(ILjava/lang/Integer;I)V",
        "onFinishEpisode",
        "onFinished",
        "onIdle",
        "onLaunch",
        "video",
        "controllerPresenter",
        "Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;",
        "onPause",
        "onReplay",
        "onReplayLaunch",
        "onSeeked",
        "onVideoBuffering",
        "onVideoBufferingEnd",
        "onVideoBufferingStart",
        "onVideoStart",
        "onVideoStatusChanged",
        "old",
        "new",
        "resetPlayId",
        "setVideoItems",
        "mediaData",
        "Companion",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/miui/video/onlineplayer/core/VideoContext$Companion;

# The value of this static final field might be set in the static constructor
.field private static final FEATURE_AUTO_ROTATION:Ljava/lang/String; = "auto_rotation"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

# The value of this static final field might be set in the static constructor
.field private static final TAG:Ljava/lang/String; = "VideoContext"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private authorInfo:Lcom/miui/video/base/model/MediaData$AuthorInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private episodeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/base/model/MediaData$Episode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final featuresMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private hasPreloadThisVideoObject:Z

.field private lastVideoPlayStatus:Lcom/miui/video/base/PlayStatus;

.field private media:Lcom/miui/video/base/model/MediaData$Media;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private playId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private playingVideo:Lcom/miui/video/player/service/model/VideoObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resolution:I

.field private targetCP:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private videoItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/player/service/model/VideoObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoPlayStatus$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final videoStatusListeners:Lcom/miui/video/biz/player/online/common/ListenerHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/biz/player/online/common/ListenerHolder<",
            "Lcom/miui/video/base/IPlayer$IVideoStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private vipAuthInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/video/biz/player/online/model/VIPAuth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/miui/video/onlineplayer/core/VideoContext;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "videoPlayStatus"

    const-string v4, "getVideoPlayStatus()Lcom/miui/video/base/PlayStatus;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/video/onlineplayer/core/VideoContext;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/miui/video/onlineplayer/core/VideoContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/video/onlineplayer/core/VideoContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/video/onlineplayer/core/VideoContext;->Companion:Lcom/miui/video/onlineplayer/core/VideoContext$Companion;

    const-string v0, "VideoContext"

    sput-object v0, Lcom/miui/video/onlineplayer/core/VideoContext;->TAG:Ljava/lang/String;

    const-string v0, "auto_rotation"

    sput-object v0, Lcom/miui/video/onlineplayer/core/VideoContext;->FEATURE_AUTO_ROTATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->featuresMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->vipAuthInfos:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->episodeItems:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/video/player/service/model/MediaConstantsDef;->INSTANCE:Lcom/miui/video/player/service/model/MediaConstantsDef;

    invoke-virtual {v0}, Lcom/miui/video/player/service/model/MediaConstantsDef;->getCLARITY_NORMAL()I

    move-result v0

    iput v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->resolution:I

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->targetCP:Ljava/lang/String;

    new-instance v0, Lcom/miui/video/biz/player/online/common/ListenerHolder;

    invoke-direct {v0}, Lcom/miui/video/biz/player/online/common/ListenerHolder;-><init>()V

    iput-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoStatusListeners:Lcom/miui/video/biz/player/online/common/ListenerHolder;

    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    sget-object v0, Lcom/miui/video/base/PlayStatus;->IDLE:Lcom/miui/video/base/PlayStatus;

    new-instance v1, Lcom/miui/video/onlineplayer/core/VideoContext$$special$$inlined$observable$1;

    invoke-direct {v1, v0, v0, p0}, Lcom/miui/video/onlineplayer/core/VideoContext$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/miui/video/onlineplayer/core/VideoContext;)V

    check-cast v1, Lkotlin/properties/ReadWriteProperty;

    iput-object v1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoPlayStatus$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v0, Lcom/miui/video/base/PlayStatus;->IDLE:Lcom/miui/video/base/PlayStatus;

    iput-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->lastVideoPlayStatus:Lcom/miui/video/base/PlayStatus;

    return-void
.end method

.method public static final synthetic access$getFEATURE_AUTO_ROTATION$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/onlineplayer/core/VideoContext;->FEATURE_AUTO_ROTATION:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/onlineplayer/core/VideoContext;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$onVideoStatusChanged(Lcom/miui/video/onlineplayer/core/VideoContext;Lcom/miui/video/base/PlayStatus;Lcom/miui/video/base/PlayStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/onlineplayer/core/VideoContext;->onVideoStatusChanged(Lcom/miui/video/base/PlayStatus;Lcom/miui/video/base/PlayStatus;)V

    return-void
.end method

.method private final createVideoObject(Lcom/miui/video/base/model/MediaData$Episode;ILjava/lang/String;)Lcom/miui/video/player/service/model/VideoObject;
    .locals 3

    new-instance v0, Lcom/miui/video/player/service/model/VideoObject;

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Episode;->id:Ljava/lang/String;

    const-string v2, "e.id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/miui/video/player/service/model/VideoObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->media:Lcom/miui/video/base/model/MediaData$Media;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/miui/video/base/model/MediaData$Media;->videoType:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/miui/video/player/service/model/VideoObject;->setType(I)V

    invoke-virtual {v0, p2}, Lcom/miui/video/player/service/model/VideoObject;->setCiIndex(I)V

    iget-object p2, p1, Lcom/miui/video/base/model/MediaData$Episode;->name:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/miui/video/player/service/model/VideoObject;->setName(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/miui/video/base/model/MediaData$Episode;->date:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/miui/video/player/service/model/VideoObject;->setDate(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/miui/video/base/model/MediaData$Episode;->cp:Ljava/lang/String;

    const-string v1, "e.cp"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/miui/video/player/service/model/VideoObject;->setCurCp(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/miui/video/base/model/MediaData$Episode;->duration:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/player/service/model/VideoObject;->setDuration(J)V

    iget-object p2, p1, Lcom/miui/video/base/model/MediaData$Episode;->top_right_logo:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/miui/video/player/service/model/VideoObject;->setTop_right_logo(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/miui/video/player/service/model/VideoObject;->setEpisodeType(Ljava/lang/String;)V

    sget-object p2, Lcom/miui/video/onlineplayer/core/VideoContext;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "episode setTarget:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/miui/video/base/model/MediaData$Episode;->target:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/miui/video/base/model/MediaData$Episode;->target:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/miui/video/player/service/model/VideoObject;->setTarget(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/miui/video/base/model/MediaData$Episode;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/miui/video/player/service/model/VideoObject;->setImage_url(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/miui/video/base/model/MediaData$Episode;->targetAddition:Ljava/util/List;

    invoke-virtual {v0, p2}, Lcom/miui/video/player/service/model/VideoObject;->setTargetAdditions(Ljava/util/List;)V

    iget-object p1, p1, Lcom/miui/video/base/model/MediaData$Episode;->playlist_id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/model/VideoObject;->setPlaylistId(Ljava/lang/String;)V

    return-object v0
.end method

.method private final getVideoPlayStatus()Lcom/miui/video/base/PlayStatus;
    .locals 3

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoPlayStatus$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/miui/video/onlineplayer/core/VideoContext;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/PlayStatus;

    return-object v0
.end method

.method public static synthetic onError$default(Lcom/miui/video/onlineplayer/core/VideoContext;ILjava/lang/Integer;IILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, -0x1

    if-eqz p5, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/onlineplayer/core/VideoContext;->onError(ILjava/lang/Integer;I)V

    return-void
.end method

.method private final onVideoStatusChanged(Lcom/miui/video/base/PlayStatus;Lcom/miui/video/base/PlayStatus;)V
    .locals 3

    sget-object v0, Lcom/miui/video/onlineplayer/core/VideoContext;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->lastVideoPlayStatus:Lcom/miui/video/base/PlayStatus;

    iget-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoStatusListeners:Lcom/miui/video/biz/player/online/common/ListenerHolder;

    new-instance v0, Lcom/miui/video/onlineplayer/core/VideoContext$onVideoStatusChanged$1;

    invoke-direct {v0, p2}, Lcom/miui/video/onlineplayer/core/VideoContext$onVideoStatusChanged$1;-><init>(Lcom/miui/video/base/PlayStatus;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/player/online/common/ListenerHolder;->notifyListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final setPlayId(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->playId:Ljava/lang/String;

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->setPlayId(Ljava/lang/String;)V

    return-void
.end method

.method private final setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoPlayStatus$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/miui/video/onlineplayer/core/VideoContext;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addPlayFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->featuresMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final addVIPAuthInfo(Ljava/lang/String;Lcom/miui/video/biz/player/online/model/VIPAuth;)Lcom/miui/video/biz/player/online/model/VIPAuth;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/biz/player/online/model/VIPAuth;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "cp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auth"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->vipAuthInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/biz/player/online/model/VIPAuth;

    return-object p1
.end method

.method public final addVideoItems(Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/base/model/MediaData$Episode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->episodeItems:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/base/model/MediaData$Episode;

    add-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/base/model/MediaData$Episode;

    iget-object v5, v5, Lcom/miui/video/base/model/MediaData$Episode;->type:Ljava/lang/String;

    const-string v6, "items[index].type"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v4, v5}, Lcom/miui/video/onlineplayer/core/VideoContext;->createVideoObject(Lcom/miui/video/base/model/MediaData$Episode;ILjava/lang/String;)Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addVideoStatusListener(Ljava/lang/String;Lcom/miui/video/base/IPlayer$IVideoStatusListener;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/base/IPlayer$IVideoStatusListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoStatusListeners:Lcom/miui/video/biz/player/online/common/ListenerHolder;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/player/online/common/ListenerHolder;->addListener(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final checkPlayFeatureBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->featuresMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/miui/video/onlineplayer/plugin/entry/BasePluginKt;->getOr(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final checkPlayFeatureString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "def"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->featuresMap:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lcom/miui/video/onlineplayer/plugin/entry/BasePluginKt;->getOr(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final ciIndex2Position(I)I
    .locals 4

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/player/service/model/VideoObject;

    invoke-virtual {v3}, Lcom/miui/video/player/service/model/VideoObject;->getCiIndex()I

    move-result v3

    if-ne v3, p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt v0, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final findNextVideo()Lcom/miui/video/player/service/model/VideoObject;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->findNextVideo(Lcom/miui/video/player/service/model/VideoObject;)Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final findNextVideo(Lcom/miui/video/player/service/model/VideoObject;)Lcom/miui/video/player/service/model/VideoObject;
    .locals 2
    .param p1    # Lcom/miui/video/player/service/model/VideoObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getCiIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/core/VideoContext;->ciIndex2Position(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/model/VideoObject;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final findNextVideoEpisode()Lcom/miui/video/base/model/MediaData$Episode;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getCiIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->ciIndex2Position(I)I

    move-result v0

    add-int/2addr v0, v2

    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->episodeItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/model/MediaData$Episode;

    return-object v0

    :cond_3
    :goto_0
    return-object v1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public final findNextVideoPosition(Lcom/miui/video/player/service/model/VideoObject;)I
    .locals 2
    .param p1    # Lcom/miui/video/player/service/model/VideoObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/player/service/model/VideoObject;->getCiIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/core/VideoContext;->ciIndex2Position(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final findVideoItem(I)Lcom/miui/video/player/service/model/VideoObject;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/core/VideoContext;->ciIndex2Position(I)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/model/VideoObject;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final findVideoItem(Ljava/lang/String;)Lcom/miui/video/player/service/model/VideoObject;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/player/service/model/VideoObject;

    invoke-virtual {v2}, Lcom/miui/video/player/service/model/VideoObject;->getMainMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/player/service/model/VideoObject;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public final getAuthorInfo()Lcom/miui/video/base/model/MediaData$AuthorInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->authorInfo:Lcom/miui/video/base/model/MediaData$AuthorInfo;

    return-object v0
.end method

.method public final getEpisodeItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/base/model/MediaData$Episode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->episodeItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getHasPreloadThisVideoObject()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->hasPreloadThisVideoObject:Z

    return v0
.end method

.method public final getMedia()Lcom/miui/video/base/model/MediaData$Media;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->media:Lcom/miui/video/base/model/MediaData$Media;

    return-object v0
.end method

.method public final getPlayId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->playId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayingVideo()Lcom/miui/video/player/service/model/VideoObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    return-object v0
.end method

.method public final getTargetCP()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->targetCP:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/video/player/service/model/VideoObject;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->episodeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/video/player/service/model/VideoObject;->getCiIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->ciIndex2Position(I)I

    move-result v0

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public final isAdPlay()Z
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getVideoPlayStatus()Lcom/miui/video/base/PlayStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/video/base/PlayStatus;->AD_BEGIN:Lcom/miui/video/base/PlayStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isIdle()Z
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getVideoPlayStatus()Lcom/miui/video/base/PlayStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/video/base/PlayStatus;->IDLE:Lcom/miui/video/base/PlayStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isReplay()Z
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getVideoPlayStatus()Lcom/miui/video/base/PlayStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/video/base/PlayStatus;->VIDEO_REPLAY:Lcom/miui/video/base/PlayStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isVideoHasPlayed()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->lastVideoPlayStatus:Lcom/miui/video/base/PlayStatus;

    sget-object v1, Lcom/miui/video/base/PlayStatus;->IDLE:Lcom/miui/video/base/PlayStatus;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getVideoPlayStatus()Lcom/miui/video/base/PlayStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/video/base/PlayStatus;->LAUNCH:Lcom/miui/video/base/PlayStatus;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->lastVideoPlayStatus:Lcom/miui/video/base/PlayStatus;

    sget-object v1, Lcom/miui/video/base/PlayStatus;->LAUNCH:Lcom/miui/video/base/PlayStatus;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getVideoPlayStatus()Lcom/miui/video/base/PlayStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/video/base/PlayStatus;->VIDEO_BUFFERING_START:Lcom/miui/video/base/PlayStatus;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final onAdBegin()V
    .locals 1

    sget-object v0, Lcom/miui/video/base/PlayStatus;->AD_BEGIN:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    return-void
.end method

.method public final onAdEnd()V
    .locals 1

    sget-object v0, Lcom/miui/video/base/PlayStatus;->AD_END:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    sget-object v0, Lcom/miui/video/base/PlayStatus;->VIDEO_DESTROY:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    return-void
.end method

.method public final onError(ILjava/lang/Integer;I)V
    .locals 9
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/miui/video/base/PlayStatus;->ERROR:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    sget-object v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    move v5, p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    const/4 v5, -0x1

    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v2, 0x0

    move v3, p3

    move v4, p1

    invoke-static/range {v1 .. v8}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->onPlayClose$default(Lcom/miui/video/player/service/statistics/VideoStatisticsManager;ZIIIZILjava/lang/Object;)V

    return-void
.end method

.method public final onFinishEpisode()V
    .locals 1

    sget-object v0, Lcom/miui/video/base/PlayStatus;->VIDEO_FINISHED_EPISODE:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    return-void
.end method

.method public final onFinished()V
    .locals 2

    sget-object v0, Lcom/miui/video/base/PlayStatus;->VIDEO_FINISHED:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    const/4 v0, 0x0

    check-cast v0, Lcom/miui/video/player/service/model/VideoObject;

    invoke-virtual {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setPlayingVideo$biz_player_online_release(Lcom/miui/video/player/service/model/VideoObject;)V

    iget-object v0, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoStatusListeners:Lcom/miui/video/biz/player/online/common/ListenerHolder;

    sget-object v1, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    const-string v1, "javaClass"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/player/online/common/ListenerHolder;->cancelAllListener(Ljava/lang/String;)V

    return-void
.end method

.method public final onIdle()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getVideoPlayStatus()Lcom/miui/video/base/PlayStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/video/base/PlayStatus;->IDLE:Lcom/miui/video/base/PlayStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/miui/video/base/PlayStatus;->IDLE:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    :cond_0
    return-void
.end method

.method public final onLaunch(Lcom/miui/video/player/service/model/VideoObject;Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/model/VideoObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/biz/player/online/core/VideoControllerPresenter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "video"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controllerPresenter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/onlineplayer/core/VideoContext;->setPlayingVideo$biz_player_online_release(Lcom/miui/video/player/service/model/VideoObject;)V

    iget-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoStatusListeners:Lcom/miui/video/biz/player/online/common/ListenerHolder;

    sget-object p2, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {p2}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->getTAG()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {p1, p2, v0}, Lcom/miui/video/biz/player/online/common/ListenerHolder;->addListener(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/miui/video/base/PlayStatus;->LAUNCH:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, p1}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    sget-object v0, Lcom/miui/video/base/PlayStatus;->VIDEO_PAUSED:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    return-void
.end method

.method public final onReplay()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/onlineplayer/core/VideoContext;->getVideoPlayStatus()Lcom/miui/video/base/PlayStatus;

    move-result-object v0

    sget-object v1, Lcom/miui/video/base/PlayStatus;->VIDEO_REPLAY:Lcom/miui/video/base/PlayStatus;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/miui/video/base/PlayStatus;->VIDEO_REPLAY:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    :cond_0
    return-void
.end method

.method public final onReplayLaunch()V
    .locals 1

    sget-object v0, Lcom/miui/video/base/PlayStatus;->LAUNCH:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    return-void
.end method

.method public final onSeeked()V
    .locals 1

    sget-object v0, Lcom/miui/video/base/PlayStatus;->VIDEO_SEEKED:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    return-void
.end method

.method public final onVideoBuffering()V
    .locals 1

    sget-object v0, Lcom/miui/video/base/PlayStatus;->VIDEO_BUFFERING:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    return-void
.end method

.method public final onVideoBufferingEnd()V
    .locals 1

    sget-object v0, Lcom/miui/video/base/PlayStatus;->VIDEO_BUFFERING_END:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    return-void
.end method

.method public final onVideoBufferingStart()V
    .locals 1

    sget-object v0, Lcom/miui/video/base/PlayStatus;->VIDEO_BUFFERING_START:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    return-void
.end method

.method public final onVideoStart()V
    .locals 1

    sget-object v0, Lcom/miui/video/base/PlayStatus;->VIDEO_START:Lcom/miui/video/base/PlayStatus;

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setVideoPlayStatus(Lcom/miui/video/base/PlayStatus;)V

    return-void
.end method

.method public final resetPlayId()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->setPlayId(Ljava/lang/String;)V

    return-void
.end method

.method public final setAuthorInfo(Lcom/miui/video/base/model/MediaData$AuthorInfo;)V
    .locals 0
    .param p1    # Lcom/miui/video/base/model/MediaData$AuthorInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->authorInfo:Lcom/miui/video/base/model/MediaData$AuthorInfo;

    return-void
.end method

.method public final setHasPreloadThisVideoObject(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->hasPreloadThisVideoObject:Z

    return-void
.end method

.method public final setMedia(Lcom/miui/video/base/model/MediaData$Media;)V
    .locals 0
    .param p1    # Lcom/miui/video/base/model/MediaData$Media;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->media:Lcom/miui/video/base/model/MediaData$Media;

    return-void
.end method

.method public final setPlayingVideo$biz_player_online_release(Lcom/miui/video/player/service/model/VideoObject;)V
    .locals 1
    .param p1    # Lcom/miui/video/player/service/model/VideoObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->playingVideo:Lcom/miui/video/player/service/model/VideoObject;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->INSTANCE:Lcom/miui/video/player/service/statistics/VideoStatisticsManager;

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/statistics/VideoStatisticsManager;->setPlayingOnlineVideo(Lcom/miui/video/player/service/model/VideoObject;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->hasPreloadThisVideoObject:Z

    :cond_0
    return-void
.end method

.method public final setTargetCP(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->targetCP:Ljava/lang/String;

    return-void
.end method

.method public final setVideoItems(Ljava/util/List;Lcom/miui/video/base/model/MediaData$Media;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/video/base/model/MediaData$Media;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/video/base/model/MediaData$Episode;",
            ">;",
            "Lcom/miui/video/base/model/MediaData$Media;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->media:Lcom/miui/video/base/model/MediaData$Media;

    iget-object p2, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->episodeItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->episodeItems:Ljava/util/ArrayList;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/model/MediaData$Episode;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/base/model/MediaData$Episode;

    iget-object v0, v0, Lcom/miui/video/base/model/MediaData$Episode;->type:Ljava/lang/String;

    const-string v3, "items[index].type"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v2, v0}, Lcom/miui/video/onlineplayer/core/VideoContext;->createVideoObject(Lcom/miui/video/base/model/MediaData$Episode;ILjava/lang/String;)Lcom/miui/video/player/service/model/VideoObject;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/onlineplayer/core/VideoContext;->videoItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
