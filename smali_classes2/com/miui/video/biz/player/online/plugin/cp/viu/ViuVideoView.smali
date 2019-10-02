.class public Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;
.super Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;
.source "ViuVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;
    }
.end annotation


# static fields
.field public static final ERROR_GET_AUTHTOKEN:I = 0x1

.field public static final ERROR_GET_PLAYTOKEN:I = 0x2

.field public static final KEY_AUTHTOKEN:Ljava/lang/String; = "viu_authtoken"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

.field private mAuthTokenCallback:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback<",
            "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;",
            ">;"
        }
    .end annotation
.end field

.field protected mClientId:Ljava/lang/String;

.field private mContentId:Ljava/lang/String;

.field private mDuration:J

.field private mErrorAuthTokenRunnable:Ljava/lang/Runnable;

.field private mErrorPlayTokenRunnable:Ljava/lang/Runnable;

.field private mPlayRunnable:Ljava/lang/Runnable;

.field private mPlayToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;

.field private mPlayTokenCallback:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback<",
            "Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayUrl:Ljava/lang/String;

.field private mProgressEventRunnable:Ljava/lang/Runnable;

.field private mUIHandler:Landroid/os/Handler;

.field private network:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;-><init>(Landroid/content/Context;)V

    const-string p1, "ViuVideoView"

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->TAG:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mDuration:J

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mUIHandler:Landroid/os/Handler;

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$1;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mAuthTokenCallback:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$2;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayTokenCallback:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$3;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$3;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$4;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$4;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mProgressEventRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->TAG:Ljava/lang/String;

    const-string v0, "ViuVideoView 20190123"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "viu"

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->pluginId:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/NetUtil;->getNetworkState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->network:Ljava/lang/String;

    invoke-static {}, Lcom/miui/video/base/common/statistics/MiDevUtils;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mClientId:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playViu ,mClientId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->initAuthToken()V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->doNetConnectPlay()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->onInitiatedStatsEvent()V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;)Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->realPlay(Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->onPlayProgressStatsEvent()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mContentId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayTokenCallback:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mErrorAuthTokenRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;

    return-object p0
.end method

.method static synthetic access$702(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;)Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mErrorPlayTokenRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private doNetConnectPlay()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doNetConnectPlay mPlayToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;

    iget-object v0, v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;->playUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->playViu(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;
    .locals 1

    new-instance v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    invoke-direct {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mContentId:Ljava/lang/String;

    iput-object p1, v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;->cid:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;->sid:Ljava/lang/String;

    iput-object p1, v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;->sid:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;->authToken:Ljava/lang/String;

    iput-object p1, v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;->auth:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;->sid:Ljava/lang/String;

    iput-object p1, v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;->sid:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private initAuthToken()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "viu_authtoken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/SingleGson;->get()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private onAdProgressStatsEvent()V
    .locals 1

    const-string v0, "ad_progress"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->startProgressEvent()V

    return-void
.end method

.method private onInitiatedStatsEvent()V
    .locals 5

    const-string v0, "play_initiated"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->network:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;->network:Ljava/lang/String;

    iget-wide v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mDuration:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;->duration:I

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    return-void
.end method

.method private onPlayProgressStatsEvent()V
    .locals 1

    const-string v0, "play_progress"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->startProgressEvent()V

    return-void
.end method

.method private realPlay(Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;)V
    .locals 6

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;->playUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x190

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    invoke-interface {p1, v3, v2, v1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "play_url"

    iget-object p1, p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuPlayToken;->playUrl:Ljava/lang/String;

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ad_url"

    const-string v4, ""

    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "id"

    iget-object v4, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "duration"

    iget-wide v4, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mDuration:J

    invoke-virtual {v0, p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mOffset:I

    invoke-super {p0, p1, v0, v3}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setDataSource(Ljava/lang/String;ILjava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    invoke-interface {p1, v3, v2, v1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_1
    return-void
.end method

.method private sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStats;->getInstance()Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStats;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStats;->log(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    return-void
.end method

.method private startProgressEvent()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mProgressEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mProgressEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stopProgressEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mProgressEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addMark(Landroid/widget/RelativeLayout;)V
    .locals 0

    return-void
.end method

.method public getIsSupportChangeSpeed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected handleOnError(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/4 v1, 0x0

    const/16 v2, 0x190

    invoke-interface {v0, v1, v2, p1}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_0
    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onActivityDestroy()V

    invoke-static {}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI;->cancleAll()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public onActivityPause()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->onActivityPause()V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mErrorAuthTokenRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mErrorAuthTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mErrorPlayTokenRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mErrorPlayTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mProgressEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method protected onBufferEndStatsEvent()V
    .locals 1

    const-string v0, "buffering_completed"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onBufferStartStatsEvent()V
    .locals 1

    const-string v0, "buffering_started"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onCompletedStatsEvent()V
    .locals 1

    const-string v0, "play_completed"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->stopProgressEvent()V

    return-void
.end method

.method protected onErrorStatsEvent(II)V
    .locals 2

    const-string v0, "play_error"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;->error_code:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;->error_msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getCurrentPosition()I

    move-result p1

    iput p1, v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;->play_pos:I

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->stopProgressEvent()V

    return-void
.end method

.method protected onPauseStatsEvent()V
    .locals 2

    const-string v0, "play_paused"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;->play_pos:I

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onPrepareStatsEvent()V
    .locals 1

    const-string v0, "loading_started"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    return-void
.end method

.method protected onPreparedStatsEvent()V
    .locals 1

    const-string v0, "loading_completed"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onResumeStatsEvent()V
    .locals 1

    const-string v0, "play_resumed"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onSeekCompletedStatsEvent()V
    .locals 2

    const-string v0, "seek_completed"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;->play_pos:I

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onSeekStatsEvent()V
    .locals 2

    const-string v0, "seek_started"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;->play_pos:I

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onStartStatsEvent()V
    .locals 1

    const-string v0, "play_started"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->startProgressEvent()V

    return-void
.end method

.method protected onStopStatsEvent()V
    .locals 1

    const-string v0, "play_stopped"

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->getStatsEventComment(Ljava/lang/String;)Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->sendStatsEvent(Lcom/miui/video/biz/player/online/plugin/cp/viu/statistics/ViuStatsEvent;)V

    invoke-direct {p0}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->stopProgressEvent()V

    return-void
.end method

.method playViu(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playViu uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mContentId:Ljava/lang/String;

    const-string p1, "isForceRemote"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "isForceRemote"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->isForceRemote:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->isForceRemote:Z

    :goto_0
    const-string p1, "duration"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mDuration:J

    const-string p1, "item_id"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->item_id:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    invoke-static {p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI;->isAuthTokenValid(Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mContentId:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayTokenCallback:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;

    invoke-static {p1, v1, v2}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI;->getPlayToken(Ljava/lang/String;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mAuthTokenCallback:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mAuthToken:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;

    iget-object v2, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mClientId:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI;->getAuthToken(Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$Callback;Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/4 v1, 0x0

    const/16 v2, 0x190

    invoke-interface {p1, v1, v2, v0}, Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;->onError(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->playViu(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->playViu(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->playViu(Ljava/lang/String;)V

    return-void
.end method

.method public setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/video/biz/player/online/plugin/cp/originalbase/OriginalbaseVideoView;->setOnErrorListener(Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;)V

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/16 v1, 0x190

    const/4 v2, 0x2

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;II)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mErrorPlayTokenRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;

    iget-object v0, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mOnErrorListener:Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView$InnerErrorRunnable;-><init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;Lcom/miui/video/player/service/media/IMediaPlayer$OnErrorListener;II)V

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/ViuVideoView;->mErrorAuthTokenRunnable:Ljava/lang/Runnable;

    return-void
.end method
