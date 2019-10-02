.class public Lcom/miui/video/service/share/ShareBuilder;
.super Ljava/lang/Object;
.source "ShareBuilder.java"


# static fields
.field public static final CLICK_SHARE:Ljava/lang/String; = "click_share"

.field public static final FROM_H5:Ljava/lang/String; = "h5_page"

.field public static final FROM_LONG_DETAIL:Ljava/lang/String; = "long_detail_page"

.field public static final FROM_SHORT_DETAIL:Ljava/lang/String; = "short_detail_page"

.field public static final FROM_SHORT_LIST:Ljava/lang/String; = "short_channel_page"

.field public static final FROM_UGC:Ljava/lang/String; = "ugc_detail_page"

.field private static final SP_FILE:Ljava/lang/String; = "share"

.field private static final SP_KEY:Ljava/lang/String; = "lastShareTime"


# instance fields
.field private info:Lcom/miui/video/service/share/data/ShareInfo;

.field private mCase:Lcom/miui/video/service/share/net/ShareUseCase;

.field private shareListener:Lcom/miui/video/service/share/ShareListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/share/ShareBuilder;)Lcom/miui/video/service/share/data/ShareInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/share/ShareBuilder;->info:Lcom/miui/video/service/share/data/ShareInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/service/share/ShareBuilder;)Lcom/miui/video/service/share/ShareListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/share/ShareBuilder;->shareListener:Lcom/miui/video/service/share/ShareListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/service/share/ShareBuilder;)Lcom/miui/video/service/share/net/ShareUseCase;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/share/ShareBuilder;->mCase:Lcom/miui/video/service/share/net/ShareUseCase;

    return-object p0
.end method

.method private createUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "https://video.in.intl.xiaomi.com/resolve/global_v/global_share"

    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "seg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&ver="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/AppUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getShareTarget(Ljava/lang/String;)Lcom/miui/video/service/share/target/ShareTarget;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance p1, Lcom/miui/video/service/share/target/WhatsAppShare;

    invoke-direct {p1}, Lcom/miui/video/service/share/target/WhatsAppShare;-><init>()V

    return-object p1
.end method

.method public static getSupportShareChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    const-string v3, "text/plain"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x10000

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public reportClickShare()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item_id"

    iget-object v2, p0, Lcom/miui/video/service/share/ShareBuilder;->info:Lcom/miui/video/service/share/data/ShareInfo;

    invoke-virtual {v2}, Lcom/miui/video/service/share/data/ShareInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "playlist_id"

    iget-object v2, p0, Lcom/miui/video/service/share/ShareBuilder;->info:Lcom/miui/video/service/share/data/ShareInfo;

    invoke-virtual {v2}, Lcom/miui/video/service/share/data/ShareInfo;->getPlaylistId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "share"

    iget-object v3, p0, Lcom/miui/video/service/share/ShareBuilder;->info:Lcom/miui/video/service/share/data/ShareInfo;

    invoke-virtual {v3}, Lcom/miui/video/service/share/data/ShareInfo;->getFrom()Ljava/lang/String;

    move-result-object v3

    const-string v4, "click_share"

    invoke-static {v2, v3, v4}, Lcom/miui/video/base/common/statistics/TrackEntity;->createTrackParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lcom/miui/video/base/common/statistics/TrackerUtils;->track(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method public share(Landroid/support/v4/app/FragmentActivity;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/service/share/ShareBuilder;->info:Lcom/miui/video/service/share/data/ShareInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/service/share/ShareBuilder;->reportClickShare()V

    const-string v0, "ShareBuilder"

    invoke-static {p1}, Lcom/miui/video/service/share/ShareBuilder;->getSupportShareChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "share"

    const-string v1, "lastShareTime"

    invoke-static {p1, v0, v1}, Lcom/miui/video/base/utils/SharePreferenceManager;->readLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1388

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "share"

    const-string v1, "lastShareTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/miui/video/base/utils/SharePreferenceManager;->saveLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    sget v1, Lcom/miui/video/service/R$string;->share_ugc_waitting:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    new-instance v0, Lcom/miui/video/service/share/net/ShareUseCase;

    new-instance v1, Lcom/miui/video/service/share/net/ShareRepositoryImpl;

    invoke-direct {v1}, Lcom/miui/video/service/share/net/ShareRepositoryImpl;-><init>()V

    invoke-direct {v0, v1}, Lcom/miui/video/service/share/net/ShareUseCase;-><init>(Lcom/miui/video/service/share/net/ShareRepositoryImpl;)V

    iput-object v0, p0, Lcom/miui/video/service/share/ShareBuilder;->mCase:Lcom/miui/video/service/share/net/ShareUseCase;

    iget-object v0, p0, Lcom/miui/video/service/share/ShareBuilder;->mCase:Lcom/miui/video/service/share/net/ShareUseCase;

    iget-object v1, p0, Lcom/miui/video/service/share/ShareBuilder;->info:Lcom/miui/video/service/share/data/ShareInfo;

    invoke-virtual {v1}, Lcom/miui/video/service/share/data/ShareInfo;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/video/service/share/ShareBuilder;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/video/service/share/ShareBuilder$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/video/service/share/ShareBuilder$1;-><init>(Lcom/miui/video/service/share/ShareBuilder;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/share/net/ShareUseCase;->execute(Ljava/lang/Object;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method

.method public shareInfo(Lcom/miui/video/service/share/data/ShareInfo;)Lcom/miui/video/service/share/ShareBuilder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/ShareBuilder;->info:Lcom/miui/video/service/share/data/ShareInfo;

    return-object p0
.end method

.method public shareListener(Lcom/miui/video/service/share/ShareListener;)Lcom/miui/video/service/share/ShareBuilder;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/ShareBuilder;->shareListener:Lcom/miui/video/service/share/ShareListener;

    return-object p0
.end method

.method public webShare(Landroid/content/Context;Lcom/miui/video/service/share/WebShareCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/service/share/ShareBuilder;->info:Lcom/miui/video/service/share/data/ShareInfo;

    const-string v1, "h5_page"

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo;->setFrom(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/service/share/ShareBuilder;->info:Lcom/miui/video/service/share/data/ShareInfo;

    invoke-virtual {v0}, Lcom/miui/video/service/share/data/ShareInfo;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/service/share/ShareBuilder;->getShareTarget(Ljava/lang/String;)Lcom/miui/video/service/share/target/ShareTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/share/ShareBuilder;->info:Lcom/miui/video/service/share/data/ShareInfo;

    invoke-interface {v0, p1, v1, p2}, Lcom/miui/video/service/share/target/ShareTarget;->shareTo(Landroid/content/Context;Lcom/miui/video/service/share/data/ShareInfo;Lcom/miui/video/service/share/WebShareCallback;)V

    return-void
.end method
