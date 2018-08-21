.class public Lcom/miui/personalassistant/ui/widget/PaListView;
.super Landroid/widget/LinearLayout;
.source "PaListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/widget/PaListView$OnClickListener;,
        Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;,
        Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;,
        Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;,
        Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;
    }
.end annotation


# static fields
.field private static final ALPHA_DISABLE:F = 0.5f

.field private static final ALPHA_ENABLE:F = 1.0f

.field private static final ICON_COUNT_DOUBLE:I = 0xa

.field private static final ICON_COUNT_SINGLE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PaListView"


# instance fields
.field private isLight:Z

.field private mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

.field private mFunctionIconsCaches:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mFunctionNameCaches:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGridAdapter:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/miui/personalassistant/ui/widget/PaListView$OnClickListener;

.field private mVHCahces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/personalassistant/ui/widget/PaListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/personalassistant/ui/widget/PaListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->isLight:Z

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/widget/PaListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/widget/PaListView;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/ui/widget/PaListView;->showName(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/widget/PaListView;)Lcom/miui/personalassistant/ui/widget/PaListView$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mListener:Lcom/miui/personalassistant/ui/widget/PaListView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/ui/widget/PaListView;Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/content/Context;Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/personalassistant/ui/widget/PaListView;->updateInstalledStateUI(Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/content/Context;Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/widget/ImageView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/personalassistant/ui/widget/PaListView;->showImageByThread(Landroid/widget/ImageView;IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/ui/widget/PaListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->isLight:Z

    return v0
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/ui/widget/PaListView;)Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mGridAdapter:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    return-object v0
.end method

.method private getDrawableFromLrucache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mFunctionIconsCaches:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getStringFromLrucache(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mFunctionNameCaches:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mInflater:Landroid/view/LayoutInflater;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mVHCahces:Ljava/util/List;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-int v1, v2

    div-int/lit8 v0, v1, 0x5

    new-instance v2, Lcom/miui/personalassistant/ui/widget/PaListView$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/personalassistant/ui/widget/PaListView$1;-><init>(Lcom/miui/personalassistant/ui/widget/PaListView;I)V

    iput-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mFunctionIconsCaches:Landroid/support/v4/util/LruCache;

    new-instance v2, Lcom/miui/personalassistant/ui/widget/PaListView$2;

    invoke-direct {v2, p0, v0}, Lcom/miui/personalassistant/ui/widget/PaListView$2;-><init>(Lcom/miui/personalassistant/ui/widget/PaListView;I)V

    iput-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mFunctionNameCaches:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method private showImageByThread(Landroid/widget/ImageView;IZ)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/widget/PaListView;->getDrawableFromLrucache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/miui/personalassistant/ui/widget/PaListView$LoadImageRunnable;-><init>(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/widget/ImageView;IZ)V

    invoke-static {v2}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showName(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/miui/personalassistant/ui/widget/PaListView;->getStringFromLrucache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/miui/personalassistant/util/ThreadDispatcher;->getInstance()Lcom/miui/personalassistant/util/ThreadDispatcher;

    new-instance v1, Lcom/miui/personalassistant/ui/widget/PaListView$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/miui/personalassistant/ui/widget/PaListView$3;-><init>(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/personalassistant/util/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/personalassistant/ui/widget/PaListView$LoadTextRunnable;-><init>(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateInstalledStateUI(Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/content/Context;Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/miui/personalassistant/ui/widget/PaListView$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/personalassistant/ui/widget/PaListView$4;-><init>(Lcom/miui/personalassistant/ui/widget/PaListView;Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/content/Context;Lcom/miui/personalassistant/ui/widget/PaListView$ViewHolder;)V

    invoke-static {v0}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public addDrawableToLrucaches(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/widget/PaListView;->getDrawableFromLrucache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mFunctionIconsCaches:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public addStringToLrucaches(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/widget/PaListView;->getStringFromLrucache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mFunctionNameCaches:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public notifyDataAll()V
    .locals 2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    invoke-virtual {v1}, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/widget/PaListView;->notifyDataChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public notifyDataChanged(I)V
    .locals 5

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    invoke-virtual {v1, p1}, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mVHCahces:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;

    const v2, 0x1b0902b5

    const v3, 0x1b0902b4

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;->getArray()Ljava/util/TreeSet;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->setItems(IILjava/util/TreeSet;)Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;

    goto :goto_0
.end method

.method public releaseCaches()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mFunctionIconsCaches:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mFunctionIconsCaches:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mFunctionNameCaches:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mFunctionNameCaches:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    :cond_1
    return-void
.end method

.method public setAdapter(Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/PaListView;->updateUI()V

    return-void
.end method

.method public setGridAdapter(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mGridAdapter:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    iput-boolean p2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->isLight:Z

    return-void
.end method

.method public setListener(Lcom/miui/personalassistant/ui/widget/PaListView$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mListener:Lcom/miui/personalassistant/ui/widget/PaListView$OnClickListener;

    return-void
.end method

.method public updateUI()V
    .locals 6

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    invoke-virtual {v2}, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->getDatas()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    invoke-virtual {v2}, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->getDatas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "PaListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAdapter.getDatas()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    invoke-virtual {v4}, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->getDatas()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",getChildCount()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/PaListView;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    invoke-virtual {v2}, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->getDatas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/PaListView;->getChildCount()I

    move-result v3

    if-le v2, v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    invoke-virtual {v2}, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->getDatas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mVHCahces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v2, v1, :cond_3

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mVHCahces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;

    :goto_1
    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->onBind(ILcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;)V

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "PaListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addView i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;->getConvertView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/personalassistant/ui/widget/PaListView;->addView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    invoke-virtual {v2}, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->getDatas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/PaListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    invoke-virtual {v2}, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->getDatas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/PaListView;->getChildCount()I

    move-result v3

    iget-object v4, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    invoke-virtual {v4}, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->getDatas()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/miui/personalassistant/ui/widget/PaListView;->removeViews(II)V

    :goto_2
    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mVHCahces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    invoke-virtual {v3}, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->getDatas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mVHCahces:Ljava/util/List;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mVHCahces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/PaListView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mAdapter:Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;

    invoke-virtual {v4}, Lcom/miui/personalassistant/ui/adapter/PaListViewAdapter;->getItemLayoutId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/miui/personalassistant/ui/widget/PaListView$PAViewHolder;-><init>(Lcom/miui/personalassistant/ui/widget/PaListView;Landroid/content/Context;Landroid/view/View;I)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/PaListView;->mVHCahces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/PaListView;->removeAllViews()V

    :cond_5
    :goto_3
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/PaListView;->removeAllViews()V

    goto :goto_3
.end method
