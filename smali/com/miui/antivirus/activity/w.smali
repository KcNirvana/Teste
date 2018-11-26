.class final Lcom/miui/antivirus/activity/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic atb:Lcom/miui/antivirus/activity/v;

.field final synthetic atc:Lcom/miui/guardprovider/aidl/IAntiVirusServer;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/v;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/w;->atb:Lcom/miui/antivirus/activity/v;

    iput-object p2, p0, Lcom/miui/antivirus/activity/w;->atc:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/w;->atb:Lcom/miui/antivirus/activity/v;

    iget-object v0, v0, Lcom/miui/antivirus/activity/v;->ata:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->axJ(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/w;->atc:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    iget-object v2, p0, Lcom/miui/antivirus/activity/w;->atb:Lcom/miui/antivirus/activity/v;

    iget-object v2, v2, Lcom/miui/antivirus/activity/v;->ata:Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {v2}, Lcom/miui/antivirus/activity/MainActivity;->axI(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/a;->aCH(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lcom/miui/antivirus/b;)V

    return-void
.end method
