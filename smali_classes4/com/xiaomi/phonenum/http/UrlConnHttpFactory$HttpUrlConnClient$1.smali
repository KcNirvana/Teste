.class Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "UrlConnHttpFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;->waitForCellular(Landroid/content/Context;JI)Landroid/net/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;

.field final synthetic val$cellularNetwork:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$mCm:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;Landroid/net/ConnectivityManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient$1;->this$1:Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient;

    iput-object p2, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient$1;->val$mCm:Landroid/net/ConnectivityManager;

    iput-object p3, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient$1;->val$cellularNetwork:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient$1;->val$mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient$1;->val$cellularNetwork:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/xiaomi/phonenum/http/UrlConnHttpFactory$HttpUrlConnClient$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
