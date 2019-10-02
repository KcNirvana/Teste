.class Lse/dirac/acs/api/AudioControlService$Connection$1;
.super Ljava/lang/Object;
.source "AudioControlService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/AudioControlService$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/dirac/acs/api/AudioControlService$Connection;


# direct methods
.method constructor <init>(Lse/dirac/acs/api/AudioControlService$Connection;)V
    .locals 0

    iput-object p1, p0, Lse/dirac/acs/api/AudioControlService$Connection$1;->this$0:Lse/dirac/acs/api/AudioControlService$Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object p1, p0, Lse/dirac/acs/api/AudioControlService$Connection$1;->this$0:Lse/dirac/acs/api/AudioControlService$Connection;

    new-instance v0, Lse/dirac/acs/api/AudioControlService;

    iget-object v1, p0, Lse/dirac/acs/api/AudioControlService$Connection$1;->this$0:Lse/dirac/acs/api/AudioControlService$Connection;

    invoke-static {v1}, Lse/dirac/acs/api/AudioControlService$Connection;->access$000(Lse/dirac/acs/api/AudioControlService$Connection;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Lse/dirac/acs/api/IAudioControlService$Stub;->asInterface(Landroid/os/IBinder;)Lse/dirac/acs/api/IAudioControlService;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lse/dirac/acs/api/AudioControlService;-><init>(Landroid/content/Context;Lse/dirac/acs/api/IAudioControlService;Lse/dirac/acs/api/AudioControlService$1;)V

    invoke-virtual {p1, v0}, Lse/dirac/acs/api/AudioControlService$Connection;->onServiceConnected(Lse/dirac/acs/api/AudioControlService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p1, p0, Lse/dirac/acs/api/AudioControlService$Connection$1;->this$0:Lse/dirac/acs/api/AudioControlService$Connection;

    invoke-virtual {p1}, Lse/dirac/acs/api/AudioControlService$Connection;->onServiceDisconnected()V

    return-void
.end method
