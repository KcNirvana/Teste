.class public Lcom/miui/antispam/ui/view/CheckListView;
.super Landroid/widget/ExpandableListView;
.source ""

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field private XQ:Lcom/miui/antispam/ui/a/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lcom/miui/antispam/ui/view/CheckListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    invoke-virtual {p0, p0}, Lcom/miui/antispam/ui/view/CheckListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Lcom/miui/antispam/ui/view/CheckListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    invoke-virtual {p0, p0}, Lcom/miui/antispam/ui/view/CheckListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    return-void
.end method


# virtual methods
.method public Ww(Lcom/miui/antispam/ui/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/view/CheckListView;->XQ:Lcom/miui/antispam/ui/a/j;

    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/view/CheckListView;->XQ:Lcom/miui/antispam/ui/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/view/CheckListView;->XQ:Lcom/miui/antispam/ui/a/j;

    invoke-virtual {v0, p3, p4}, Lcom/miui/antispam/ui/a/j;->Vy(II)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/view/CheckListView;->XQ:Lcom/miui/antispam/ui/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/view/CheckListView;->XQ:Lcom/miui/antispam/ui/a/j;

    invoke-virtual {v0, p3}, Lcom/miui/antispam/ui/a/j;->Vz(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
