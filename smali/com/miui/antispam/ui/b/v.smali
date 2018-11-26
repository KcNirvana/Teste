.class final Lcom/miui/antispam/ui/b/v;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic XB:Lcom/miui/antispam/ui/b/f;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/b/v;->XB:Lcom/miui/antispam/ui/b/f;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected Wq(Landroid/util/Pair;)V
    .locals 8

    const v7, 0x7f0c0005

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/antispam/ui/b/v;->XB:Lcom/miui/antispam/ui/b/f;

    iget-object v1, v0, Lcom/miui/antispam/ui/b/f;->WH:Lcom/miui/antispam/ui/view/LabelPreference;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/v;->XB:Lcom/miui/antispam/ui/b/f;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-virtual {v2, v7, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/b/v;->XB:Lcom/miui/antispam/ui/b/f;

    iget-object v1, v0, Lcom/miui/antispam/ui/b/f;->WT:Lcom/miui/antispam/ui/view/LabelPreference;

    iget-object v0, p0, Lcom/miui/antispam/ui/b/v;->XB:Lcom/miui/antispam/ui/b/f;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v4, v3, v5

    invoke-virtual {v2, v7, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/antispam/ui/view/LabelPreference;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/miui/antispam/ui/b/v;->XB:Lcom/miui/antispam/ui/b/f;

    iget-object v0, v0, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/miui/antispam/util/h;->XI(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/antispam/ui/b/v;->XB:Lcom/miui/antispam/ui/b/f;

    iget-object v1, v1, Lcom/miui/antispam/ui/b/f;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/miui/antispam/util/h;->XJ(Landroid/content/Context;I)I

    move-result v1

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/b/v;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/b/v;->Wq(Landroid/util/Pair;)V

    return-void
.end method
