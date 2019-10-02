.class public Lcom/miui/video/biz/search/feature/FeatureSearchTrack;
.super Lcom/miui/video/common/browser/feature/base/FeatureBase;
.source "FeatureSearchTrack.java"


# instance fields
.field private loadSuccess:Z

.field private mCurrentUrl:Ljava/lang/String;

.field private mExtensionWebViewClient:Lcom/miui/video/common/browser/extension/ExWebViewClient;

.field private mInitUrl:Ljava/lang/String;

.field private mMatch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->loadSuccess:Z

    new-instance v0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/search/feature/FeatureSearchTrack$1;-><init>(Lcom/miui/video/biz/search/feature/FeatureSearchTrack;)V

    iput-object v0, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->mExtensionWebViewClient:Lcom/miui/video/common/browser/extension/ExWebViewClient;

    iput-object p1, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->mInitUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->mMatch:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/search/feature/FeatureSearchTrack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->trackInitResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/biz/search/feature/FeatureSearchTrack;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->loadSuccess:Z

    return p0
.end method

.method static synthetic access$102(Lcom/miui/video/biz/search/feature/FeatureSearchTrack;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->loadSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/video/biz/search/feature/FeatureSearchTrack;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->trackPlay(Ljava/lang/String;)V

    return-void
.end method

.method private trackInitResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackInitResult result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "result; url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->mInitUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->mInitUrl:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "module"

    const-string v1, "search_page"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "item_id"

    iget-object v1, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->mTitle:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/video/biz/search/track/SearchTrackerConst;->Companion:Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;

    invoke-virtual {v0, p2, p1}, Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;->track(Ljava/util/Map;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private trackPlay(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->mCurrentUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->mMatch:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->mMatch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->mMatch:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "module"

    const-string v1, "search_page"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "event"

    const-string v1, "others_search_play"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/video/biz/search/track/SearchTrackerConst;->Companion:Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/search/track/SearchTrackerConst$Companion;->track(Ljava/util/Map;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->init()V

    iget-object v0, p0, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->mExtensionWebViewClient:Lcom/miui/video/common/browser/extension/ExWebViewClient;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->setExtensionWebViewClient(Lcom/miui/video/common/browser/extension/ExWebViewClient;)V

    return-void
.end method

.method public unInit()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/common/browser/feature/base/FeatureBase;->unInit()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/feature/FeatureSearchTrack;->setExtensionWebViewClient(Lcom/miui/video/common/browser/extension/ExWebViewClient;)V

    return-void
.end method
