.class final Lcom/miui/antivirus/service/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic avt:Lcom/miui/antivirus/service/k;

.field final synthetic avu:Lcom/miui/guardprovider/aidl/IAntiVirusServer;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/k;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/l;->avt:Lcom/miui/antivirus/service/k;

    iput-object p2, p0, Lcom/miui/antivirus/service/l;->avu:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/service/l;->avt:Lcom/miui/antivirus/service/k;

    iget-object v0, v0, Lcom/miui/antivirus/service/k;->avs:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->aBu(Lcom/miui/antivirus/service/GuardService;)Lcom/miui/antivirus/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/service/l;->avu:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    iget-object v2, p0, Lcom/miui/antivirus/service/l;->avt:Lcom/miui/antivirus/service/k;

    iget-object v2, v2, Lcom/miui/antivirus/service/k;->avs:Lcom/miui/antivirus/service/GuardService;

    iget-object v2, v2, Lcom/miui/antivirus/service/GuardService;->auS:Lcom/miui/antivirus/c;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antivirus/a;->aCG(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lcom/miui/antivirus/c;)V

    return-void
.end method
