.class final Lcom/miui/gamebooster/gbservices/F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic qq:Lcom/miui/gamebooster/gbservices/k;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/gbservices/k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/gbservices/F;->qq:Lcom/miui/gamebooster/gbservices/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/F;->qq:Lcom/miui/gamebooster/gbservices/k;

    invoke-static {p2}, Lcom/miui/gamebooster/service/IGameBoosterWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IGameBoosterWindow;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/gamebooster/gbservices/k;->pM:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/gbservices/F;->qq:Lcom/miui/gamebooster/gbservices/k;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/gamebooster/gbservices/k;->pM:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    return-void
.end method
