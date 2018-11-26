.class final Lcom/miui/appmanager/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic aWb:Lcom/miui/appmanager/ApplicationsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/y;->aWb:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/y;->aWb:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {p2}, Lcom/miui/powerkeeper/IPowerKeeper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/powerkeeper/IPowerKeeper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkH(Lcom/miui/appmanager/ApplicationsDetailsActivity;Lcom/miui/powerkeeper/IPowerKeeper;)Lcom/miui/powerkeeper/IPowerKeeper;

    iget-object v0, p0, Lcom/miui/appmanager/y;->aWb:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    invoke-static {v0}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkX(Lcom/miui/appmanager/ApplicationsDetailsActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/y;->aWb:Lcom/miui/appmanager/ApplicationsDetailsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/appmanager/ApplicationsDetailsActivity;->bkH(Lcom/miui/appmanager/ApplicationsDetailsActivity;Lcom/miui/powerkeeper/IPowerKeeper;)Lcom/miui/powerkeeper/IPowerKeeper;

    return-void
.end method
