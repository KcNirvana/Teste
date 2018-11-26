.class final Lcom/miui/antivirus/activity/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic asM:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/k;->asM:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/k;->asM:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axK(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AntiVirusMainActivity"

    const-string/jumbo v1, "PRELOAD FINISHED : startCleanResultFrame"

    invoke-static {v0, v1}, Lmiui/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/antivirus/activity/MainActivity;->arz:Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/k;->asM:Lcom/miui/antivirus/activity/MainActivity;

    invoke-virtual {v0}, Lcom/miui/antivirus/activity/MainActivity;->axq()V

    :cond_0
    return-void
.end method
