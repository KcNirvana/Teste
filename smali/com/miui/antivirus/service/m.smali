.class final Lcom/miui/antivirus/service/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic avv:Lcom/miui/antivirus/service/DialogService;

.field final synthetic avw:I


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/DialogService;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/m;->avv:Lcom/miui/antivirus/service/DialogService;

    iput p2, p0, Lcom/miui/antivirus/service/m;->avw:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/service/m;->avv:Lcom/miui/antivirus/service/DialogService;

    invoke-static {v0}, Lcom/miui/antivirus/ui/b;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/ui/b;

    move-result-object v0

    iget v1, p0, Lcom/miui/antivirus/service/m;->avw:I

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/b;->avQ(I)V

    return-void
.end method
