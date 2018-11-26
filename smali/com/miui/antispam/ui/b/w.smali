.class final Lcom/miui/antispam/ui/b/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic XC:Lcom/miui/antispam/ui/b/f;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/w;->XC:Lcom/miui/antispam/ui/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/b/w;->XC:Lcom/miui/antispam/ui/b/f;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, p2, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setNotificationType(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/w;->XC:Lcom/miui/antispam/ui/b/f;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/f;->WG:Lcom/miui/antispam/ui/view/LabelPreference;

    iget-object v1, p0, Lcom/miui/antispam/ui/b/w;->XC:Lcom/miui/antispam/ui/b/f;

    iget-object v1, v1, Lcom/miui/antispam/ui/b/f;->WL:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
