.class public Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;
.super Lcom/alipay/android/app/b/b;
.source "FlybirdWindowManager.java"


# static fields
.field public static lock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFrameStack:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

.field private mHandler:Landroid/os/Handler;

.field private mNoShowStartLoading:Z

.field private mTradeNo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    sput-object v0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/alipay/android/app/b/b;-><init>()V

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mBizId:I

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mTradeNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/b;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mFrameStack:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mFrameStack:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->addDataSourceObserver(Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameChangeObserver;)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;-><init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mEventListener:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mBizId:I

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mEventListener:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;ILandroid/content/Context;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mFbEventHandler:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mBizId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->hideKeyBoard()V

    return-void
.end method

.method static synthetic access$1800(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mBizId:I

    return v0
.end method

.method static synthetic access$1900(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mEventListener:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mBizId:I

    return v0
.end method

.method static synthetic access$2300(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;IILjava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(IILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mFbEventHandler:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mNoShowStartLoading:Z

    return v0
.end method

.method static synthetic access$700(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    return-object v0
.end method

.method private alertAppError(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$2;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getPostRunnableMsg(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private alertNetEerror(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$3;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getPostRunnableMsg(Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private exit(IILjava/lang/Object;I)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v0}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iput p1, v0, Lcom/alipay/android/app/b/a/j;->a:I

    iput p4, v0, Lcom/alipay/android/app/b/a/j;->b:I

    iput p2, v0, Lcom/alipay/android/app/b/a/j;->c:I

    iput-object p3, v0, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    return-void
.end method

.method private getPostRunnableMsg(Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private hideKeyBoard()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/birdnest/a;->a()Lcom/alipay/android/app/birdnest/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/birdnest/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/i;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x4

    const-string/jumbo v0, "phonecashiermsp#flybird"

    const-string/jumbo v1, "FlybirdWindowManager.dispose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dispose  handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->isStartFlybirdActivityFromOutAppFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :try_start_0
    const-string/jumbo v1, "msp"

    const-string/jumbo v2, "FlybirdLocalViewActivityAdapter"

    const-string/jumbo v3, "moveTaskToBack"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$10;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$10;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/g;->b()V

    iput-object v5, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mContext:Landroid/content/Context;

    iput-object v5, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public dispose(IILjava/lang/Object;I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x4

    const-string/jumbo v0, "phonecashiermsp#flybird"

    const-string/jumbo v1, "FlybirdWindowManager.dispose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dispose  handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->isStartFlybirdActivityFromOutAppFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :try_start_0
    const-string/jumbo v1, "msp"

    const-string/jumbo v2, "FlybirdLocalViewActivityAdapter"

    const-string/jumbo v3, "moveTaskToBack"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$11;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$11;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;IILjava/lang/Object;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/g;->b()V

    iput-object v7, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mContext:Landroid/content/Context;

    iput-object v7, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public disposeUI()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/alipay/android/app/b/b;->disposeUI()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->dismissLoading()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mFrameStack:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mFrameStack:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->clearDataStack()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mNoShowStartLoading:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->getDelayTime()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v1, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v1}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iget v2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mBizId:I

    iput v2, v1, Lcom/alipay/android/app/b/a/j;->a:I

    const/16 v2, 0xf

    iput v2, v1, Lcom/alipay/android/app/b/a/j;->b:I

    new-instance v2, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$1;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$1;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    iput-object v2, v1, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/alipay/android/app/b/a/h;->a(Lcom/alipay/android/app/b/a/j;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    goto :goto_0
.end method

.method public exit(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;->clearDataStack()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mFbEventHandler:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->beforeFrameChangedClean(I)V

    new-instance v0, Lcom/alipay/android/app/b/a/j;

    invoke-direct {v0}, Lcom/alipay/android/app/b/a/j;-><init>()V

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mBizId:I

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->a:I

    const/16 v1, 0x10

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->b:I

    const/16 v1, 0x7d7

    iput v1, v0, Lcom/alipay/android/app/b/a/j;->c:I

    iput-object p1, v0, Lcom/alipay/android/app/b/a/j;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/android/app/b/a/h;->a()Lcom/alipay/android/app/b/a/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/b/a/h;->b(Lcom/alipay/android/app/b/a/j;)V

    return-void
.end method

.method public getFrameStack()Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mFrameStack:Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;

    return-object v0
.end method

.method public onDataChange(Lcom/alipay/android/app/flybird/ui/data/FlybirdFrameStack;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->onFrameChanged(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/sys/b;->a(Z)V

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mBizId:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    const-string/jumbo v1, "phonecashiermsp#flybird"

    const-string/jumbo v2, "MiniWindowManager.onException"

    const-string/jumbo v3, "has been executed"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->createMainContainer()V

    :cond_3
    instance-of v0, p1, Lcom/alipay/android/app/exception/NetErrorException;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(Z)V

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/util/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alipay/android/app/pay/ResultStatus;->PAY_NETWORK_ERROR:Lcom/alipay/android/app/pay/ResultStatus;

    invoke-virtual {v3}, Lcom/alipay/android/app/pay/ResultStatus;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "mini_net_error"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    check-cast p1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-virtual {p1}, Lcom/alipay/android/app/exception/NetErrorException;->getErrorCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/util/h;->c()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->alertNetEerror(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    goto/16 :goto_0

    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-virtual {v0}, Lcom/alipay/android/app/exception/NetErrorException;->isClientError()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "mini_net_error_weak"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/h;->a()Lcom/alipay/android/app/ui/quickpay/util/h;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alipay/android/app/pay/ResultStatus;->NETWORK_ERROR:Lcom/alipay/android/app/pay/ResultStatus;

    invoke-virtual {v3}, Lcom/alipay/android/app/pay/ResultStatus;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/util/h;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "mini_app_error"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-direct {p0, p1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->alertAppError(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public onFrameChanged(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    const/4 v12, 0x6

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v0, 0x0

    const-wide/16 v8, 0x1

    invoke-super {p0, p1}, Lcom/alipay/android/app/b/b;->onFrameChanged(Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTpId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/sys/b;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/statistic/h;->d()V

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getWindowType()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$4;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v6}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mFbEventHandler:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->beforeFrameChangedClean(I)V

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v1

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mBizId:I

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/android/app/b/d/a;->k()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->uiStateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->uiStateLock:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->exit(Ljava/lang/String;)V

    const-string/jumbo v0, "ex"

    const-string/jumbo v1, "ActivityNotStartExit"

    const-string/jumbo v2, "ActivityNotStartExit"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v4, "ex"

    const-string/jumbo v5, "createMainContainer"

    invoke-static {v4, v5, v1}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mNoShowStartLoading:Z

    invoke-static {}, Lcom/alipay/android/app/g/f;->b()V

    if-ne v2, v10, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmWindowData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    const-string/jumbo v0, "act"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    const/16 v0, 0x7d0

    const-string/jumbo v5, "time"

    invoke-virtual {v1, v5}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v0, "time"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Lcom/alipay/android/app/statistic/h;->d(J)V

    invoke-static {v8, v9}, Lcom/alipay/android/app/statistic/h;->e(J)V

    invoke-static {v8, v9}, Lcom/alipay/android/app/statistic/h;->c(J)V

    const-string/jumbo v2, "TOAST"

    invoke-static {v2}, Lcom/alipay/android/app/statistic/h;->b(Ljava/lang/String;)V

    const-string/jumbo v2, "msg"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "img"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isAjax()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mFbEventHandler:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-virtual {v3}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->hidePrePageLoading()V

    :cond_7
    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$5;

    invoke-direct {v5, p0, v2, v1, p1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$5;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$6;

    invoke-direct {v2, p0, p1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$6;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    int-to-long v6, v0

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_8

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isAjax()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->setIsAjax(Z)V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->setDelayTime(I)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    :cond_8
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmOnloadData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isAjax()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->setIsAjax(Z)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    goto/16 :goto_0

    :cond_9
    const/4 v1, 0x3

    if-ne v2, v1, :cond_c

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mFbEventHandler:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->hidePrePageLoading()V

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmWindowData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "msg"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "btns"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_b

    invoke-static {v8, v9}, Lcom/alipay/android/app/statistic/h;->d(J)V

    invoke-static {v8, v9}, Lcom/alipay/android/app/statistic/h;->e(J)V

    invoke-static {v8, v9}, Lcom/alipay/android/app/statistic/h;->c(J)V

    const-string/jumbo v3, "FRAME_DIALOG"

    invoke-static {v3}, Lcom/alipay/android/app/statistic/h;->b(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_a

    new-instance v4, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;

    invoke-direct {v4}, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONArray;->get(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "txt"

    invoke-virtual {v5, v6}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->text:Ljava/lang/String;

    const-string/jumbo v6, "act"

    invoke-virtual {v5, v6}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v5

    new-instance v6, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v6}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    invoke-virtual {v6, v5}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    iput-object v6, v4, Lcom/alipay/android/app/flybird/ui/data/FlybirdDialogButton;->action:Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_b
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmOnloadData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isAjax()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->setIsAjax(Z)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xb

    if-ne v2, v1, :cond_d

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v1, v6, v0, p1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->showContentView(Landroid/view/View;ILcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {v8, v9}, Lcom/alipay/android/app/statistic/h;->d(J)V

    invoke-static {v8, v9}, Lcom/alipay/android/app/statistic/h;->e(J)V

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTpId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/birdnest/a;->a()Lcom/alipay/android/app/birdnest/a;

    move-result-object v0

    const-string/jumbo v1, "{}"

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/birdnest/a;->b(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$7;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$7;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmOnloadData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v9}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    if-eqz v8, :cond_f

    invoke-virtual {v9, v8}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->isAjax()Z

    move-result v1

    invoke-virtual {v9, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->setIsAjax(Z)V

    invoke-virtual {v9}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->isDelayEventType()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0, v9}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->executeOnloadAction(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    :cond_f
    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTemplateContentData()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_11

    const-string/jumbo v5, ""

    :goto_3
    if-eqz v1, :cond_10

    const-string/jumbo v2, "fingerPay"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v7, v0}, Lcom/alipay/android/app/b/d/a;->a(Z)V

    :cond_10
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mFbEventHandler:Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdEventHandler;->hidePrePageLoading()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :try_start_4
    invoke-static {}, Lcom/alipay/android/app/birdnest/a;->a()Lcom/alipay/android/app/birdnest/a;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mBizId:I

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTplString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTpId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v4}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mEventListener:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/birdnest/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-static {v2, v3}, Lcom/alipay/android/app/statistic/h;->d(J)V

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTpId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/statistic/h;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_12

    iget-object v6, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$8;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;Lcom/alipay/android/app/b/d/a;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$9;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager$9;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :catch_1
    move-exception v0

    const-string/jumbo v1, "tpl"

    const-string/jumbo v2, "render-fail"

    invoke-virtual {p1}, Lcom/alipay/android/app/flybird/ui/data/FlybirdWindowFrame;->getmTpId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "mini_app_error"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "de"

    const-string/jumbo v3, "handlebirdresponse_error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "template_error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mBizId:I

    new-instance v2, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-static {v1, v12}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/android/app/g/b;->a(ILjava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mCurrentFormShower:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;->getShowerActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "flybird_system_error"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;->mBizId:I

    new-instance v2, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-static {v0, v12}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/alipay/android/app/g/b;->a(ILjava/lang/Throwable;)V

    goto/16 :goto_0
.end method
