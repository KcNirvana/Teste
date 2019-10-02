.class public Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;
.super Landroid/widget/FrameLayout;
.source "ShareListView.java"


# static fields
.field private static final TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field private static final TYPE_VIDEO:Ljava/lang/String; = "video/*"


# instance fields
.field private mAdapter:Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;

.field private mEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mShareChannelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mEntityList:Ljava/util/List;

    const-string p2, "image/*"

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mType:Ljava/lang/String;

    new-instance p2, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p2, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p3, p3}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->addView(Landroid/view/View;II)V

    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mShareChannelList:Ljava/util/List;

    new-instance p1, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mShareChannelList:Ljava/util/List;

    invoke-direct {p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mAdapter:Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mAdapter:Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;

    new-instance p2, Lcom/miui/video/biz/videoplus/player/mediacontroller/-$$Lambda$ShareListView$icSViWHqcLCUq0uVf2rhg-AEk0E;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/-$$Lambda$ShareListView$icSViWHqcLCUq0uVf2rhg-AEk0E;-><init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;)V

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;->setOnItemClickListener(Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$OnItemClickListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mAdapter:Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static synthetic lambda$new$0(Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;Landroid/view/View;Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;)V
    .locals 7

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mEntityList:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$string;->plus_player_share_empty_toast:I

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->getDisplayResloveInfo()Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->getDisplayResloveInfo()Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mEntityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/miui/video/biz/videoplus/app/utils/Constants;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getMapId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/miui/video/biz/videoplus/app/utils/Constants;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getMapId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.miui.bugreport.ui.FeedbackActivity"

    invoke-static {v4, v5}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getFileUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const-string v1, "android.intent.extra.STREAM"

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    :cond_5
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_3
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordShareItemLocal(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private refreshShareChannels()V
    .locals 12

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mShareChannelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mEntityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-gt v2, v1, :cond_1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mEntityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mEntityList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isImage()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mEntityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isImage()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    const-string v4, "video/*"

    iput-object v4, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mType:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    :goto_3
    const/high16 v5, 0x10000

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_4
    if-ltz v6, :cond_7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v8, v8, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v8, :cond_5

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    :goto_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v5}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->sortResolvedInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_10

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    invoke-virtual {v6, v0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->setResolvedIntent(Landroid/content/Intent;)V

    iget-object v7, v6, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v8, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v7, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mEntityList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x9

    if-gt v7, v8, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v2, :cond_f

    iget-object v7, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mEntityList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v1, :cond_f

    :cond_9
    new-instance v7, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/miui/video/biz/videoplus/R$string;->plus_share_channel_wechat:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/miui/video/biz/videoplus/R$drawable;->ic_mine_share_wechat:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const-string v8, "wechat"

    invoke-virtual {v7, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setAlias(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    const-string v8, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v7, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setClassName(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setDisplayResloveInfo(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;)V

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mShareChannelList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_a
    const-string v8, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    new-instance v7, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/miui/video/biz/videoplus/R$string;->plus_share_channel_qq:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/miui/video/biz/videoplus/R$drawable;->ic_mine_share_qq:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const-string v8, "QQ"

    invoke-virtual {v7, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setAlias(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    const-string v8, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v7, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setClassName(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setDisplayResloveInfo(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;)V

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mShareChannelList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_b
    const-string v8, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    new-instance v7, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/miui/video/biz/videoplus/R$string;->plus_share_channel_qzone:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/miui/video/biz/videoplus/R$drawable;->ic_mine_share_qqzone:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const-string v8, "qzone"

    invoke-virtual {v7, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setAlias(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    const-string v8, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    invoke-virtual {v7, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setClassName(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setDisplayResloveInfo(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;)V

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mShareChannelList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_c
    const-string v8, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v7, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mEntityList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v1, :cond_f

    if-nez v2, :cond_f

    new-instance v7, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/miui/video/biz/videoplus/R$string;->plus_share_channel_wechat_moments:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/miui/video/biz/videoplus/R$drawable;->ic_mine_share_friendcircle:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const-string v8, "wechat_moments"

    invoke-virtual {v7, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setAlias(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    const-string v8, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v7, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setClassName(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setDisplayResloveInfo(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;)V

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mShareChannelList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    const-string v8, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    new-instance v7, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/miui/video/biz/videoplus/R$string;->plus_share_channel_weibo:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/miui/video/biz/videoplus/R$drawable;->ic_mine_share_weibo:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const-string v8, "weibo"

    invoke-virtual {v7, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setAlias(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    const-string v8, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-virtual {v7, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setClassName(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setDisplayResloveInfo(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;)V

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mShareChannelList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    iget-object v7, v6, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, v6, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v8, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v8, v7}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setAlias(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {v6}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v7}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setClassName(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setDisplayResloveInfo(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;)V

    iget-object v6, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mShareChannelList:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_10
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mAdapter:Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getFileUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p2, "com.miui.localvideoplayer.shareprovider"

    invoke-static {p1, p2, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public setEntityList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->mEntityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/mediacontroller/ShareListView;->refreshShareChannels()V

    return-void
.end method

.method public sortResolvedInfo(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v3, "com.whatsapp.ContactPicker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/16 v3, 0x10

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto/16 :goto_1

    :cond_0
    const-string v3, "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/16 v3, 0xf

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto/16 :goto_1

    :cond_1
    const-string v3, "com.instagram.share.handleractivity.ShareHandlerActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/16 v3, 0xe

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto/16 :goto_1

    :cond_2
    const-string v3, "com.xiaomi.midrop.sender.ui.TransmissionActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/16 v3, 0xd

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto/16 :goto_1

    :cond_3
    const-string v3, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/16 v3, 0xc

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto/16 :goto_1

    :cond_4
    const-string v3, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/16 v3, 0xb

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto/16 :goto_1

    :cond_5
    const-string v3, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/16 v3, 0xa

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto/16 :goto_1

    :cond_6
    const-string v3, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/16 v3, 0x9

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto/16 :goto_1

    :cond_7
    const-string v3, "com.tencent.mobileqq.activity.qfileJumpActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/16 v3, 0x8

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto/16 :goto_1

    :cond_8
    const-string v3, "com.kingsoft.mail.compose.ComposeActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x7

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto :goto_1

    :cond_9
    const-string v3, "com.miui.notes.ui.NotesListActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x6

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto :goto_1

    :cond_a
    const-string v3, "com.android.mms.ui.ComposeMessageRouterActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto :goto_1

    :cond_b
    const-string v3, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto :goto_1

    :cond_c
    const-string v3, "com.miui.bugreport.ui.FeedbackActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto :goto_1

    :cond_d
    const-string v3, "com.xiaomi.scanner.app.ScanActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto :goto_1

    :cond_e
    const-string v3, "com.xiaomi.channel.share.MLShareActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto :goto_1

    :cond_f
    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    return-object v0
.end method
