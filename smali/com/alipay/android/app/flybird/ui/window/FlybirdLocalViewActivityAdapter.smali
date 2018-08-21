.class public Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;
.super Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
.source "FlybirdLocalViewActivityAdapter.java"

# interfaces
.implements Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;
    }
.end annotation


# static fields
.field public static final VIEW_NAME_SETTING_CHANNEL:Ljava/lang/String; = "setting-channel"

.field public static final VIEW_NAME_SETTING_MAIN:Ljava/lang/String; = "setting-home"

.field public static final VIEW_NAME_SETTING_NOPWD:Ljava/lang/String; = "setting-nopwd"

.field public static final VIEW_NAME_SETTING_NOPWD_DETAIL:Ljava/lang/String; = "setting-detail"

.field public static final VIEW_NAME_SETTING_NOPWD_MAIN:Ljava/lang/String; = "setting-nopwd-main"

.field public static final VIEW_NAME_SETTING_NOPWD_PASSWORD:Ljava/lang/String; = "setting-nopwd-password"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field public mBizId:I

.field private mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalViewDataStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;",
            ">;"
        }
    .end annotation
.end field

.field private mMaskDialog:Landroid/app/Dialog;

.field private mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

.field private mSettingChannelData:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

.field private maskImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mLocalViewDataStack:Ljava/util/Stack;

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->maskImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mSettingChannelData:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mMaskDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mMaskDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;)Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->getDialogEventDesc(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->maskImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->maskImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method private getDialogEventDesc(Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$5;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$5;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-direct {v0, p1, v1}, Lcom/alipay/android/app/flybird/ui/dialog/FlybirdDialogEventDesc;-><init>(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private handleRestore(Landroid/os/Bundle;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "CallingPid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x4

    const-string/jumbo v2, "msp"

    const-string/jumbo v3, "FlybirdLocalViewActivityAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trade == null mBizId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->init(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method private init(Landroid/content/Intent;)Z
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, "CallingPid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    :try_start_0
    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "no biz id(18)"

    invoke-direct {v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "ex"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/b/d/b;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getInstance()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getWindowManager(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onWindowLoaded(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v0, "setting-home"

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->initContentView(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :try_start_2
    const-string/jumbo v2, "msp"

    const-string/jumbo v3, "FlybirdLocalViewActivityAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "init mBizId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private initContentView(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    iput-object p1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->name:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    invoke-static {v1}, Lcom/alipay/android/app/logic/c/a;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    invoke-direct {v1, v2, v3, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;-><init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    iput-object v1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->page:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mLocalViewDataStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->showContentView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    invoke-direct {v1, v2, v3, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;-><init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    iput-object v1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->page:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mLocalViewDataStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingMain;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->showContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    :cond_0
    return-void
.end method

.method private showContentView(Landroid/view/View;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "local_view_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addMaskView()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$7;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$7;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissLoading()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mProgress:Lcom/alipay/android/app/flybird/ui/window/widget/MiniProgressDialog;

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 5

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    invoke-static {v0}, Lcom/alipay/android/app/logic/c/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getInstance()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v0

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getWindowManager(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->isStartLocalActivityFromOutAppFailed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->isStartFlybirdActivityFromOutAppFailed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :try_start_0
    const-string/jumbo v2, "msp"

    const-string/jumbo v3, "FlybirdLocalViewActivityAdapter"

    const-string/jumbo v4, "moveTaskToBack"

    invoke-static {v0, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/a;->b()V

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mSettingChannelData:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$1;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    sget-object v2, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;->Exit:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;

    invoke-direct {v1, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$Type;)V

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->finishLocalViewShower()V

    goto :goto_1
.end method

.method public finish()V
    .locals 4

    const/4 v0, 0x4

    const-string/jumbo v1, "msp"

    const-string/jumbo v2, "FlybirdLocalViewActivityAdapter"

    const-string/jumbo v3, "finish"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->dispose()V

    return-void
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowerActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public nextView(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "setting-channel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mSettingChannelData:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/a;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/a;->i(Z)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    invoke-direct {v1, v2, v3, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewSettingChannel;-><init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    iput-object v1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->page:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iput-object p1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mLocalViewDataStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->showContentView(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mSettingChannelData:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->page:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mLocalViewDataStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mSettingChannelData:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->updateViewData(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "setting-nopwd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    invoke-direct {v1, v2, v3, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;-><init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    iput-object v1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->page:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iput-object p1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mLocalViewDataStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->showContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mFrame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdValuePage;->updateViewData(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    :cond_5
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "setting-nopwd-main"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    invoke-direct {v1, v2, v3, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;-><init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    iput-object v1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->page:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iput-object p1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mLocalViewDataStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->showContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mFrame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdMainPage;->updateViewData(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    :cond_7
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v0, "setting-nopwd-password"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    invoke-direct {v1, v2, v3, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;-><init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    iput-object v1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->page:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iput-object p1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mLocalViewDataStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->showContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mFrame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;->updateViewData(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    :cond_9
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v0, "setting-detail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mBizId:I

    invoke-direct {v1, v2, v3, p0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;-><init>(Landroid/app/Activity;ILcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V

    iput-object v1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->page:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iput-object p1, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mLocalViewDataStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->showContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->mFrame:Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNopwdSecondPage;->updateViewData(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    :cond_b
    iput-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    goto/16 :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBncbBack(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    const-string/jumbo v0, "0003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v0, "0009"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->dispose()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    const-string/jumbo v0, "0004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "0005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$9;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$9;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const-string/jumbo v0, "0000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    instance-of v0, v0, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwdPasswordPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$10;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$10;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->onSaveChangeDataBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->onBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->dispose()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->onPause()V

    invoke-static {}, Lcom/alipay/android/app/statistic/e/a;->a()Lcom/alipay/android/app/statistic/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/e/a;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/statistic/e/a;->a()Lcom/alipay/android/app/statistic/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/e/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->notifyFpAuthTimeout()V

    return-void
.end method

.method public oncreate(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 4

    const/4 v1, -0x1

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "flybird_local_view_layout"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    const/4 v0, 0x4

    const-string/jumbo v1, "msp"

    const-string/jumbo v2, "FlybirdLocalViewActivityAdapter"

    const-string/jumbo v3, "oncreate"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->handleRestore(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->finish()V

    :cond_0
    return-void
.end method

.method public openActivity(Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public openActivity(Landroid/content/Intent;Lcom/alipay/android/app/ui/quickpay/window/a;)V
    .locals 3

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public preView(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mLocalViewDataStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mLocalViewDataStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    const-string/jumbo v1, "setting-channel"

    iget-object v2, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mSettingChannelData:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mLocalViewDataStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    const-string/jumbo v1, "setting-nopwd-password"

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->preView(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mLocalViewDataStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;

    iget-object v0, v0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->page:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->showContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mCurrentPage:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;->onResume()V

    goto :goto_0
.end method

.method public removeMaskView()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$8;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$8;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setAnimMode(I)V
    .locals 0

    return-void
.end method

.method public setOnFormEventLinstener(Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public showContentView(I)V
    .locals 0

    return-void
.end method

.method public showContentView(Landroid/view/View;ILcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$2;

    invoke-direct {v1, p0, p3}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$2;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/b;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$4;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public varargs showLoading([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$3;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showLocalViewLoading()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->showLoading([Ljava/lang/String;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/b;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$6;-><init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
