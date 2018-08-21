.class Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$3;
.super Ljava/lang/Object;
.source "TransmissionProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$3;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$3;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    invoke-static {p2}, Lmiui/assistant/provider/ITransmissionService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/assistant/provider/ITransmissionService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->access$302(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;Lmiui/assistant/provider/ITransmissionService;)Lmiui/assistant/provider/ITransmissionService;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$3;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->access$602(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;Z)Z

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$3;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->access$700(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$3;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->access$500(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;)V

    return-void
.end method
