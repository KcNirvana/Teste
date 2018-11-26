.class final Lcom/miui/antivirus/ui/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aqT:Lcom/miui/antivirus/ui/f;

.field final synthetic aqU:Lcom/miui/antivirus/a;

.field final synthetic aqV:Lcom/miui/antivirus/model/b;

.field final synthetic aqW:Lcom/miui/common/d/f;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/f;Lcom/miui/antivirus/a;Lcom/miui/antivirus/model/b;Lcom/miui/common/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/m;->aqT:Lcom/miui/antivirus/ui/f;

    iput-object p2, p0, Lcom/miui/antivirus/ui/m;->aqU:Lcom/miui/antivirus/a;

    iput-object p3, p0, Lcom/miui/antivirus/ui/m;->aqV:Lcom/miui/antivirus/model/b;

    iput-object p4, p0, Lcom/miui/antivirus/ui/m;->aqW:Lcom/miui/common/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/ui/m;->aqU:Lcom/miui/antivirus/a;

    iget-object v1, p0, Lcom/miui/antivirus/ui/m;->aqV:Lcom/miui/antivirus/model/b;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/a;->aBP(Lcom/miui/antivirus/model/b;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/m;->aqU:Lcom/miui/antivirus/a;

    iget-object v1, p0, Lcom/miui/antivirus/ui/m;->aqV:Lcom/miui/antivirus/model/b;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/a;->aCA(Lcom/miui/antivirus/model/b;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/m;->aqW:Lcom/miui/common/d/f;

    iget-object v1, p0, Lcom/miui/antivirus/ui/m;->aqV:Lcom/miui/antivirus/model/b;

    const/16 v2, 0x3f4

    invoke-virtual {v0, v2, v1}, Lcom/miui/common/d/f;->aLg(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/m;->aqT:Lcom/miui/antivirus/ui/f;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/f;->dismiss()V

    return-void
.end method
