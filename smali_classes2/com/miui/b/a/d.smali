.class Lcom/miui/b/a/d;
.super Ljava/lang/Thread;
.source "RemoteMethodInvoker.java"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/miui/b/a/a;


# direct methods
.method constructor <init>(Lcom/miui/b/a/a;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/b/a/d;->b:Lcom/miui/b/a/a;

    iput-object p2, p0, Lcom/miui/b/a/d;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/b/a/d;->b:Lcom/miui/b/a/a;

    invoke-static {v0}, Lcom/miui/b/a/a;->access$300(Lcom/miui/b/a/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/b/a/d;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/b/a/d;->b:Lcom/miui/b/a/a;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteMethodInvoker"

    const-string v2, "invokeInNewThread: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
