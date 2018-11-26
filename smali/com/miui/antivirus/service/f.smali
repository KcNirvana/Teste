.class final Lcom/miui/antivirus/service/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic avm:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/VirusAutoUpdateJobService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/f;->avm:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/miui/antispam/policy/PolicyUtils/d;

    iget-object v1, p0, Lcom/miui/antivirus/service/f;->avm:Lcom/miui/antivirus/service/VirusAutoUpdateJobService;

    invoke-direct {v0, v1}, Lcom/miui/antispam/policy/PolicyUtils/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/antispam/policy/PolicyUtils/d;->Xc()V

    return-void
.end method
