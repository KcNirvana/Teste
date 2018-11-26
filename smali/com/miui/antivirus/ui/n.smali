.class final Lcom/miui/antivirus/ui/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aqX:Lcom/miui/antivirus/ui/g;

.field final synthetic aqY:Lcom/miui/antivirus/model/g;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/g;Lcom/miui/antivirus/model/g;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/n;->aqX:Lcom/miui/antivirus/ui/g;

    iput-object p2, p0, Lcom/miui/antivirus/ui/n;->aqY:Lcom/miui/antivirus/model/g;

    iput-object p3, p0, Lcom/miui/antivirus/ui/n;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p2, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/miui/antivirus/ui/n;->aqX:Lcom/miui/antivirus/ui/g;

    iget-object v1, p0, Lcom/miui/antivirus/ui/n;->aqY:Lcom/miui/antivirus/model/g;

    iget-object v2, p0, Lcom/miui/antivirus/ui/n;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/miui/antivirus/ui/g;->awB(Lcom/miui/antivirus/ui/g;Lcom/miui/antivirus/model/g;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
