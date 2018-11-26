.class final Lcom/miui/antivirus/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/guardprovider/b;


# instance fields
.field final synthetic awU:Lcom/miui/antivirus/model/VirusModel;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/model/VirusModel;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/x;->awU:Lcom/miui/antivirus/model/VirusModel;

    iput-object p2, p0, Lcom/miui/antivirus/x;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aqs(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/antivirus/y;

    iget-object v2, p0, Lcom/miui/antivirus/x;->awU:Lcom/miui/antivirus/model/VirusModel;

    iget-object v3, p0, Lcom/miui/antivirus/x;->val$context:Landroid/content/Context;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/miui/antivirus/y;-><init>(Lcom/miui/antivirus/x;Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lcom/miui/antivirus/model/VirusModel;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
