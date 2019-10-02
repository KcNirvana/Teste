.class public Lcom/miui/video/common/library/utils/LayerUtils;
.super Ljava/lang/Object;
.source "LayerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/library/utils/LayerUtils$Layer;,
        Lcom/miui/video/common/library/utils/LayerUtils$LayerList;,
        Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener;
    }
.end annotation


# static fields
.field private static final ACTION_DELAY:I = 0x1

.field private static final ACTION_HIDE:I = 0x0

.field private static final ACTION_NEXT:I = 0x2

.field private static mInstance:Lcom/miui/video/common/library/utils/LayerUtils;


# instance fields
.field private eAnim:Landroid/animation/Animator$AnimatorListener;

.field private mArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/video/common/library/utils/LayerUtils$LayerList;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLayerListEntity:Lcom/miui/video/common/library/utils/LayerUtils$LayerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/video/common/library/utils/LayerUtils$LayerList<",
            "Lcom/miui/video/common/library/utils/LayerUtils$Layer;",
            ">;"
        }
    .end annotation
.end field

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/video/common/library/utils/LayerUtils$1;

    invoke-direct {v0, p0}, Lcom/miui/video/common/library/utils/LayerUtils$1;-><init>(Lcom/miui/video/common/library/utils/LayerUtils;)V

    iput-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->eAnim:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/miui/video/common/library/utils/LayerUtils$2;

    invoke-direct {v0, p0}, Lcom/miui/video/common/library/utils/LayerUtils$2;-><init>(Lcom/miui/video/common/library/utils/LayerUtils;)V

    iput-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/miui/video/framework/FrameworkConfig;->getInstance()Lcom/miui/video/framework/FrameworkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/framework/FrameworkConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {}, Lcom/miui/video/common/library/utils/LayerUtils;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mArray:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/common/library/utils/LayerUtils;Lcom/miui/video/common/library/utils/LayerUtils$Layer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/common/library/utils/LayerUtils;->showNow(Lcom/miui/video/common/library/utils/LayerUtils$Layer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/common/library/utils/LayerUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/utils/LayerUtils;->hide()V

    return-void
.end method

.method public static getInstance()Lcom/miui/video/common/library/utils/LayerUtils;
    .locals 1

    sget-object v0, Lcom/miui/video/common/library/utils/LayerUtils;->mInstance:Lcom/miui/video/common/library/utils/LayerUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/common/library/utils/LayerUtils;

    invoke-direct {v0}, Lcom/miui/video/common/library/utils/LayerUtils;-><init>()V

    sput-object v0, Lcom/miui/video/common/library/utils/LayerUtils;->mInstance:Lcom/miui/video/common/library/utils/LayerUtils;

    :cond_0
    sget-object v0, Lcom/miui/video/common/library/utils/LayerUtils;->mInstance:Lcom/miui/video/common/library/utils/LayerUtils;

    return-object v0
.end method

.method public static getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x11

    const/4 v2, -0x2

    invoke-static {v1, v2, v0, v0}, Lcom/miui/video/common/library/utils/LayerUtils;->getWindowLayoutParams(IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/miui/video/common/library/utils/LayerUtils;->getWindowLayoutParams(IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public static getWindowLayoutParams(IIII)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v1, 0x4000008

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget p0, Lcom/miui/video/common/library/R$style;->s_fw_layer:I

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-object v0
.end method

.method private declared-synchronized hide()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const-string v0, "hide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;

    invoke-virtual {v2}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideAnim()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/common/library/utils/LayerUtils;->eAnim:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->setAnim(Landroid/animation/AnimatorSet;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized showNow(Lcom/miui/video/common/library/utils/LayerUtils$Layer;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/video/common/library/utils/LayerUtils;->hide()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "showNow"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mLayerListEntity:Lcom/miui/video/common/library/utils/LayerUtils$LayerList;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mLayerListEntity:Lcom/miui/video/common/library/utils/LayerUtils$LayerList;

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/LayerUtils$LayerList;->getListener()Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mLayerListEntity:Lcom/miui/video/common/library/utils/LayerUtils$LayerList;

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/LayerUtils$LayerList;->getListener()Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mShowEntity:Lcom/miui/video/common/library/utils/LayerUtils$Layer;

    invoke-interface {p1, v0}, Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener;->onLayerShow(Lcom/miui/video/common/library/utils/LayerUtils$Layer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addLayer(Landroid/content/Context;Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener;Lcom/miui/video/common/library/utils/LayerUtils$Layer;)Z
    .locals 1

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/utils/LayerUtils$LayerList;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/video/common/library/utils/LayerUtils$LayerList;

    invoke-direct {v0}, Lcom/miui/video/common/library/utils/LayerUtils$LayerList;-><init>()V

    :cond_1
    invoke-virtual {v0, p2}, Lcom/miui/video/common/library/utils/LayerUtils$LayerList;->setListener(Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener;)V

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/LayerUtils$LayerList;->getQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public addLayerList(Landroid/content/Context;Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener;",
            "Ljava/util/List<",
            "Lcom/miui/video/common/library/utils/LayerUtils$Layer;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/common/library/utils/LayerUtils$Layer;

    invoke-virtual {p0, p1, p2, v2}, Lcom/miui/video/common/library/utils/LayerUtils;->addLayer(Landroid/content/Context;Lcom/miui/video/common/library/utils/LayerUtils$IOnLayerShowListener;Lcom/miui/video/common/library/utils/LayerUtils$Layer;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clear(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/utils/LayerUtils;->dismiss(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mArray:Landroid/util/SparseArray;

    const v0, 0x10101e8

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected dismiss(Lcom/miui/video/common/library/utils/LayerUtils$LayerList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/common/library/utils/LayerUtils$LayerList<",
            "Lcom/miui/video/common/library/utils/LayerUtils$Layer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mLayerListEntity:Lcom/miui/video/common/library/utils/LayerUtils$LayerList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mLayerListEntity:Lcom/miui/video/common/library/utils/LayerUtils$LayerList;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/miui/video/common/library/utils/LayerUtils;->hide()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mLayerListEntity:Lcom/miui/video/common/library/utils/LayerUtils$LayerList;

    :cond_0
    return-void
.end method

.method public dismiss(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/library/utils/LayerUtils$LayerList;

    invoke-virtual {p0, p1}, Lcom/miui/video/common/library/utils/LayerUtils;->dismiss(Lcom/miui/video/common/library/utils/LayerUtils$LayerList;)V

    const/4 p1, 0x1

    return p1
.end method

.method public show(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/common/library/utils/LayerUtils$LayerList;

    iput-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mLayerListEntity:Lcom/miui/video/common/library/utils/LayerUtils$LayerList;

    invoke-virtual {p0}, Lcom/miui/video/common/library/utils/LayerUtils;->showNext()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mLayerListEntity:Lcom/miui/video/common/library/utils/LayerUtils$LayerList;

    :cond_1
    return-void
.end method

.method public show(Lcom/miui/video/common/library/utils/LayerUtils$Layer;)Z
    .locals 6

    invoke-direct {p0}, Lcom/miui/video/common/library/utils/LayerUtils;->hide()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getDelay()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getDelay()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/video/common/library/utils/LayerUtils;->showNow(Lcom/miui/video/common/library/utils/LayerUtils$Layer;)V

    :goto_0
    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getDuration()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getDelay()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {p1}, Lcom/miui/video/common/library/utils/LayerUtils$Layer;->getDuration()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr v3, p1

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public showNext()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/common/library/utils/LayerUtils;->hideAnim()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mLayerListEntity:Lcom/miui/video/common/library/utils/LayerUtils$LayerList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/common/library/utils/LayerUtils;->mLayerListEntity:Lcom/miui/video/common/library/utils/LayerUtils$LayerList;

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/LayerUtils$LayerList;->getQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/utils/LayerUtils$Layer;

    invoke-virtual {p0, v0}, Lcom/miui/video/common/library/utils/LayerUtils;->show(Lcom/miui/video/common/library/utils/LayerUtils$Layer;)Z

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
