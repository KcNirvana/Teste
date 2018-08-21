.class public Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;
.super Landroid/app/Fragment;
.source "FavSettingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private MyOnClickListener:Landroid/view/View$OnClickListener;

.field private MyOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mAutoFav:Landroid/widget/RelativeLayout;

.field private mSlidingAuthorize:Lmiui/widget/SlidingButton;

.field private mSlidingNotification:Lmiui/widget/SlidingButton;

.field private touchLastMills:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$1;-><init>(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->MyOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$2;-><init>(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->MyOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->touchLastMills:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->touchLastMills:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->mSlidingAuthorize:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->showRemoveAuthorizeDialog()V

    return-void
.end method

.method private showRemoveAuthorizeDialog()V
    .locals 4

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1b0b039a

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1b0b0397

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$5;

    invoke-direct {v2, p0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$5;-><init>(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;)V

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1b0b0399

    new-instance v3, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$4;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$4;-><init>(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1b0b0398

    new-instance v3, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$3;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment$3;-><init>(Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "key_fav_notification"

    invoke-static {v0, v1, p2}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b09022e
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v1, 0x1b04008a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b09022f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->mAutoFav:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->mAutoFav:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->MyOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x1b09022c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->mSlidingAuthorize:Lmiui/widget/SlidingButton;

    const v1, 0x1b09022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->mSlidingNotification:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->mSlidingAuthorize:Lmiui/widget/SlidingButton;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/personalassistant/favorite/sync/MiuiFavoritePrefs;->isFavOpened(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->mSlidingAuthorize:Lmiui/widget/SlidingButton;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->MyOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->mSlidingNotification:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->mSlidingNotification:Lmiui/widget/SlidingButton;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/FavSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "key_fav_notification"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/miui/personalassistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-object v0
.end method
