.class Lcom/miui/weather2/tools/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/miui/weather2/tools/af;


# direct methods
.method constructor <init>(Lcom/miui/weather2/tools/af;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/ag;->a:Lcom/miui/weather2/tools/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/tools/ag;->a:Lcom/miui/weather2/tools/af;

    invoke-static {p2}, Lcom/miui/systemAdSolution/miFamily/IMiFamilyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/af;->a(Lcom/miui/weather2/tools/af;Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;)Lcom/miui/systemAdSolution/miFamily/IMiFamilyService;

    sget-object v0, Lcom/miui/weather2/tools/bi;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/weather2/tools/ah;

    invoke-direct {v1, p0}, Lcom/miui/weather2/tools/ah;-><init>(Lcom/miui/weather2/tools/ag;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
