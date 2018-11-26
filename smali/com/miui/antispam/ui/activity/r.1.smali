.class final Lcom/miui/antispam/ui/activity/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Ub:Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/r;->Ub:Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/r;->Ub:Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;

    const-class v2, Lcom/miui/antispam/ui/activity/MarkNumberBlockActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/r;->Ub:Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;

    invoke-virtual {v1, v0}, Lcom/miui/antispam/ui/activity/MarkNumGuideActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
