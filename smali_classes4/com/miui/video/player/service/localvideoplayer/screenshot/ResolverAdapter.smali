.class public Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ResolverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$OnIntentSelectedListener;,
        Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayComparator;,
        Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;,
        Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;
    }
.end annotation


# static fields
.field private static final PAGE_CELL_COUNT:I = 0x5

.field public static final POSITION_CHANGED:I = -0x3

.field public static final TAG:Ljava/lang/String; = "ResolverAdapter"


# instance fields
.field private mCachedViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCrop:Z

.field private mListener:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$OnIntentSelectedListener;

.field private mLoader:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mTarIntent:Landroid/content/Intent;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;IZ)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mCachedViews:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mData:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mPm:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mTarIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mTheme:I

    iput-boolean p4, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mIsCrop:Z

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;

    invoke-direct {p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mLoader:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->reBuildList()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;)Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$OnIntentSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mListener:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$OnIntentSelectedListener;

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method private addResolveListDedupe(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-static {v4, v6}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private conversePos(II)I
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    add-int/2addr p1, p2

    return p1
.end method

.method private filterResolveInfoList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    :cond_1
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.xiaomi.midrop.sender.ui.TransmissionActivity"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.android.mms.ui.ComposeMessageRouterActivity"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "cn.wps.moffice.main.scan.UI.ThirdpartyImageToTextActivity"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.xiaomi.scanner.app.ScanActivity"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.android.midrive.activity.MiDriveActivity"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "com.xiaomi.channel.share.ui.SystemShareActivity"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x18

    if-eqz v4, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v5, :cond_6

    :cond_2
    const-string v4, "com.baidu.netdisk.ui.ReceiveShareFileActivity"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v5, :cond_6

    :cond_3
    const-string v4, "com.baidu.netdisk.p2pshare.ui.ReceiverP2PShareFileActivity"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v5, :cond_6

    :cond_4
    const-string v4, "cooperation.qlink.QlinkShareJumpActivity"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.android.nfc"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private generatorChooserItem(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mCachedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mCachedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->chooser_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x5

    if-ge v1, v3, :cond_6

    sget v3, Lcom/miui/video/player/service/R$layout;->chooser_item_cell:I

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/miui/video/player/service/R$id;->image_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    sget v5, Lcom/miui/video/player/service/R$id;->chooser_text:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget v5, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mTheme:I

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mIsCrop:Z

    if-eqz v5, :cond_3

    sget v5, Lcom/miui/video/player/service/R$layout;->chooser_item_cell_imageview_crop_light:I

    goto :goto_2

    :cond_3
    sget v5, Lcom/miui/video/player/service/R$layout;->chooser_item_cell_imageview:I

    goto :goto_2

    :cond_4
    iget-boolean v5, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mIsCrop:Z

    if-eqz v5, :cond_5

    sget v5, Lcom/miui/video/player/service/R$layout;->chooser_item_cell_imageview_crop_dark:I

    goto :goto_2

    :cond_5
    sget v5, Lcom/miui/video/player/service/R$layout;->chooser_item_cell_imageview:I

    :goto_2
    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object p1
.end method

.method private static isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 2

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private reBuildList()V
    .locals 10

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mTarIntent:Landroid/content/Intent;

    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->filterResolveInfoList(Ljava/util/List;)V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, v3, v2}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->addResolveListDedupe(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    const/4 v6, 0x1

    :goto_0
    if-ge v6, v2, :cond_2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget v8, v5, Landroid/content/pm/ResolveInfo;->priority:I

    iget v9, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v8, v9, :cond_0

    iget-boolean v8, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v7, v7, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v8, v7, :cond_1

    :cond_0
    :goto_1
    if-ge v6, v2, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mData:Ljava/util/List;

    new-instance v6, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;

    iget-object v7, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mTarIntent:Landroid/content/Intent;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-direct {v6, p0, v7, v8}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;-><init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayComparator;

    invoke-direct {v2, p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayComparator;-><init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;)V

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mData:Ljava/util/List;

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    const-string v2, "ResolverAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reBuildList cost    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mCachedViews:Ljava/util/LinkedList;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v1, v0, 0x5

    if-nez v1, :cond_0

    div-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_0
    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/View;

    sget v0, Lcom/miui/video/player/service/R$id;->tag_item_position:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->generatorChooserItem(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->refreshItem(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public refreshItem(Ljava/lang/Object;I)V
    .locals 13

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    new-instance v4, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;

    invoke-direct {v4, p0, v5}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;-><init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$1;)V

    sget v6, Lcom/miui/video/player/service/R$id;->chooser_icon:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;->mIcon:Landroid/widget/ImageView;

    sget v6, Lcom/miui/video/player/service/R$id;->chooser_text:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p2, v2}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->conversePos(II)I

    move-result v6

    if-ltz v6, :cond_2

    iget-object v7, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mData:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v5, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mData:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;

    invoke-virtual {v4, v5}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;->needRefresh(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    iput-object v5, v4, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;->mInfo:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;

    iget-object v7, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mLoader:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v4, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v10, v4, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;->mText:Landroid/widget/TextView;

    iget-object v5, v4, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;->mInfo:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;

    invoke-virtual {v5}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-boolean v12, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mIsCrop:Z

    invoke-virtual/range {v7 .. v12}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;->loadInfo(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ResolveInfo;Z)V

    goto :goto_1

    :cond_1
    iput-object v5, v4, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$CellHolder;->mInfo:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$DisplayResolvedInfo;

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget v0, Lcom/miui/video/player/service/R$id;->tag_item_position:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mLoader:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mListener:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$OnIntentSelectedListener;

    return-void
.end method

.method public requery(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mTarIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mTarIntent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->reBuildList()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOnIntentSelectedListener(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$OnIntentSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter;->mListener:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolverAdapter$OnIntentSelectedListener;

    return-void
.end method
