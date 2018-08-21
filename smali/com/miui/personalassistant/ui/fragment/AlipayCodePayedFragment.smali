.class public Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;
.super Landroid/app/Fragment;
.source "AlipayCodePayedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final CODE_REQUEST_GET_MONEY:I = 0x2

.field private static final CODE_REQUEST_OPEN_ALIPAY_APP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlipayCodePayedFragment"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIvAd:Landroid/widget/ImageView;

.field private mTvAddress:Landroid/widget/TextView;

.field private mTvDesc:Landroid/widget/TextView;

.field private mTvOpenAlipay:Landroid/widget/TextView;

.field private mTvPrice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->goAlipay(Ljava/lang/String;)V

    return-void
.end method

.method private goAlipay(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    invoke-static {v2, v3}, Lmiui/securityspace/XSpaceUserHandle;->isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/miui/personalassistant/ui/AlipayXspaceResolverActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "key_open_alipay_or_getmoney"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "key_open_alipay_or_getmoney"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "key_action_getmoney"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showPaymentNorification(Lcom/miui/personalassistant/model/AlipayPayResult;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/payment/captor/PaymentRawDesc;

    invoke-direct {v0}, Lcom/miui/payment/captor/PaymentRawDesc;-><init>()V

    iget-object v1, p1, Lcom/miui/personalassistant/model/AlipayPayResult;->realAmount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/PaymentRawDesc;->setAmountNumber(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/miui/personalassistant/model/AlipayPayResult;->shopName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/miui/personalassistant/model/AlipayPayResult;->shopName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/payment/captor/PaymentRawDesc;->setComment(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/payment/PaymentCaptorHelper;->parseInternalAlipayResult(Landroid/content/Context;Lcom/miui/payment/captor/PaymentRawDesc;)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 9

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "AlipayCodePayedFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateUI bundle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string/jumbo v3, "key_pay_result"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/model/AlipayPayResult;

    const-string/jumbo v3, "AlipayCodePayedFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "payResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    const-string/jumbo v3, "AlipayCodePayedFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "payResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mTvPrice:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/miui/personalassistant/model/AlipayPayResult;->realAmount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x1b0b0029

    invoke-virtual {p0, v5}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/miui/personalassistant/model/AlipayPayResult;->osFeeText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/miui/personalassistant/model/AlipayPayResult;->totalDiscAmount:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, ""

    :goto_0
    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mTvDesc:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mTvAddress:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/miui/personalassistant/model/AlipayPayResult;->shopName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.eg.android.AlipayGphone"

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/miui/personalassistant/model/AlipayPayResult;->extGuide:Lcom/miui/personalassistant/model/AlipayPayResult$AlipayExtraMoney;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/miui/personalassistant/model/AlipayPayResult;->extGuide:Lcom/miui/personalassistant/model/AlipayPayResult$AlipayExtraMoney;

    iget-object v3, v3, Lcom/miui/personalassistant/model/AlipayPayResult$AlipayExtraMoney;->guideAction:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mTvOpenAlipay:Landroid/widget/TextView;

    const v4, 0x1b0b0025

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mTvOpenAlipay:Landroid/widget/TextView;

    new-instance v4, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment$1;

    invoke-direct {v4, p0, v2}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment$1;-><init>(Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;Lcom/miui/personalassistant/model/AlipayPayResult;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    invoke-direct {p0, v2}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->showPaymentNorification(Lcom/miui/personalassistant/model/AlipayPayResult;)V

    :cond_0
    return-void

    :cond_1
    const v3, 0x1b0b0026

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/miui/personalassistant/model/AlipayPayResult;->originAmount:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, v2, Lcom/miui/personalassistant/model/AlipayPayResult;->totalDiscAmount:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mTvDesc:Landroid/widget/TextView;

    const v4, 0x1b0b0027

    invoke-virtual {p0, v4}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "N\u5143"

    aput-object v6, v5, v7

    iget-object v6, v2, Lcom/miui/personalassistant/model/AlipayPayResult;->osFeeText:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mTvOpenAlipay:Landroid/widget/TextView;

    const v4, 0x1b0b0024

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mTvOpenAlipay:Landroid/widget/TextView;

    new-instance v4, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment$2;

    invoke-direct {v4, p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment$2;-><init>(Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mTvOpenAlipay:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b090282
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mContext:Landroid/content/Context;

    const v1, 0x1b0400a2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b090281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mIvAd:Landroid/widget/ImageView;

    const v1, 0x1b09027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mTvPrice:Landroid/widget/TextView;

    const v1, 0x1b09027f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mTvDesc:Landroid/widget/TextView;

    const v1, 0x1b090280

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mTvAddress:Landroid/widget/TextView;

    const v1, 0x1b090282

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x1b090283

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->mTvOpenAlipay:Landroid/widget/TextView;

    const-string/jumbo v1, "card_view_alipay_sdk_pay_success"

    invoke-static {v1}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/fragment/AlipayCodePayedFragment;->updateUI()V

    return-object v0
.end method
