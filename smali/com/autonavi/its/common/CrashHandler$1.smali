.class Lcom/autonavi/its/common/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/its/common/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/its/common/CrashHandler;

.field final synthetic val$ex:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/autonavi/its/common/CrashHandler;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/its/common/CrashHandler$1;->this$0:Lcom/autonavi/its/common/CrashHandler;

    iput-object p2, p0, Lcom/autonavi/its/common/CrashHandler$1;->val$ex:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v1, p0, Lcom/autonavi/its/common/CrashHandler$1;->this$0:Lcom/autonavi/its/common/CrashHandler;

    invoke-static {v1}, Lcom/autonavi/its/common/CrashHandler;->access$000(Lcom/autonavi/its/common/CrashHandler;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/its/common/CrashHandler$1;->val$ex:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/autonavi/its/common/CrashHandler$1;->this$0:Lcom/autonavi/its/common/CrashHandler;

    iget-object v1, v1, Lcom/autonavi/its/common/CrashHandler;->mHandlingAllException:Lcom/autonavi/its/common/CrashHandler$HandlingAllException;

    iget-object v2, p0, Lcom/autonavi/its/common/CrashHandler$1;->val$ex:Ljava/lang/Throwable;

    invoke-interface {v1, v2}, Lcom/autonavi/its/common/CrashHandler$HandlingAllException;->doingAllException(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
