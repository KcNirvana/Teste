.class final Lcom/miui/sec/external/c;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic bem:Lcom/miui/sec/external/b;

.field final synthetic ben:I

.field final synthetic beo:Landroid/os/IMessenger;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/sec/external/b;Ljava/lang/String;ILandroid/os/IMessenger;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/sec/external/c;->bem:Lcom/miui/sec/external/b;

    iput-object p2, p0, Lcom/miui/sec/external/c;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/miui/sec/external/c;->ben:I

    iput-object p4, p0, Lcom/miui/sec/external/c;->beo:Landroid/os/IMessenger;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/miui/sec/external/c;->ben:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/miui/sec/external/c;->beo:Landroid/os/IMessenger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/sec/external/c;->beo:Landroid/os/IMessenger;

    invoke-interface {v1, v0}, Landroid/os/IMessenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
