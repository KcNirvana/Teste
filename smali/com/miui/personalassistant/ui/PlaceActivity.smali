.class public Lcom/miui/personalassistant/ui/PlaceActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "PlaceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.miui.personalassistant.SEARCH"

.field private static final PREFACTION:Ljava/lang/String; = "com.miui.personalassistant.PREFERENCES"

.field private static final REQUEST_HOME_NAME:I = 0x0

.field private static final REQUEST_LOCATION_SETTING:I = 0x2

.field private static final REQUEST_NEXT:I = 0x3

.field private static final REQUEST_SCHOOl_NAME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PlaceActivity"


# instance fields
.field private isFromModule:Z

.field private mHome:Landroid/widget/LinearLayout;

.field private mHomeName:Landroid/widget/TextView;

.field private mHomeString:Ljava/lang/String;

.field private mHomeView:Landroid/widget/TextView;

.field private mNext:Landroid/widget/Button;

.field private mPermissionLocation:Ljava/lang/String;

.field private mSchool:Landroid/widget/LinearLayout;

.field private mSchoolName:Landroid/widget/TextView;

.field private mSchoolString:Ljava/lang/String;

.field private mSchoolView:Landroid/widget/TextView;

.field private mSlidingButton:Lmiui/widget/SlidingButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->isFromModule:Z

    return-void
.end method

.method static synthetic access$001(Lcom/miui/personalassistant/ui/PlaceActivity;)V
    .locals 0

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onBackPressed()V

    return-void
.end method

.method private checkNetworkLocationProviderSetting()V
    .locals 5

    invoke-static {p0}, Lcom/miui/personalassistant/util/Permission;->locationingAllowed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.miui.personalassistant.LOCATION_SETTING"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/miui/personalassistant/ui/PlaceActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "PlaceActivity"

    const-string/jumbo v4, "Activity not found!"

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private goBack()V
    .locals 4

    iget-boolean v1, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->isFromModule:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/PlaceActivity;->isInfoFilled()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PlaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b0391

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PlaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b0390

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/personalassistant/ui/PlaceActivity$2;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/PlaceActivity$2;-><init>(Lcom/miui/personalassistant/ui/PlaceActivity;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PlaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b038f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/personalassistant/ui/PlaceActivity$1;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/PlaceActivity$1;-><init>(Lcom/miui/personalassistant/ui/PlaceActivity;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method private initView()V
    .locals 9

    const v8, 0x1b0902e4

    const v7, 0x1b0902e3

    const v6, 0x1b0902e2

    const/4 v5, 0x0

    const v3, 0x1b090347

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/PlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lmiui/widget/SlidingButton;

    iput-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSlidingButton:Lmiui/widget/SlidingButton;

    const-string/jumbo v3, "assistant"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/miui/personalassistant/util/Preference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v3, v2}, Lmiui/widget/SlidingButton;->setSliderOffset(I)V

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSlidingButton:Lmiui/widget/SlidingButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    :cond_0
    const v3, 0x1b090342

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/PlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mHome:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mHome:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x1b090343

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/PlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSchool:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSchool:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mHome:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mHomeName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSchool:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSchoolName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mHome:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mHomeView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mHomeView:Landroid/widget/TextView;

    const v4, 0x1b0b0227

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/PlaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSchool:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSchoolView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSchoolView:Landroid/widget/TextView;

    const v4, 0x1b0b00ad

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/PlaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mHome:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSchool:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const v3, 0x1b020194

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x1b0202e1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v3, 0x1b090344

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/PlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mNext:Landroid/widget/Button;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mNext:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->isFromModule:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mNext:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mNext:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private isInfoEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mHomeString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSchoolString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInfoFilled()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mHomeString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSchoolString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/personalassistant/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "PlaceActivity"

    const-string/jumbo v1, "Unknown request code!"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v0, :cond_0

    goto :goto_0

    :pswitch_1
    if-ne p2, v0, :cond_0

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onBackPressed()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/PlaceActivity;->goBack()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.miui.personalassistant.PREFERENCES"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/miui/personalassistant/ui/PlaceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/miui/personalassistant/util/Permission;->locationingAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "permission"

    iput-object v2, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mPermissionLocation:Ljava/lang/String;

    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.miui.personalassistant.SEARCH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "title"

    const v3, 0x1b0b03a7

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/PlaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "permission_location"

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mPermissionLocation:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "option"

    const-string/jumbo v3, "option_home"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/miui/personalassistant/ui/PlaceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string/jumbo v2, "Settings"

    const-string/jumbo v3, "settings_set_home_begin"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mPermissionLocation:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    invoke-static {p0}, Lcom/miui/personalassistant/util/Permission;->locationingAllowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "permission"

    iput-object v2, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mPermissionLocation:Ljava/lang/String;

    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.miui.personalassistant.SEARCH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "title"

    const v3, 0x1b0b03b5

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/PlaceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "permission_location"

    iget-object v3, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mPermissionLocation:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "option"

    const-string/jumbo v3, "option_school"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/miui/personalassistant/ui/PlaceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string/jumbo v2, "Settings"

    const-string/jumbo v3, "settings_set_office_begin"

    invoke-static {v2, v3}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mPermissionLocation:Ljava/lang/String;

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1b090342
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1b0400e7

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/PlaceActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/PlaceActivity;->checkNetworkLocationProviderSetting()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/PlaceActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSlidingButton:Lmiui/widget/SlidingButton;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "assistant"

    iget-object v1, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSlidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->getSliderOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/miui/personalassistant/util/Preference;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/PlaceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b034c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/PlaceActivity;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onResume()V

    const-string/jumbo v0, "pick_word_home"

    const-string/jumbo v1, "key_encrypt_assi"

    invoke-static {p0, v0, v2, v1}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mHomeString:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mHomeString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mHomeName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mHomeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string/jumbo v0, "pick_word_school"

    const-string/jumbo v1, "key_encrypt_assi"

    invoke-static {p0, v0, v2, v1}, Lcom/miui/personalassistant/util/PrefUtil;->getDecryptString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSchoolString:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSchoolString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSchoolName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mSchoolString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/PlaceActivity;->mNext:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/PlaceActivity;->isInfoEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
