.class final Lcom/miui/antispam/ui/a/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Wm:Lcom/miui/antispam/ui/a/h;

.field final synthetic Wn:Landroid/widget/TextView;

.field final synthetic Wo:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/a/h;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/a/n;->Wm:Lcom/miui/antispam/ui/a/h;

    iput-object p2, p0, Lcom/miui/antispam/ui/a/n;->Wn:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/miui/antispam/ui/a/n;->Wo:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/a/n;->Wn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/a/n;->Wn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/antispam/ui/a/n;->Wo:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
