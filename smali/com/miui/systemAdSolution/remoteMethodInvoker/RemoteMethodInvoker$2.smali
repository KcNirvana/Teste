.class Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    iput-object p2, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "RemoteMethodInvoker"

    iget-object v1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    invoke-static {v1}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->access$000(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    invoke-static {v1}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->access$000(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "asInterface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->val$service:Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    invoke-static {v1, v0}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->access$102(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;Landroid/os/IInterface;)Landroid/os/IInterface;

    const-string v0, "RemoteMethodInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    invoke-static {v2}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->access$100(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;)Landroid/os/IInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->val$service:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    invoke-static {v0, v6}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->access$202(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    iget-object v0, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    iget-object v1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    iget-object v2, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    invoke-static {v2}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->access$100(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;)Landroid/os/IInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->access$202(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->access$300(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    iget-object v1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    invoke-static {v1}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->access$200(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->access$400(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteMethodInvoker"

    const-string v2, "asInterface error : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "RemoteMethodInvoker"

    const-string v2, "error while invoking service methods: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    invoke-static {v0}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->access$300(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    invoke-static {v1}, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;->access$300(Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker$2;->this$0:Lcom/miui/systemAdSolution/remoteMethodInvoker/RemoteMethodInvoker;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method
