.class public Lcom/miui/networkassistant/ui/activity/FirewallActivity;
.super Lcom/miui/common/a/a/h;
.source ""


# static fields
.field private static final synthetic ta:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/a/h;-><init>()V

    return-void
.end method

.method private static synthetic uW()[I
    .locals 3

    sget-object v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity;->ta:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity;->ta:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->values()[Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->MobileAppControl:Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->WlanAppControl:Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity;->ta:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected getFragmentTabInfo(I)Lcom/miui/common/a/a/i;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/networkassistant/ui/activity/FirewallActivity;->uW()[I

    move-result-object v0

    invoke-static {p1}, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->parse(I)Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-object v2

    :pswitch_0
    new-instance v0, Lcom/miui/common/a/a/i;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/MobileFirewallFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/common/a/a/i;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/miui/common/a/a/i;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/WlanFirewallFragment;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/common/a/a/i;-><init>(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getTabCount()I
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->values()[Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method protected getTabText(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/ui/activity/FirewallActivity;->uW()[I

    move-result-object v0

    invoke-static {p1}, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->parse(I)Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/activity/FirewallActivity$TabCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const v0, 0x7f070213

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/FirewallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const v0, 0x7f070214

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/FirewallActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/a/a/h;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/activity/FirewallActivity$1;-><init>(Lcom/miui/networkassistant/ui/activity/FirewallActivity;)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/activity/FirewallActivity;->postOnIdleUiThread(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/FirewallActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onCustomizeActionBar(Lmiui/app/ActionBar;)V
    .locals 4

    const/4 v3, -0x2

    const/16 v0, 0x1c

    invoke-virtual {p1, v0}, Lmiui/app/ActionBar;->setDisplayOptions(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v1, Lmiui/R$drawable;->action_mode_immersion_more_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/activity/FirewallActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070359

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/miui/networkassistant/ui/activity/FirewallActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/activity/FirewallActivity$2;-><init>(Lcom/miui/networkassistant/ui/activity/FirewallActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const v2, 0x800015

    invoke-direct {v1, v3, v3, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0, v1}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/FirewallActivity;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/BgNetworkAppListFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/FirewallActivity;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/activity/FirewallActivity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f0a0429 -> :sswitch_1
        0x7f0a042a -> :sswitch_0
    .end sparse-switch
.end method
