.class final Lcom/miui/antivirus/service/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic avo:Lcom/miui/antivirus/service/g;

.field final synthetic avp:Lcom/miui/guardprovider/aidl/IAntiVirusServer;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/g;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/h;->avo:Lcom/miui/antivirus/service/g;

    iput-object p2, p0, Lcom/miui/antivirus/service/h;->avp:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/service/h;->avo:Lcom/miui/antivirus/service/g;

    iget-object v0, v0, Lcom/miui/antivirus/service/g;->avn:Lcom/miui/antivirus/service/c;

    iget-object v0, v0, Lcom/miui/antivirus/service/c;->avf:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->aBu(Lcom/miui/antivirus/service/GuardService;)Lcom/miui/antivirus/a;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/service/h;->avp:Lcom/miui/guardprovider/aidl/IAntiVirusServer;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/a;->aCK(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    return-void
.end method
