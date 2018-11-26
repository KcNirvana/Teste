.class final Lcom/miui/antivirus/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic awT:Lcom/miui/antivirus/m;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/m;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/w;->awT:Lcom/miui/antivirus/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "virus_info_key"

    iget-object v2, p0, Lcom/miui/antivirus/w;->awT:Lcom/miui/antivirus/m;

    invoke-static {v2}, Lcom/miui/antivirus/m;->aEw(Lcom/miui/antivirus/m;)Lcom/miui/antivirus/model/VirusModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/miui/antivirus/w;->awT:Lcom/miui/antivirus/m;

    invoke-static {v1}, Lcom/miui/antivirus/m;->aEv(Lcom/miui/antivirus/m;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/antivirus/l;->aEu(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method
