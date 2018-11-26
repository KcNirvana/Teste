.class final Lcom/miui/antispam/ui/b/C;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic XI:Lcom/miui/antispam/ui/b/j;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/C;->XI:Lcom/miui/antispam/ui/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/b/C;->XI:Lcom/miui/antispam/ui/b/j;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/j;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/C;->XI:Lcom/miui/antispam/ui/b/j;

    invoke-static {v1}, Lcom/miui/antispam/ui/b/j;->Wl(Lcom/miui/antispam/ui/b/j;)I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setNotificationType(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/C;->XI:Lcom/miui/antispam/ui/b/j;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/j;->WG:Lcom/miui/antispam/ui/view/LabelPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/C;->XI:Lcom/miui/antispam/ui/b/j;

    iget-object v1, v1, Lcom/miui/antispam/ui/b/j;->WL:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
