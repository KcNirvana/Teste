.class public Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;
.super Ljava/lang/Object;
.source "FakeProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$OnProgressChangedListener;
    }
.end annotation


# instance fields
.field private mDivide:I

.field private mHandler:Landroid/os/Handler;

.field private mInit:I

.field private mInterval:I

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$OnProgressChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxShow:I

.field private mProgress:I

.field private mProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$OnProgressChangedListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mInterval:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mDivide:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mInit:I

    const/16 v1, 0x62

    iput v1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mMaxShow:I

    iput v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mProgress:I

    new-instance v0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;

    invoke-direct {v0, p0}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress$1;-><init>(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)V

    iput-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mProgressRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mListener:Ljava/lang/ref/WeakReference;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mMaxShow:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mProgress:I

    return p0
.end method

.method static synthetic access$102(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mProgress:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mDivide:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mInterval:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private paramsChangedByNetwork()V
    .locals 4

    invoke-static {}, Lcom/miui/video/framework/utilities/NetworkUtil;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x12c

    if-eqz v1, :cond_0

    iput v2, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mInterval:I

    goto :goto_0

    :cond_0
    const-string v1, "2G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mInterval:I

    goto :goto_0

    :cond_1
    const-string v1, "3G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x1f4

    if-eqz v1, :cond_2

    iput v3, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mInterval:I

    goto :goto_0

    :cond_2
    const-string v1, "4G"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v2, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mInterval:I

    goto :goto_0

    :cond_3
    iput v3, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mInterval:I

    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mProgress:I

    return-void
.end method

.method public setDivide(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mDivide:I

    return-void
.end method

.method public setInit(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mInit:I

    return-void
.end method

.method public setInterval(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mInterval:I

    return-void
.end method

.method public setMaxShow(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mMaxShow:I

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iget v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mProgress:I

    if-ge v0, p1, :cond_1

    iput p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mProgress:I

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->paramsChangedByNetwork()V

    iget v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mProgress:I

    iget v1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mInit:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mInit:I

    iput v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mProgress:I

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/video/common/browser/feature/progressbar/FakeProgress;->mProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
