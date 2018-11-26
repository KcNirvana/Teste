.class public Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;
.super Lcom/miui/common/a/d;
.source ""


# static fields
.field private static wg:Ljava/util/List;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private we:Lcom/miui/optimizemanage/memoryclean/h;

.field private wf:Landroid/widget/ListView;

.field private wh:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->wg:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    new-instance v0, Lcom/miui/optimizemanage/memoryclean/n;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/memoryclean/n;-><init>(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private xp()V
    .locals 2

    sget-object v0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->wg:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/memoryclean/f;

    invoke-interface {v0}, Lcom/miui/optimizemanage/memoryclean/f;->xy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static xq(Lcom/miui/optimizemanage/memoryclean/f;)V
    .locals 1

    sget-object v0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->wg:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->wg:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private xr(Lcom/miui/optimizemanage/memoryclean/m;Z)V
    .locals 3

    iget-object v0, p1, Lcom/miui/optimizemanage/memoryclean/m;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/miui/optimizemanage/memoryclean/m;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v0, v1, p2}, Lmiui/process/ProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->we:Lcom/miui/optimizemanage/memoryclean/h;

    iget-object v1, p1, Lcom/miui/optimizemanage/memoryclean/m;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/miui/optimizemanage/memoryclean/m;->uid:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/miui/optimizemanage/memoryclean/h;->xB(Ljava/lang/String;IZ)V

    invoke-direct {p0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->xp()V

    return-void
.end method

.method private xs(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->wh:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->wh:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public static xt(Lcom/miui/optimizemanage/memoryclean/f;)V
    .locals 1

    sget-object v0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->wg:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->wg:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private xu()V
    .locals 3

    new-instance v0, Lcom/miui/optimizemanage/memoryclean/o;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/memoryclean/o;-><init>(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;)V

    invoke-static {}, Lcom/miui/optimizemanage/a/a;->Ab()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/optimizemanage/memoryclean/o;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic xv(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;)Lcom/miui/optimizemanage/memoryclean/h;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->we:Lcom/miui/optimizemanage/memoryclean/h;

    return-object v0
.end method

.method static synthetic xw(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;Lcom/miui/optimizemanage/memoryclean/m;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->xr(Lcom/miui/optimizemanage/memoryclean/m;Z)V

    return-void
.end method

.method static synthetic xx(Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->xs(Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300f1

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->setContentView(I)V

    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->wf:Landroid/widget/ListView;

    new-instance v0, Lcom/miui/optimizemanage/memoryclean/h;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/memoryclean/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->we:Lcom/miui/optimizemanage/memoryclean/h;

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->we:Lcom/miui/optimizemanage/memoryclean/h;

    iget-object v1, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/miui/optimizemanage/memoryclean/h;->setHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->wf:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->we:Lcom/miui/optimizemanage/memoryclean/h;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0a02c0

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->wh:Landroid/widget/ProgressBar;

    const-string/jumbo v0, "speedboost_lockapp_setting"

    invoke-static {v0}, Lcom/miui/optimizemanage/c/a;->Ax(Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/d;->onResume()V

    invoke-direct {p0}, Lcom/miui/optimizemanage/memoryclean/LockAppManageActivity;->xu()V

    return-void
.end method
