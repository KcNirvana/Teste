.class public Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;
.super Lmiui/app/AlertActivity;
.source "AlipayXspaceResolverActivity.java"


# static fields
.field public static final ALIPAY_PACKAGENAME:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field public static final KEY_ACTION_GETMONEY:Ljava/lang/String; = "key_action_getmoney"

.field public static final KEY_OPEN_ALIPAY_OR_GETMONEY:Ljava/lang/String; = "key_open_alipay_or_getmoney"

.field private static final TAG:Ljava/lang/String; = "XspaceResolverActivity"


# instance fields
.field private mActionGetMoney:Ljava/lang/String;

.field private mIsOpenAlipayOrGetMoney:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/AlertActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mIsOpenAlipayOrGetMoney:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mActionGetMoney:Ljava/lang/String;

    new-instance v0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$2;-><init>(Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mIsOpenAlipayOrGetMoney:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mActionGetMoney:Ljava/lang/String;

    return-object v0
.end method

.method private getAppLabel()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/Util;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initData()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "key_open_alipay_or_getmoney"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "key_open_alipay_or_getmoney"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mIsOpenAlipayOrGetMoney:Z

    iget-boolean v1, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mIsOpenAlipayOrGetMoney:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "key_action_getmoney"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mActionGetMoney:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->finish()V

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    invoke-static {p0, v0}, Lmiui/securityspace/XSpaceUserHandle;->isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x1b0b0455

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1b040123

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mRootView:Landroid/view/View;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    new-instance v1, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity$1;-><init>(Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v0, 0x1b0903cd

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->loadItem(IZ)V

    const v0, 0x1b0903ce

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->loadItem(IZ)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->setupAlert()V

    goto :goto_0
.end method

.method private loadItem(IZ)V
    .locals 6

    iget-object v4, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v4, 0x1b09006c

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x1b090392

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMinLines(I)V

    const v4, 0x1b0903ca

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    const/4 v5, 0x0

    invoke-static {p0, p2, v4, v5}, Lcom/miui/personalassistant/util/ImageUtil;->getLaunchDrawable(Landroid/content/Context;ZLjava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->getAppLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->setTheme(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->initData()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;->initView()V

    return-void
.end method
