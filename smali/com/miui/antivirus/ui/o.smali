.class final Lcom/miui/antivirus/ui/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aqZ:Lcom/miui/antivirus/ui/g;

.field final synthetic ara:Lcom/miui/antivirus/model/g;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/g;Lcom/miui/antivirus/model/g;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/o;->aqZ:Lcom/miui/antivirus/ui/g;

    iput-object p2, p0, Lcom/miui/antivirus/ui/o;->ara:Lcom/miui/antivirus/model/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/ui/o;->aqZ:Lcom/miui/antivirus/ui/g;

    iget-object v0, v0, Lcom/miui/antivirus/ui/g;->aqD:Lcom/miui/common/d/f;

    iget-object v1, p0, Lcom/miui/antivirus/ui/o;->ara:Lcom/miui/antivirus/model/g;

    const/16 v2, 0x41c

    invoke-virtual {v0, v2, v1}, Lcom/miui/common/d/f;->aLg(ILjava/lang/Object;)V

    return-void
.end method
