.class public Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;
.super Landroid/app/Fragment;
.source "AlipayCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final MAX_BRIGHTNESS_PERCENT:F = 0.85f

.field private static final TAG:Ljava/lang/String; = "AlipayCodeFragment"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIvBarCode:Landroid/widget/ImageView;

.field private mIvIcon:Landroid/widget/ImageView;

.field private mIvQRCode:Landroid/widget/ImageView;

.field private mPayCode:Ljava/lang/String;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mSystemBrightness:I

.field private mTvCodeNum:Landroid/widget/TextView;

.field private mTvName:Landroid/widget/TextView;

.field private mTvPhone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mSystemBrightness:I

    new-instance v0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$3;-><init>(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->dismissPopWindow()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->showAlipayLogoutDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dismissPopWindow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/util/ImageUtil;->initImageLoader(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/personalassistant/util/BrightnessUtil;->getScreenBrightness(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mSystemBrightness:I

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xd8

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/BrightnessUtil;->setScreenBrightness(Landroid/view/Window;I)V

    return-void
.end method

.method private showAlipayLogoutDialog()V
    .locals 4

    new-instance v1, Lmiui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1b0b0243

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1b0b0245

    invoke-virtual {v1, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1b0b0398

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1b0b0246

    new-instance v3, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$2;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$2;-><init>(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)V

    invoke-virtual {v1, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method private showSettingPopupWindow(Landroid/view/View;)V
    .locals 8

    const/4 v7, -0x2

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->dismissPopWindow()V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x1b0400fc

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x1b090381

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v1, 0x1b0b0243

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    new-instance v3, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$1;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment$1;-><init>(Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v0, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b020144

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method

.method private updateUI()V
    .locals 9

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/personalassistant/model/AlipayUserInfo;->readUserInfo(Landroid/content/Context;)Lcom/miui/personalassistant/model/AlipayUserInfo;

    move-result-object v3

    const-string/jumbo v4, "AlipayCodeFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, v3, Lcom/miui/personalassistant/model/AlipayUserInfo;->userIconUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mIvIcon:Landroid/widget/ImageView;

    invoke-static {v4, v5}, Lcom/miui/personalassistant/util/ImageUtil;->diplay(Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mTvName:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/miui/personalassistant/model/AlipayUserInfo;->userNickName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mTvPhone:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/miui/personalassistant/model/AlipayUserInfo;->userPhone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "key_alipay_paycode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPayCode:Ljava/lang/String;

    const-string/jumbo v4, "AlipayCodeFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPayCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPayCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",from bundle"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPayCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "key_alipay_paycode"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Lcom/miui/personalassistant/util/Preference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPayCode:Ljava/lang/String;

    const-string/jumbo v4, "AlipayCodeFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mPayCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPayCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",from Preference"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPayCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mTvCodeNum:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPayCode:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ****** "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x1b0b002a

    invoke-virtual {p0, v6}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPayCode:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/personalassistant/util/AlipayEncodingHandlerUtil;->createQrCodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string/jumbo v4, "AlipayCodeFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "qrCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mIvQRCode:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPayCode:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/personalassistant/util/AlipayEncodingHandlerUtil;->createBarCode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string/jumbo v4, "AlipayCodeFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "barCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mIvBarCode:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "AlipayCodeFragment"

    const-string/jumbo v5, "Exception"

    invoke-static {v4, v5, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mTvCodeNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mPayCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->showSettingPopupWindow(Landroid/view/View;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b090277 -> :sswitch_1
        0x1b09027c -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string/jumbo v1, "AlipayCodeFragment"

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x1b0400a1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b090278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mIvIcon:Landroid/widget/ImageView;

    const v1, 0x1b090279

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mTvName:Landroid/widget/TextView;

    const v1, 0x1b09027a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mTvPhone:Landroid/widget/TextView;

    const v1, 0x1b09027b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mIvBarCode:Landroid/widget/ImageView;

    const v1, 0x1b09027c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mTvCodeNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mTvCodeNum:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x1b09027d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mIvQRCode:Landroid/widget/ImageView;

    const v1, 0x1b090277

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->init()V

    return-object v0
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "AlipayCodeFragment"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->mSystemBrightness:I

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/BrightnessUtil;->setScreenBrightness(Landroid/view/Window;I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string/jumbo v0, "AlipayCodeFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodeFragment;->updateUI()V

    return-void
.end method
