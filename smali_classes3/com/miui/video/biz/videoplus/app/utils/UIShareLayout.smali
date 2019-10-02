.class public Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIShareLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;,
        Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$MyItemOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UIShareLayout"

.field public static displayResloveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOnItemClickListener:Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$MyItemOnClickListener;

.field private mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShareChannelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mUriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private vHide:Landroid/widget/LinearLayout;

.field private vLinearLayout:Landroid/widget/LinearLayout;

.field private vRecycleView:Landroid/support/v7/widget/RecyclerView;

.field private vTouPing:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mUriList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public initFindViews()V
    .locals 2

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_plus_share:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_recycler_share:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->vRecycleView:Landroid/support/v7/widget/RecyclerView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_share_view_bottom:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->vLinearLayout:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_touping:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->vTouPing:Landroid/widget/LinearLayout;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_hide:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->vHide:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->vRecycleView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/framework/base/ui/UIBase;->initViewsValue()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mShareChannelList:Ljava/util/List;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$MyItemOnClickListener;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$MyItemOnClickListener;-><init>(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mOnItemClickListener:Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$MyItemOnClickListener;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mShareChannelList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mOnItemClickListener:Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$MyItemOnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter;->setOnItemClickListener(Lcom/miui/video/biz/videoplus/app/share/ShareChannelAdapter$OnItemClickListener;)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->vRecycleView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public refreshShareChannels()V
    .locals 10

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mUriList:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mUriList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mUriList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mUriList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_8

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mUriList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/market/sdk/utils/AppGlobal;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :goto_1
    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mResolveInfos:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mResolveInfos:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->sortReslovedInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->setDisplayResolveInfo(Ljava/util/List;)V

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    invoke-virtual {v4, v0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->setResolvedIntent(Landroid/content/Intent;)V

    iget-object v5, v4, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v6, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v5, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "\u5fae\u4fe1"

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/miui/video/biz/videoplus/R$drawable;->ic_mine_share_wechat:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const-string v6, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v5, v6}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setClassName(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setDisplayResloveInfo(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mShareChannelList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_2
    const-string v6, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v5, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "QQ"

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/miui/video/biz/videoplus/R$drawable;->ic_mine_share_qq:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const-string v6, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v5, v6}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setClassName(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setDisplayResloveInfo(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mShareChannelList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_3
    const-string v6, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v5, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "QQ\u7a7a\u95f4"

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/miui/video/biz/videoplus/R$drawable;->ic_mine_share_qqzone:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const-string v6, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    invoke-virtual {v5, v6}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setClassName(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setDisplayResloveInfo(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mShareChannelList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4
    const-string v6, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v5, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "\u670b\u53cb\u5708"

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/miui/video/biz/videoplus/R$drawable;->ic_mine_share_friendcircle:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const-string v6, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v5, v6}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setClassName(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setDisplayResloveInfo(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mShareChannelList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const-string v6, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "\u5fae\u535a"

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/miui/video/biz/videoplus/R$drawable;->ic_mine_share_weibo:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const-string v6, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-virtual {v5, v6}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setClassName(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setDisplayResloveInfo(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mShareChannelList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v5, v4, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, v4, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v6, v5}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setClassName(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/miui/video/biz/videoplus/app/share/ShareChannelEntity;->setDisplayResloveInfo(Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mShareChannelList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u4e2d\u8981\u64cd\u4f5c\u7684\u6587\u4ef6"

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void

    :cond_9
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u4e2d\u8981\u64cd\u4f5c\u7684\u6587\u4ef6"

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void
.end method

.method public setDisplayResolveInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->displayResloveInfos:Ljava/util/List;

    return-void
.end method

.method public setListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->vTouPing:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->vHide:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setShareData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->mUriList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout;->refreshShareChannels()V

    return-void
.end method

.method public sortReslovedInfo(Ljava/util/List;)Ljava/util/List;
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

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v3, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/16 v3, 0xc

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto/16 :goto_1

    :cond_0
    const-string v3, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/16 v3, 0xb

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto/16 :goto_1

    :cond_1
    const-string v3, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/16 v3, 0xa

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto/16 :goto_1

    :cond_2
    const-string v3, "com.sina.weibo.composerinde.ComposerDispatchActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/16 v3, 0x9

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto/16 :goto_1

    :cond_3
    const-string v3, "com.tencent.mobileqq.activity.qfileJumpActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/16 v3, 0x8

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto/16 :goto_1

    :cond_4
    const-string v3, "com.kingsoft.mail.compose.ComposeActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x7

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto :goto_1

    :cond_5
    const-string v3, "com.miui.notes.ui.NotesListActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x6

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto :goto_1

    :cond_6
    const-string v3, "com.android.mms.ui.ComposeMessageRouterActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto :goto_1

    :cond_7
    const-string v3, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto :goto_1

    :cond_8
    const-string v3, "com.miui.bugreport.ui.FeedbackActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto :goto_1

    :cond_9
    const-string v3, "com.xiaomi.scanner.app.ScanActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto :goto_1

    :cond_a
    const-string v3, "com.xiaomi.channel.share.MLShareActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    goto :goto_1

    :cond_b
    new-instance v2, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/utils/UIShareLayout$DisplayResloveInfo;-><init>(Landroid/content/pm/ResolveInfo;I)V

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    return-object v0
.end method
