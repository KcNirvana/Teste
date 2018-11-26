.class final Lcom/miui/antivirus/service/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/guardprovider/b;


# instance fields
.field final synthetic avn:Lcom/miui/antivirus/service/c;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/g;->avn:Lcom/miui/antivirus/service/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aqs(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 1

    new-instance v0, Lcom/miui/antivirus/service/h;

    invoke-direct {v0, p0, p1}, Lcom/miui/antivirus/service/h;-><init>(Lcom/miui/antivirus/service/g;Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method
