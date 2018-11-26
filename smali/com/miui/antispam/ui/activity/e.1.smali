.class final Lcom/miui/antispam/ui/activity/e;
.super Landroid/widget/ResourceCursorAdapter;
.source ""


# instance fields
.field final synthetic Sz:Lcom/miui/antispam/ui/activity/KeywordListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/e;->Sz:Lcom/miui/antispam/ui/activity/KeywordListActivity;

    const v0, 0x7f03009d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/activity/f;

    const-string/jumbo v1, "data"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/f;->SA:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/activity/f;

    invoke-direct {v1, v0}, Lcom/miui/antispam/ui/activity/f;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method
