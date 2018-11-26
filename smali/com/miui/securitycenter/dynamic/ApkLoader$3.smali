.class final Lcom/miui/securitycenter/dynamic/ApkLoader$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

.field final synthetic val$countDown:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/dynamic/ApkLoader;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$3;->this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

    iput-object p2, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$3;->val$countDown:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$3;->this$0:Lcom/miui/securitycenter/dynamic/ApkLoader;

    invoke-virtual {v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->getDynamicContext()Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/ApkLoader$3;->val$countDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
