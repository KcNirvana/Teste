.class public Lcom/miui/personalassistant/ui/LaunchActivity;
.super Lcom/miui/personalassistant/ui/BaseSettingActivity;
.source "LaunchActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/ui/widget/PaListView$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$OnClickListener;


# static fields
.field private static final CODE_REQUEST_OTHER_APP:I = 0x1

.field public static final KEY_FUNCTION_SELECTED:Ljava/lang/String; = "key_function_selected"

.field public static final TSMCLIENT_PACKAGE_NAME:Ljava/lang/String; = "com.miui.tsmclient"

.field private static final WHAT_LOAD_LIST_DATA:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAppReceiver:Landroid/content/BroadcastReceiver;

.field private mDownloadDialog:Lmiui/app/AlertDialog;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private mGridViewAdapter:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderBg:Landroid/widget/LinearLayout;

.field private mLightBgForClock:Z

.field private mListContainer:Lcom/miui/personalassistant/ui/widget/PaListView;

.field private mLlTitleBarContainer:Landroid/widget/LinearLayout;

.field private mLlTitleBarContainerShade:Landroid/widget/LinearLayout;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTvOtherApp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseSettingActivity;-><init>()V

    const-string/jumbo v0, "LaunchActivity"

    iput-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mEntries:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mLightBgForClock:Z

    new-instance v0, Lcom/miui/personalassistant/ui/LaunchActivity$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/ui/LaunchActivity$4;-><init>(Lcom/miui/personalassistant/ui/LaunchActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/personalassistant/ui/LaunchActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/LaunchActivity$6;-><init>(Lcom/miui/personalassistant/ui/LaunchActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mAppReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/LaunchActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/LaunchActivity;->filterFunction(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/LaunchActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/LaunchActivity;)Lcom/miui/personalassistant/ui/widget/PaListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mListContainer:Lcom/miui/personalassistant/ui/widget/PaListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/LaunchActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mTvOtherApp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/personalassistant/ui/LaunchActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mTvOtherApp:Landroid/widget/TextView;

    return-object p1
.end method

.method private addFunction(Lcom/miui/personalassistant/model/FunctionLaunch;)V
    .locals 3

    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addFunction...fun="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\tmEntries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    const v0, 0x1b0b041d

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mGridViewAdapter:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->setData(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getInstance()Lcom/miui/personalassistant/util/FunctionLaunchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->saveFunctionListToDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->sendUpdateBroadcast()V

    goto :goto_0
.end method

.method private checkDataAvailable(Lcom/miui/personalassistant/model/QuickStartFunctionGroup;)Z
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/StringUtil;->getStringResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;->getArray()Ljava/util/TreeSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {v1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/miui/personalassistant/util/StringUtil;->getStringResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getDrawableId()I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private dismissDownloadDialog()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mDownloadDialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mDownloadDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mDownloadDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mDownloadDialog:Lmiui/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private filterFunction(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/QuickStartFunctionGroup;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/QuickStartFunctionGroup;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-object p1

    :cond_1
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v7, "MI 3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "com.miui.tsmclient"

    invoke-static {p0, v6}, Lcom/miui/personalassistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;

    invoke-virtual {v2}, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;->getArray()Ljava/util/TreeSet;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/model/FunctionLaunch;

    const-string/jumbo v6, "com.miui.tsmclient"

    invoke-virtual {v1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/model/QuickStartFunctionGroup;

    invoke-direct {p0, v2}, Lcom/miui/personalassistant/ui/LaunchActivity;->checkDataAvailable(Lcom/miui/personalassistant/model/QuickStartFunctionGroup;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2
.end method

.method private initListView()V
    .locals 3

    const v0, 0x1b0902b0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/ui/widget/PaListView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mListContainer:Lcom/miui/personalassistant/ui/widget/PaListView;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mListContainer:Lcom/miui/personalassistant/ui/widget/PaListView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mGridViewAdapter:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    iget-boolean v2, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mLightBgForClock:Z

    invoke-virtual {v0, v1, v2}, Lcom/miui/personalassistant/ui/widget/PaListView;->setGridAdapter(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mListContainer:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-virtual {v0, p0}, Lcom/miui/personalassistant/ui/widget/PaListView;->setListener(Lcom/miui/personalassistant/ui/widget/PaListView$OnClickListener;)V

    new-instance v0, Lcom/miui/personalassistant/ui/LaunchActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/LaunchActivity$3;-><init>(Lcom/miui/personalassistant/ui/LaunchActivity;)V

    invoke-static {v0}, Lcom/miui/personalassistant/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initView()V
    .locals 13

    const v12, 0x1b0f013d

    const/4 v11, 0x0

    invoke-static {}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getInstance()Lcom/miui/personalassistant/util/FunctionLaunchUtil;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getUsrFunctionList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mEntries:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/miui/personalassistant/util/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v6

    const v8, 0x1b0901ec

    invoke-virtual {p0, v8}, Lcom/miui/personalassistant/ui/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mLlTitleBarContainer:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mLlTitleBarContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mLlTitleBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mLlTitleBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v8, v11, v9, v11, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v8, 0x1b0901e9

    invoke-virtual {p0, v8}, Lcom/miui/personalassistant/ui/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mLlTitleBarContainerShade:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mLlTitleBarContainerShade:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mLlTitleBarContainerShade:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mLlTitleBarContainerShade:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v8, v11, v9, v11, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v8, 0x1b0901ea

    invoke-virtual {p0, v8}, Lcom/miui/personalassistant/ui/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/miui/personalassistant/ui/LaunchActivity$1;

    invoke-direct {v9, p0}, Lcom/miui/personalassistant/ui/LaunchActivity$1;-><init>(Lcom/miui/personalassistant/ui/LaunchActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    iget-object v9, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mEntries:Ljava/util/ArrayList;

    iget-boolean v10, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mLightBgForClock:Z

    invoke-direct {v8, p0, v9, v10}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mGridViewAdapter:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    iget-object v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mGridViewAdapter:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    invoke-virtual {v8, p0}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->setOnGridItemClickListener(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$OnClickListener;)V

    const v8, 0x1b0902c3

    invoke-virtual {p0, v8}, Lcom/miui/personalassistant/ui/LaunchActivity;->findView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView;

    iput-object v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v8, 0x5

    invoke-direct {v4, p0, v8}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iget-object v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0c0136

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v9, Lcom/miui/personalassistant/ui/widget/SpaceItemDecoration;

    invoke-direct {v9, v5}, Lcom/miui/personalassistant/ui/widget/SpaceItemDecoration;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    new-instance v0, Lcom/miui/personalassistant/ui/LaunchActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/LaunchActivity$2;-><init>(Lcom/miui/personalassistant/ui/LaunchActivity;)V

    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iget-object v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    iget-object v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mGridViewAdapter:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->initListView()V

    const v8, 0x1b0901e8

    invoke-virtual {p0, v8}, Lcom/miui/personalassistant/ui/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v8, 0x1b0902c1

    invoke-virtual {p0, v8}, Lcom/miui/personalassistant/ui/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mHeaderBg:Landroid/widget/LinearLayout;

    iget-boolean v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mLightBgForClock:Z

    if-eqz v8, :cond_0

    const v8, 0x1b0900ec

    invoke-virtual {p0, v8}, Lcom/miui/personalassistant/ui/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v8, 0x1b0901ed

    invoke-virtual {p0, v8}, Lcom/miui/personalassistant/ui/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v8, 0x1b0902c4

    invoke-virtual {p0, v8}, Lcom/miui/personalassistant/ui/LaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/miui/personalassistant/util/StatusBarUtil;->darkWordBar(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0f0067

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0f0066

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x1b020000

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mLlTitleBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v8, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mHeaderBg:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private removeFunction(II)V
    .locals 3

    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFunction..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mGridViewAdapter:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->getItem(I)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    const v0, 0x1b0b041e

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mGridViewAdapter:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->setData(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->getInstance()Lcom/miui/personalassistant/util/FunctionLaunchUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1}, Lcom/miui/personalassistant/util/FunctionLaunchUtil;->saveFunctionListToDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mListContainer:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-virtual {v0, p2}, Lcom/miui/personalassistant/ui/widget/PaListView;->notifyDataChanged(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->sendUpdateBroadcast()V

    goto :goto_0
.end method

.method private sendUpdateBroadcast()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.intent.action.MINUS_SCREEN_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "isFromSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "isFromLaunch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/LaunchActivity;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v1, "6"

    invoke-static {p0, v1}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setUnSync(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private showDownloadDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->dismissDownloadDialog()V

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/personalassistant/ui/LaunchActivity$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/personalassistant/ui/LaunchActivity$5;-><init>(Lcom/miui/personalassistant/ui/LaunchActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p5, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p6, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mDownloadDialog:Lmiui/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mDownloadDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const-string/jumbo v1, "key_function_selected"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/LaunchActivity;->addFunction(Lcom/miui/personalassistant/model/FunctionLaunch;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/personalassistant/ui/AppPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/ui/LaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b090382
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x1b0400ad

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/LaunchActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "hasLightBgForClock"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "hasLightBgForClock"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mLightBgForClock:Z

    :cond_0
    invoke-direct {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->initView()V

    const-string/jumbo v1, "settings_set_key_shortcut"

    invoke-static {v1}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;)V

    invoke-virtual {p0, p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->checkShowCTADialog(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->registerReceiver()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseSettingActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->dismissDownloadDialog()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mListContainer:Lcom/miui/personalassistant/ui/widget/PaListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mListContainer:Lcom/miui/personalassistant/ui/widget/PaListView;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/widget/PaListView;->releaseCaches()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->unregisterReceiver()V

    return-void
.end method

.method public onGridFunctionItemClick(II)V
    .locals 3

    const-string/jumbo v0, "LaunchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGridFunctionItemClick...position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/ui/LaunchActivity;->removeFunction(II)V

    return-void
.end method

.method public onListFunctionItemClick(Lcom/miui/personalassistant/model/FunctionLaunch;)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/personalassistant/model/FunctionLaunch;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.alipay.sdk.formi"

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/personalassistant/util/Util;->isKeyguardSecure(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/miui/personalassistant/util/Util;->showKeyguardDialog(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/LaunchActivity;->addFunction(Lcom/miui/personalassistant/model/FunctionLaunch;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b02d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b02d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b02d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/LaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1b0b02d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/personalassistant/ui/LaunchActivity;->showDownloadDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseSettingActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mGridViewAdapter:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;

    invoke-virtual {v0}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mListContainer:Lcom/miui/personalassistant/ui/widget/PaListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/widget/PaListView;->notifyDataChanged(I)V

    return-void
.end method

.method public registerReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mAppReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/personalassistant/ui/LaunchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mAppReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/LaunchActivity;->mAppReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/LaunchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
