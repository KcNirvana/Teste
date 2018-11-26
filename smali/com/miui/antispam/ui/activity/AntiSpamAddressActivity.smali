.class public Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;
.super Lcom/miui/antispam/ui/activity/b;
.source ""


# instance fields
.field public RR:Lcom/miui/antispam/ui/a/f;

.field public RS:Ljava/util/List;

.field public RT:Landroid/app/AlertDialog;

.field private RU:Landroid/widget/CheckBox;

.field public RV:Ljava/util/List;

.field public RW:Lcom/miui/antispam/ui/view/CheckListView;

.field private RX:Landroid/widget/CheckBox;

.field private RY:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

.field private RZ:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/b;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RS:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RV:Ljava/util/List;

    return-void
.end method

.method static synthetic Ti(Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RU:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic Tj(Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RX:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic Tk(Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RZ:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/activity/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_black"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->SIM_ID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03001a

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RY:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RY:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;->Wt()Landroid/widget/Button;

    move-result-object v0

    new-instance v3, Lcom/miui/antispam/ui/activity/x;

    invoke-direct {v3, p0, v1, v2}, Lcom/miui/antispam/ui/activity/x;-><init>(Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;ZI)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RY:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;->Wu()Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lcom/miui/antispam/ui/activity/z;

    invoke-direct {v2, p0}, Lcom/miui/antispam/ui/activity/z;-><init>(Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RY:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0700ac

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x10

    const/16 v3, 0x1d

    invoke-virtual {v0, v2, v3}, Lmiui/app/ActionBar;->setDisplayOptions(II)V

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RY:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_0
    new-instance v0, Lcom/miui/antispam/ui/a/f;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RY:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    invoke-direct {v0, p0, v2}, Lcom/miui/antispam/ui/a/f;-><init>(Landroid/content/Context;Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RR:Lcom/miui/antispam/ui/a/f;

    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/CheckListView;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RW:Lcom/miui/antispam/ui/view/CheckListView;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RW:Lcom/miui/antispam/ui/view/CheckListView;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RR:Lcom/miui/antispam/ui/a/f;

    invoke-virtual {v0, v2}, Lcom/miui/antispam/ui/view/CheckListView;->Ww(Lcom/miui/antispam/ui/a/j;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03014f

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RZ:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RZ:Landroid/view/View;

    const v2, 0x7f0a0387

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RX:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RX:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    const v0, 0x7f07008e

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RZ:Landroid/view/View;

    const v2, 0x7f0a0388

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RU:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AntiSpamAddressActivity;->RU:Landroid/widget/CheckBox;

    if-eqz v1, :cond_2

    const v0, 0x7f07008f

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(I)V

    return-void

    :cond_1
    const v0, 0x7f07008c

    goto :goto_0

    :cond_2
    const v0, 0x7f07008d

    goto :goto_1
.end method
