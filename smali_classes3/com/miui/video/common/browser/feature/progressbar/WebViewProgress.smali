.class public Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;
.super Landroid/widget/ProgressBar;
.source "WebViewProgress.java"

# interfaces
.implements Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$OnProgressChangedListener;


# static fields
.field private static final MAX_PROGRESS:I = 0x64

.field private static final STEPS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "WebViewProgress"


# instance fields
.field private flag:Z

.field private mCurrentProgress:F

.field private mFakeProgress:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

.field private mIncrement:F

.field private mTargetProgress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->flag:Z

    invoke-direct {p0, p1}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->flag:Z

    invoke-direct {p0, p1}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->flag:Z

    invoke-direct {p0, p1}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->flag:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;)Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mFakeProgress:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;F)F
    .locals 0

    iput p1, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mTargetProgress:F

    return p1
.end method

.method static synthetic access$302(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;F)F
    .locals 0

    iput p1, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mCurrentProgress:F

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mCurrentProgress:F

    iput p1, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mTargetProgress:F

    new-instance p1, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-direct {p1, p0}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;-><init>(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$OnProgressChangedListener;)V

    iput-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mFakeProgress:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->flag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->flag:Z

    invoke-static {}, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->getInstance()Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->remove(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;)V

    new-instance v0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$1;

    invoke-direct {v0, p0}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$1;-><init>(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-static {}, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->getInstance()Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->remove(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;)V

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mFakeProgress:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->finish()V

    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    return-void
.end method

.method public onProgress(I)V
    .locals 1

    new-instance v0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$2;-><init>(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;I)V

    invoke-virtual {p0, v0}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProgressChanged(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->setStepProgress(I)V

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/miui/video/common/browser/BrowserConfig;->isLogSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WebViewProgress"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setStepProgress(I)V
    .locals 1

    iget v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mTargetProgress:F

    iput v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mCurrentProgress:F

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mTargetProgress:F

    iget p1, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mTargetProgress:F

    iget v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mCurrentProgress:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mIncrement:F

    return-void
.end method

.method public start()V
    .locals 1

    invoke-static {}, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->getInstance()Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/video/common/browser/feature/progressbar/ProgressBarTimer;->add(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->flag:Z

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mFakeProgress:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->start()V

    return-void
.end method

.method public updateByTimer()V
    .locals 3

    iget v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mTargetProgress:F

    iget v1, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mCurrentProgress:F

    iget v2, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mIncrement:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mCurrentProgress:F

    iget v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mTargetProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iput v1, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mCurrentProgress:F

    :cond_0
    iget v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mCurrentProgress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->viewInvisible()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->setVisibility(I)V

    iget v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mCurrentProgress:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public viewInvisible()V
    .locals 3

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->setProgress(I)V

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->mFakeProgress:Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;

    invoke-virtual {v0}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->finish()V

    new-instance v0, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$3;

    invoke-direct {v0, p0}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress$3;-><init>(Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/common/browser/feature/progressbar/WebViewProgress;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
