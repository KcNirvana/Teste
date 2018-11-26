.class public Lcom/miui/antispam/ui/activity/AddPhoneListActivity;
.super Lcom/miui/antispam/ui/activity/b;
.source ""


# instance fields
.field private TA:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

.field private Tp:Z

.field private Tq:Landroid/view/inputmethod/InputMethodManager;

.field private Tr:Z

.field private Ts:Z

.field private Tt:Landroid/widget/CheckBox;

.field private Tu:Ljava/lang/String;

.field private Tv:Ljava/lang/String;

.field private Tw:Landroid/widget/EditText;

.field private Tx:Landroid/widget/CheckBox;

.field private Ty:I

.field private Tz:I

.field private mId:J

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/b;-><init>()V

    iput-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tr:Z

    iput-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tp:Z

    return-void
.end method

.method static synthetic UF(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tp:Z

    return v0
.end method

.method static synthetic UG(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->mId:J

    return-wide v0
.end method

.method static synthetic UH(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tq:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic UI(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Ts:Z

    return v0
.end method

.method static synthetic UJ(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tt:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic UK(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic UL(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tw:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic UM(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tx:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic UN(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Ty:I

    return v0
.end method

.method static synthetic UO(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tz:I

    return v0
.end method

.method static synthetic UP(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->TA:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    return-object v0
.end method

.method static synthetic UQ(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tp:Z

    return p1
.end method

.method static synthetic UR(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tt:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tx:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const-wide/16 v10, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/activity/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030097

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tq:Landroid/view/inputmethod/InputMethodManager;

    const-string/jumbo v0, "id_edit_blacklist"

    invoke-virtual {v1, v0, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->mId:J

    sget-object v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->SIM_ID:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Ty:I

    const-string/jumbo v0, "is_black"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iget-wide v8, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->mId:J

    cmp-long v0, v8, v10

    if-eqz v0, :cond_5

    const-string/jumbo v0, "number_edit_blacklist"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tv:Ljava/lang/String;

    const-string/jumbo v0, "state_edit_blacklist"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->mState:I

    const-string/jumbo v0, "sync_edit_blacklist"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tz:I

    const-string/jumbo v0, "note_edit_blacklist"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tu:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tv:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tv:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_4

    iput-boolean v3, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Ts:Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->TA:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->TA:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;->Wt()Landroid/widget/Button;

    move-result-object v1

    iget-wide v8, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->mId:J

    cmp-long v0, v8, v10

    if-eqz v0, :cond_6

    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->TA:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;->Wt()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/activity/Z;

    invoke-direct {v1, p0, v7}, Lcom/miui/antispam/ui/activity/Z;-><init>(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->TA:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;->Wu()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/activity/aa;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/aa;-><init>(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->TA:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v7, :cond_8

    iget-wide v8, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->mId:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_7

    const v0, 0x7f070090

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Lmiui/app/ActionBar;->setDisplayOptions(II)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->TA:Lcom/miui/antispam/ui/view/AntiSpamEditorTitleView;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const v0, 0x7f0a00bd

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tw:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tw:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Ts:Z

    if-eqz v0, :cond_a

    const v0, 0x7f070089

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tw:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/antispam/ui/activity/ab;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/ab;-><init>(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a01d8

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tt:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tt:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tt:Landroid/widget/CheckBox;

    if-eqz v7, :cond_b

    const v0, 0x7f07008e

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tt:Landroid/widget/CheckBox;

    new-instance v1, Lcom/miui/antispam/ui/activity/ac;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/ac;-><init>(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a01d9

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tx:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tx:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tx:Landroid/widget/CheckBox;

    if-eqz v7, :cond_c

    const v0, 0x7f07008f

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tx:Landroid/widget/CheckBox;

    new-instance v1, Lcom/miui/antispam/ui/activity/ad;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/ad;-><init>(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a00b0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a00b9

    invoke-virtual {p0, v1}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a01d7

    invoke-virtual {p0, v2}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v7, :cond_f

    iget-boolean v5, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tr:Z

    if-eqz v5, :cond_d

    const v5, 0x7f070098

    move v6, v5

    :goto_6
    if-eqz v7, :cond_13

    iget-boolean v5, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Ts:Z

    if-eqz v5, :cond_12

    const v5, 0x7f070037

    invoke-virtual {p0, v5}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_7
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tu:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->mId:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->mState:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tx:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    iget v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tt:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tr:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tw:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tw:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/antispam/ui/activity/ae;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/ae;-><init>(Lcom/miui/antispam/ui/activity/AddPhoneListActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tv:Ljava/lang/String;

    const-string/jumbo v1, "***"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tr:Z

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->RF:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Ts:Z

    goto/16 :goto_0

    :cond_6
    move v0, v4

    goto/16 :goto_1

    :cond_7
    const v0, 0x7f070091

    goto/16 :goto_2

    :cond_8
    iget-wide v8, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->mId:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_9

    const v0, 0x7f070092

    goto/16 :goto_2

    :cond_9
    const v0, 0x7f070093

    goto/16 :goto_2

    :cond_a
    const v0, 0x7f070088

    goto/16 :goto_3

    :cond_b
    const v0, 0x7f07008a

    goto/16 :goto_4

    :cond_c
    const v0, 0x7f07008b

    goto/16 :goto_5

    :cond_d
    iget-boolean v5, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Ts:Z

    if-eqz v5, :cond_e

    const v5, 0x7f070094

    move v6, v5

    goto/16 :goto_6

    :cond_e
    const v5, 0x7f070095

    move v6, v5

    goto/16 :goto_6

    :cond_f
    iget-boolean v5, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tr:Z

    if-eqz v5, :cond_10

    const v5, 0x7f070099

    move v6, v5

    goto/16 :goto_6

    :cond_10
    iget-boolean v5, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Ts:Z

    if-eqz v5, :cond_11

    const v5, 0x7f070096

    move v6, v5

    goto/16 :goto_6

    :cond_11
    const v5, 0x7f070097

    move v6, v5

    goto/16 :goto_6

    :cond_12
    const-string/jumbo v5, ""

    goto/16 :goto_7

    :cond_13
    iget-boolean v5, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Ts:Z

    if-eqz v5, :cond_14

    const v5, 0x7f070038

    invoke-virtual {p0, v5}, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    :cond_14
    const-string/jumbo v5, ""

    goto/16 :goto_7

    :cond_15
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tv:Ljava/lang/String;

    const-string/jumbo v1, "*"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tw:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;->Tw:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_8
.end method
