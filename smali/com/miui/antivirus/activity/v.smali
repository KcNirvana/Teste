.class final Lcom/miui/antivirus/activity/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/guardprovider/b;


# instance fields
.field final synthetic ata:Lcom/miui/antivirus/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/v;->ata:Lcom/miui/antivirus/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aqs(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/v;->ata:Lcom/miui/antivirus/activity/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->axQ(Lcom/miui/antivirus/activity/MainActivity;Z)Z

    new-instance v0, Lcom/miui/antivirus/activity/w;

    invoke-direct {v0, p0, p1}, Lcom/miui/antivirus/activity/w;-><init>(Lcom/miui/antivirus/activity/v;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method
