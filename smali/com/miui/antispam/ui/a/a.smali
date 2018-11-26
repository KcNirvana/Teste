.class public final Lcom/miui/antispam/ui/a/a;
.super Landroid/widget/ResourceCursorAdapter;
.source ""


# instance fields
.field private VC:Z

.field public VD:Lcom/miui/antispam/ui/a/f;

.field private VE:Z

.field private VF:Lcom/miui/antispam/util/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f030099

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antispam/ui/a/a;->VC:Z

    iput-boolean p2, p0, Lcom/miui/antispam/ui/a/a;->VE:Z

    invoke-static {p1}, Lcom/miui/antispam/util/a;->getInstance(Landroid/content/Context;)Lcom/miui/antispam/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/a/a;->VF:Lcom/miui/antispam/util/a;

    new-instance v0, Lcom/miui/antispam/ui/a/f;

    invoke-direct {v0, p1, v2}, Lcom/miui/antispam/ui/a/f;-><init>(Landroid/content/Context;Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/a/a;->VD:Lcom/miui/antispam/ui/a/f;

    return-void
.end method


# virtual methods
.method public Vh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antispam/ui/a/a;->VC:Z

    invoke-virtual {p0}, Lcom/miui/antispam/ui/a/a;->notifyDataSetChanged()V

    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/b;

    iget-boolean v1, p0, Lcom/miui/antispam/ui/a/a;->VC:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/miui/antispam/ui/a/b;->VG:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const-string/jumbo v1, "number"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "state"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iget-object v1, v0, Lcom/miui/antispam/ui/a/b;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/antispam/ui/a/b;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/miui/antispam/ui/a/b;->VI:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/antispam/ui/a/b;->VH:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v1, "*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/antispam/ui/a/a;->VF:Lcom/miui/antispam/util/a;

    new-instance v4, Lcom/miui/antispam/ui/a/l;

    invoke-direct {v4, p0, v0}, Lcom/miui/antispam/ui/a/l;-><init>(Lcom/miui/antispam/ui/a/a;Lcom/miui/antispam/ui/a/b;)V

    invoke-virtual {v1, v2, v4}, Lcom/miui/antispam/util/a;->Xr(Ljava/lang/String;Lcom/miui/antispam/util/b;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v5, v0, Lcom/miui/antispam/ui/a/b;->name:Landroid/widget/TextView;

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/antispam/ui/a/b;->VH:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/antispam/ui/a/b;->VH:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v5, v0, Lcom/miui/antispam/ui/a/b;->VI:Landroid/widget/TextView;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string/jumbo v1, "***"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "notes"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/ui/a/a;->VD:Lcom/miui/antispam/ui/a/f;

    invoke-virtual {v2, v1}, Lcom/miui/antispam/ui/a/f;->Vk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/miui/antispam/ui/a/b;->name:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "\u5409\u6797"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-nez v3, :cond_7

    iget-object v1, v0, Lcom/miui/antispam/ui/a/b;->VG:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/miui/antispam/ui/a/a;->VE:Z

    if-eqz v0, :cond_6

    const v0, 0x7f070108

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v1, v0, Lcom/miui/antispam/ui/a/b;->VG:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    const v0, 0x7f07010b

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    if-ne v3, v1, :cond_9

    iget-object v1, v0, Lcom/miui/antispam/ui/a/b;->VG:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/miui/antispam/ui/a/a;->VE:Z

    if-eqz v0, :cond_8

    const v0, 0x7f070106

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_8
    const v0, 0x7f070109

    goto :goto_4

    :cond_9
    const/4 v1, 0x2

    if-ne v3, v1, :cond_3

    iget-object v1, v0, Lcom/miui/antispam/ui/a/b;->VG:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/miui/antispam/ui/a/a;->VE:Z

    if-eqz v0, :cond_a

    const v0, 0x7f070107

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_a
    const v0, 0x7f07010a

    goto :goto_5
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/a/b;

    invoke-direct {v1, v0}, Lcom/miui/antispam/ui/a/b;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method
