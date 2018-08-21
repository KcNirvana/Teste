.class public Lcom/ali/user/mobile/register/ui/RegExistUserActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "RegExistUserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ali/user/mobile/register/b/a;


# static fields
.field private static final sTag:Ljava/lang/String; = "Reg_Exist"


# instance fields
.field private mAvatar:Landroid/widget/ImageView;

.field private mDetailWrapper:Landroid/widget/LinearLayout;

.field private mFirstButton:Landroid/widget/Button;

.field private mNameWrapper:Landroid/widget/LinearLayout;

.field private mSecondButton:Landroid/widget/Button;

.field private mTmpState:Lcom/ali/user/mobile/register/a/b;

.field private mValueWrapper:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mTmpState:Lcom/ali/user/mobile/register/a/b;

    return-void
.end method

.method private doLocalJump(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mTmpState:Lcom/ali/user/mobile/register/a/b;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/c/a;->a(Lcom/ali/user/mobile/register/a/b;)V

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/register/c/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fitTop(Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$dimen;->alipay_dp_6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initButtonText(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;)V
    .locals 2

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mFirstButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mFirstButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->ButtonSedMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mSecondButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mSecondButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->ButtonSedMemo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private initButtons()V
    .locals 1

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_exist_its_me:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mFirstButton:Landroid/widget/Button;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_exist_not_me:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mSecondButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mFirstButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->a(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mSecondButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->b(Landroid/widget/Button;)V

    return-void
.end method

.method private initData()V
    .locals 3

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Reg_Exist"

    const-string/jumbo v1, "null action center"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ali/user/mobile/register/c/a;->a()Lcom/ali/user/mobile/register/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;

    if-nez v1, :cond_2

    :cond_1
    const-string/jumbo v0, "Reg_Exist"

    const-string/jumbo v1, "null state"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->initUserAvatar(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;)V

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->initUserInfo(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mDetailWrapper:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->initButtonText(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mDetailWrapper:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private initTitle()V
    .locals 3

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_exist_title:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v1

    iget-object v1, v1, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v1, :cond_0

    const-string/jumbo v0, "Reg_Exist"

    const-string/jumbo v1, "null action center"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/ali/user/mobile/register/c/a;->a()Lcom/ali/user/mobile/register/a/b;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    if-nez v2, :cond_2

    :cond_1
    const-string/jumbo v0, "Reg_Exist"

    const-string/jumbo v1, "null response"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/ali/user/mobile/register/a/b;->a()Lcom/ali/user/mobile/register/Account;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v0, "Reg_Exist"

    const-string/jumbo v1, "null account"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/ali/user/mobile/register/Account;->accountForDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initTmpState()V
    .locals 1

    invoke-static {}, Lcom/ali/user/mobile/register/b;->a()Lcom/ali/user/mobile/register/b;

    move-result-object v0

    iget-object v0, v0, Lcom/ali/user/mobile/register/b;->c:Lcom/ali/user/mobile/register/c/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ali/user/mobile/register/c/a;->a()Lcom/ali/user/mobile/register/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mTmpState:Lcom/ali/user/mobile/register/a/b;

    invoke-static {}, Lcom/ali/user/mobile/register/a/c;->c()V

    goto :goto_0
.end method

.method private initUserAvatar(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;)V
    .locals 4

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->avatar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->setDefaultUserAvatar(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_head:I

    iget-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->avatar:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mAvatar:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/ui/widget/ao;->a(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private initUserDetail()V
    .locals 1

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_user_detail:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mDetailWrapper:Landroid/widget/LinearLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_exist_avatar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mAvatar:Landroid/widget/ImageView;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_exist_name_wrapper:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mNameWrapper:Landroid/widget/LinearLayout;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->reg_exist_value_wrapper:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mValueWrapper:Landroid/widget/LinearLayout;

    return-void
.end method

.method private initUserInfo(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;)Z
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->displayTags:Ljava/util/List;

    if-nez v0, :cond_1

    move v1, v3

    :cond_0
    return v1

    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->displayTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v4, v3

    move v1, v3

    :goto_0
    if-ge v4, v6, :cond_0

    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;->displayTags:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x2

    array-length v8, v7

    if-eq v0, v8, :cond_2

    const-string/jumbo v0, "Reg_Exist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "tag split not 2 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v7, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_view_exist_user_tag:I

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mNameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aget-object v1, v7, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mNameWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget v1, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_view_exist_user_tag:I

    iget-object v8, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mValueWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aget-object v7, v7, v2

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mValueWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz v4, :cond_3

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->fitTop(Landroid/widget/TextView;)V

    invoke-direct {p0, v1}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->fitTop(Landroid/widget/TextView;)V

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private initView()V
    .locals 0

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->initTitle()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->initUserDetail()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->initButtons()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->initWrapper()V

    return-void
.end method

.method private initWrapper()V
    .locals 5

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->scrollview:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/util/ResizeScrollView;

    new-instance v1, Lcom/ali/user/mobile/util/k;

    invoke-direct {v1, v0}, Lcom/ali/user/mobile/util/k;-><init>(Lcom/ali/user/mobile/util/ResizeScrollView;)V

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mNameWrapper:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mSecondButton:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ali/user/mobile/util/k;->a(Landroid/view/View;Landroid/view/View;Z)V

    new-instance v1, Lcom/ali/user/mobile/register/ui/h;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/h;-><init>(Lcom/ali/user/mobile/register/ui/RegExistUserActivity;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/util/ResizeScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setDefaultUserAvatar(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/ExistUserInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mAvatar:Landroid/widget/ImageView;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_head:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public afterDialog()V
    .locals 0

    return-void
.end method

.method public getActivity()Lcom/ali/user/mobile/base/BaseActivity;
    .locals 0

    return-object p0
.end method

.method public handleStateChange(Lcom/ali/user/mobile/register/a/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleVerifySuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->reg_exist_its_me:I

    if-ne v1, v0, :cond_2

    const-string/jumbo v0, "pl"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->doLocalJump(Ljava/lang/String;)V

    const-string/jumbo v0, "UC-ZC-150512-20"

    const-string/jumbo v1, "zcnograblogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->reg_exist_not_me:I

    if-ne v1, v0, :cond_0

    const-string/jumbo v0, "m"

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->doLocalJump(Ljava/lang/String;)V

    const-string/jumbo v0, "UC-ZC-150512-21"

    const-string/jumbo v1, "zcnograbphone"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->alipay_activity_exist_user:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->initView()V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->initData()V

    const-string/jumbo v0, "UC-ZC-161209-03"

    const-string/jumbo v1, "zcnograb"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "RegExistUserActivity"

    const-string/jumbo v2, "login"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/e/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->initTmpState()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onResume()V

    invoke-static {p0}, Lcom/ali/user/mobile/register/b/g;->a(Lcom/ali/user/mobile/register/b/a;)V

    return-void
.end method

.method protected setAppId()V
    .locals 1

    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Lcom/ali/user/mobile/register/a/c;->c()V

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/RegExistUserActivity;->finish()V

    return-void
.end method
