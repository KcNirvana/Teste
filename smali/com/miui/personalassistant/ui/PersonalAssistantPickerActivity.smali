.class public Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "PersonalAssistantPickerActivity.java"


# static fields
.field private static final REQUEST_CHECK_PERMISSION_CODE:I = 0x2

.field private static final REQUEST_LOGIN_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "YellowPagePickerActivity"

.field private static TARGET_FRAGMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mActionBar:Landroid/app/ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->TARGET_FRAGMENTS:Ljava/util/Map;

    sget-object v0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->TARGET_FRAGMENTS:Ljava/util/Map;

    const-string/jumbo v1, "TARGET_CITY"

    const-string/jumbo v2, "CityPickerFragment"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private resolveTargetTag(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v1, "picker_target"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->TARGET_FRAGMENTS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method protected hasCustomContentView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected initActionBar()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x1b0b00a2

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected newFragmentByTag(Ljava/lang/String;)Lcom/miui/personalassistant/ui/BaseFragment;
    .locals 1

    const-string/jumbo v0, "CityPickerFragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;

    invoke-direct {v0}, Lcom/miui/personalassistant/ui/fragment/CityPickerFragment;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/personalassistant/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->hasCustomContentView()Z

    move-result v4

    if-nez v4, :cond_0

    const v4, 0x1b04002c

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->setContentView(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->initActionBar()V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->resolveTargetTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b002f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "picker_title"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->showFragment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Lcom/miui/personalassistant/ui/BaseFragment;

    :cond_1
    return-void
.end method

.method public showFragment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Lcom/miui/personalassistant/ui/BaseFragment;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/ui/BaseFragment;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/PersonalAssistantPickerActivity;->newFragmentByTag(Ljava/lang/String;)Lcom/miui/personalassistant/ui/BaseFragment;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Lcom/miui/personalassistant/ui/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    const v3, 0x1b0900a3

    invoke-virtual {v2, v3, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    if-eqz p4, :cond_2

    invoke-virtual {v2, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_2
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method
