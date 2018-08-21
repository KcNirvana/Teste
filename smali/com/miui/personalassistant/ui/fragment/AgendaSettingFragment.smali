.class public Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;
.super Landroid/app/Fragment;
.source "AgendaSettingFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field public static final KEY_BIRTHDAY_REMIND:Ljava/lang/String; = "key_birthday_remind"

.field public static final KEY_CREDIT_REMIND:Ljava/lang/String; = "key_credit_remind"

.field public static final KEY_ELECBILL_REMIND:Ljava/lang/String; = "key_elecbill_remind"

.field public static final KEY_LOAN_REMIND:Ljava/lang/String; = "key_loan_remind"


# instance fields
.field private actionCheck:Z

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mCreditRemind:Lmiui/widget/SlidingButton;

.field private mElecbillRemind:Lmiui/widget/SlidingButton;

.field private mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLoanRemind:Lmiui/widget/SlidingButton;

.field private mbirthdayRemind:Lmiui/widget/SlidingButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$1;-><init>(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment$2;-><init>(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->actionCheck:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mbirthdayRemind:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mCreditRemind:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mLoanRemind:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mElecbillRemind:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method private initData()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mbirthdayRemind:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_birthday_remind"

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mCreditRemind:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_credit_remind"

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mLoanRemind:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_loan_remind"

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mElecbillRemind:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "key_elecbill_remind"

    invoke-static {v1, v2, v3}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iput-boolean v3, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->actionCheck:Z

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x1b09002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b090030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b090032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b090034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b090036

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b090031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mbirthdayRemind:Lmiui/widget/SlidingButton;

    const v0, 0x1b090033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mCreditRemind:Lmiui/widget/SlidingButton;

    const v0, 0x1b090035

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mLoanRemind:Lmiui/widget/SlidingButton;

    const v0, 0x1b090037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mElecbillRemind:Lmiui/widget/SlidingButton;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mbirthdayRemind:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mCreditRemind:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mLoanRemind:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mElecbillRemind:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->initData()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x1b040003

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->initView(Landroid/view/View;)V

    return-object v0
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AgendaSettingFragment;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.personalassistant.AGENDA_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method
