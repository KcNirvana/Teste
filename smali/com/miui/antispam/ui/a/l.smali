.class final Lcom/miui/antispam/ui/a/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/antispam/util/b;


# instance fields
.field final synthetic Wi:Lcom/miui/antispam/ui/a/a;

.field final synthetic Wj:Lcom/miui/antispam/ui/a/b;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/a/a;Lcom/miui/antispam/ui/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/a/l;->Wi:Lcom/miui/antispam/ui/a/a;

    iput-object p2, p0, Lcom/miui/antispam/ui/a/l;->Wj:Lcom/miui/antispam/ui/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public VB(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/a/l;->Wj:Lcom/miui/antispam/ui/a/b;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/b;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/a/l;->Wj:Lcom/miui/antispam/ui/a/b;

    iget-object v1, v0, Lcom/miui/antispam/ui/a/b;->name:Landroid/widget/TextView;

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/a/l;->Wj:Lcom/miui/antispam/ui/a/b;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/b;->VH:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/a/l;->Wj:Lcom/miui/antispam/ui/a/b;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/b;->VH:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/a/l;->Wj:Lcom/miui/antispam/ui/a/b;

    iget-object v1, v0, Lcom/miui/antispam/ui/a/b;->VI:Landroid/widget/TextView;

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
