.class final Lcom/miui/antispam/ui/activity/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final SA:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a01e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/f;->SA:Landroid/widget/TextView;

    return-void
.end method
