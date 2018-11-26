.class final Lcom/miui/antivirus/activity/D;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic atj:Lcom/miui/antivirus/activity/MainActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/MainActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/D;->atj:Lcom/miui/antivirus/activity/MainActivity;

    iput-object p2, p0, Lcom/miui/antivirus/activity/D;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/securitycenter/a;->brO(Z)V

    const-string/jumbo v0, "open"

    invoke-static {v0}, Lcom/miui/antivirus/a/d;->azz(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/D;->atj:Lcom/miui/antivirus/activity/MainActivity;

    iget-object v1, p0, Lcom/miui/antivirus/activity/D;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->axp(Landroid/content/Context;)V

    const-string/jumbo v0, "update"

    invoke-static {v0}, Lcom/miui/antivirus/a/d;->azB(Ljava/lang/String;)V

    return-void
.end method
