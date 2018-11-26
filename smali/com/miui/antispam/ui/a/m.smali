.class final Lcom/miui/antispam/ui/a/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/antispam/util/b;


# instance fields
.field final synthetic Wk:Lcom/miui/antispam/ui/a/c;

.field final synthetic Wl:Lcom/miui/antispam/ui/a/e;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/a/c;Lcom/miui/antispam/ui/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/a/m;->Wk:Lcom/miui/antispam/ui/a/c;

    iput-object p2, p0, Lcom/miui/antispam/ui/a/m;->Wl:Lcom/miui/antispam/ui/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public VB(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/a/m;->Wl:Lcom/miui/antispam/ui/a/e;

    iget-object v0, v0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/a/m;->Wl:Lcom/miui/antispam/ui/a/e;

    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
