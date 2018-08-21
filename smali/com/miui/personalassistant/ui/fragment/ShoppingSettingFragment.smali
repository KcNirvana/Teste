.class public Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;
.super Landroid/app/Fragment;
.source "ShoppingSettingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private MyOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mAuthorize:Lmiui/widget/SlidingButton;

.field private mJingdongButton:Lmiui/widget/SlidingButton;

.field private mMiShopButton:Lmiui/widget/SlidingButton;

.field private mNotify:Lmiui/widget/SlidingButton;

.field private mTaobaoButton:Lmiui/widget/SlidingButton;

.field private mTmallButton:Lmiui/widget/SlidingButton;

.field private touchLastMills:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$1;-><init>(Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->MyOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->touchLastMills:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->touchLastMills:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mAuthorize:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->showRemoveAuthorizeDialog()V

    return-void
.end method

.method private showRemoveAuthorizeDialog()V
    .locals 6

    new-instance v4, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$2;

    invoke-direct {v4, p0}, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$2;-><init>(Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;)V

    invoke-static {v4}, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->wrap(Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/personalassistant/ui/widget/DetachClickListener;

    move-result-object v3

    new-instance v4, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$3;

    invoke-direct {v4, p0}, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$3;-><init>(Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;)V

    invoke-static {v4}, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->wrap(Landroid/content/DialogInterface$OnClickListener;)Lcom/miui/personalassistant/ui/widget/DetachClickListener;

    move-result-object v2

    new-instance v4, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$4;

    invoke-direct {v4, p0}, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment$4;-><init>(Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;)V

    invoke-static {v4}, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->wrap(Landroid/content/DialogInterface$OnCancelListener;)Lcom/miui/personalassistant/ui/widget/DetachClickListener;

    move-result-object v0

    new-instance v4, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1b0b039a

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1b0b03cf

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1b0b0399

    invoke-virtual {v4, v5, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1b0b0398

    invoke-virtual {v4, v5, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V

    invoke-virtual {v3, v1}, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->clearOnDetach(Landroid/app/Dialog;)V

    invoke-virtual {v2, v1}, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->clearOnDetach(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/ui/widget/DetachClickListener;->clearOnDetach(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo v1, "key_shopping_notify"

    invoke-static {v0, v1, p2}, Lcom/miui/personalassistant/util/PrefUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "key_shopping_taobao"

    invoke-static {v0, v1, p2}, Lcom/miui/personalassistant/util/PrefUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "key_shopping_tmall"

    invoke-static {v0, v1, p2}, Lcom/miui/personalassistant/util/PrefUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_4
    const-string/jumbo v1, "key_shopping_jingdong"

    invoke-static {v0, v1, p2}, Lcom/miui/personalassistant/util/PrefUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_5
    const-string/jumbo v1, "key_shopping_mishop"

    invoke-static {v0, v1, p2}, Lcom/miui/personalassistant/util/PrefUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b090393
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const v2, 0x1b040108

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x1b09017f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/SlidingButton;

    iput-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mAuthorize:Lmiui/widget/SlidingButton;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mAuthorize:Lmiui/widget/SlidingButton;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->MyOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v2, 0x1b090393

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/SlidingButton;

    iput-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mNotify:Lmiui/widget/SlidingButton;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mNotify:Lmiui/widget/SlidingButton;

    invoke-virtual {v2, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v2, 0x1b090395

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/SlidingButton;

    iput-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mTaobaoButton:Lmiui/widget/SlidingButton;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mTaobaoButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v2, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v2, 0x1b090397

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/SlidingButton;

    iput-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mTmallButton:Lmiui/widget/SlidingButton;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mTmallButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v2, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v2, 0x1b090399

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/SlidingButton;

    iput-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mJingdongButton:Lmiui/widget/SlidingButton;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mJingdongButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v2, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v2, 0x1b09039b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/SlidingButton;

    iput-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mMiShopButton:Lmiui/widget/SlidingButton;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mMiShopButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v2, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mAuthorize:Lmiui/widget/SlidingButton;

    const-string/jumbo v3, "key_shopping_authorize"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mNotify:Lmiui/widget/SlidingButton;

    const-string/jumbo v3, "key_shopping_notify"

    invoke-static {v0, v3, v5}, Lcom/miui/personalassistant/util/PrefUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mTaobaoButton:Lmiui/widget/SlidingButton;

    const-string/jumbo v3, "key_shopping_taobao"

    invoke-static {v0, v3, v5}, Lcom/miui/personalassistant/util/PrefUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mTmallButton:Lmiui/widget/SlidingButton;

    const-string/jumbo v3, "key_shopping_tmall"

    invoke-static {v0, v3, v5}, Lcom/miui/personalassistant/util/PrefUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mJingdongButton:Lmiui/widget/SlidingButton;

    const-string/jumbo v3, "key_shopping_jingdong"

    invoke-static {v0, v3, v5}, Lcom/miui/personalassistant/util/PrefUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/ShoppingSettingFragment;->mMiShopButton:Lmiui/widget/SlidingButton;

    const-string/jumbo v3, "key_shopping_mishop"

    invoke-static {v0, v3, v5}, Lcom/miui/personalassistant/util/PrefUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    :cond_0
    return-object v1
.end method
