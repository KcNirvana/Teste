.class public Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;
.super Landroid/widget/RelativeLayout;
.source "ExpressItemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpressItemCardView"

.field public static final VIEW_TYPE:Ljava/lang/String; = "ExpressItemCardView"

.field public static sTitleLen:I

.field public static sTitleNum:I


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDesc:Landroid/widget/TextView;

.field private mDivider:Landroid/view/View;

.field private mNum:Landroid/widget/TextView;

.field private mPickupCode:Landroid/widget/TextView;

.field private mPickupTitle:Landroid/widget/TextView;

.field private mStatus:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private doMistat(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.cainiao.wireless"

    invoke-static {v1, v2}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "_app"

    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "card_button_click_express"

    const-string/jumbo v3, "2"

    const-string/jumbo v4, "ExpressItemCardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "_download"

    goto :goto_1
.end method

.method private getPickupCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "content://personal_assistant/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string/jumbo v4, "express_pickup_code"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p1, v5}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    const-string/jumbo v4, "ExpressItemCardView"

    const-string/jumbo v5, "IllegalStateException"

    invoke-static {v4, v5, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    const-string/jumbo v4, "ExpressItemCardView"

    const-string/jumbo v5, "RemoteException"

    invoke-static {v4, v5, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    const-string/jumbo v4, "ExpressItemCardView"

    const-string/jumbo v5, "IllegalStateException"

    invoke-static {v4, v5, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v4

    :catch_3
    move-exception v2

    const-string/jumbo v5, "ExpressItemCardView"

    const-string/jumbo v6, "IllegalStateException"

    invoke-static {v5, v6, v2}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private initExtraView(Lcom/miui/personalassistant/express/bean/ExpressEntry;)V
    .locals 13

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->isOpenLocker()Z

    move-result v5

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->isSchedule()Z

    move-result v7

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->isPickupCode()Z

    move-result v0

    new-instance v1, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;-><init>(Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyCode()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;->orderCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;->orderNum:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getPhone()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;->phoneNum:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "key_express_open_gui"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "pref_express_pickup_code"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/miui/home/launcher/assistant/util/Preference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "com.cainiao.wireless"

    invoke-static {v8, v9}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v7, :cond_3

    if-nez v5, :cond_3

    if-nez v2, :cond_1

    if-eqz v4, :cond_3

    :cond_1
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mButton:Landroid/widget/Button;

    const v9, 0x1b0b0115

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    const-string/jumbo v8, "pref_express_pickup_code"

    iput-object v8, v1, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;->expType:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mPickupTitle:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mPickupCode:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mDivider:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mNum:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/16 v10, 0x14

    const/4 v11, 0x0

    const/16 v12, 0x1e

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->getPickupCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mPickupTitle:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mPickupCode:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mPickupCode:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mButton:Landroid/widget/Button;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getVisibility()I

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mPickupCode:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/16 v10, 0x14

    const/4 v11, 0x0

    const/16 v12, 0x1e

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mButton:Landroid/widget/Button;

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mButton:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v5, :cond_5

    if-nez v7, :cond_5

    if-nez v3, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mButton:Landroid/widget/Button;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mButton:Landroid/widget/Button;

    const v9, 0x1b0b0169

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    const-string/jumbo v8, "key_express_open_gui"

    iput-object v8, v1, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;->expType:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mDivider:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mNum:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/16 v10, 0x14

    const/4 v11, 0x0

    const/16 v12, 0x1e

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mButton:Landroid/widget/Button;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mPickupTitle:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mPickupCode:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mDivider:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mNum:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/16 v10, 0x14

    const/4 v11, 0x0

    const/16 v12, 0x50

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_6
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mPickupCode:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/16 v10, 0x14

    const/4 v11, 0x0

    const/16 v12, 0x50

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    :cond_7
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mPickupTitle:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mPickupCode:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private initView(II)V
    .locals 3

    const v2, 0x1b020131

    const/4 v0, 0x0

    add-int/lit8 v1, p2, 0x1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0, v1, v2}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->setLayoutBg(Landroid/view/View;Landroid/content/Context;I)V

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-lt p1, v1, :cond_2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    const v2, 0x1b020134

    invoke-virtual {p0, p0, v1, v2}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->setLayoutBg(Landroid/view/View;Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0, v1, v2}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->setLayoutBg(Landroid/view/View;Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method protected findView(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Landroid/view/View;",
            ">(I)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/miui/home/launcher/assistant/util/Util;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected findView(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TE;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/miui/home/launcher/assistant/util/Util;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;

    iget-object v1, v0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;->expType:Ljava/lang/String;

    const-string/jumbo v2, "pref_express_pickup_code"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;->orderNum:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;->orderCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;->orderNum:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;->orderCode:Ljava/lang/String;

    const-string/jumbo v4, "pref_express_pickup_code"

    invoke-static {v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/util/CainiaoUtil;->gotoScheduleDeliveryPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->doMistat(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;->expType:Ljava/lang/String;

    const-string/jumbo v2, "key_express_open_gui"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;->orderNum:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;->orderNum:Ljava/lang/String;

    iget-object v3, v0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;->orderCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout$ExpHolder;->phoneNum:Ljava/lang/String;

    const-string/jumbo v5, "key_express_open_gui"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miui/home/launcher/assistant/util/CainiaoUtil;->gotoOpenLockerPage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->doMistat(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b090172
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x1b090028

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mStatus:Landroid/widget/TextView;

    const v0, 0x1b09016e

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mDesc:Landroid/widget/TextView;

    const v0, 0x1b09016f

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mNum:Landroid/widget/TextView;

    const v0, 0x1b0900ec

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mTitle:Landroid/widget/TextView;

    const v0, 0x1b090172

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mButton:Landroid/widget/Button;

    const v0, 0x1b0900fd

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->findView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mDivider:Landroid/view/View;

    const v0, 0x1b090170

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mPickupTitle:Landroid/widget/TextView;

    const v0, 0x1b090171

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mPickupCode:Landroid/widget/TextView;

    return-void
.end method

.method protected setLayoutBg(Landroid/view/View;Landroid/content/Context;I)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public updateData(IILcom/miui/personalassistant/express/bean/ExpressEntry;)V
    .locals 15

    invoke-virtual/range {p3 .. p3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getRemark()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getLatestDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getCompanyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getOrderNumber()Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    invoke-virtual/range {p3 .. p3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getLatestTime()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/miui/home/launcher/assistant/util/TimeUtils;->format(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Lcom/miui/personalassistant/express/bean/ExpressState;->valueOf(Lcom/miui/personalassistant/express/bean/ExpressEntry;)Lcom/miui/personalassistant/express/bean/ExpressState;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getSource()Ljava/lang/String;

    move-result-object v8

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->initView(II)V

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->initExtraView(Lcom/miui/personalassistant/express/bean/ExpressEntry;)V

    const/4 v2, 0x0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "com.miui.yellowpage"

    invoke-static {v8, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "null"

    invoke-static {v8, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    invoke-static {v11, v8}, Lcom/miui/home/launcher/assistant/util/Util;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->initView(II)V

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mStatus:Landroid/widget/TextView;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mStatus:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/miui/personalassistant/express/bean/ExpressState;->getDescriptionRes()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->isOnTheWay()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1b0b0161

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mDesc:Landroid/widget/TextView;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mDesc:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mTitle:Landroid/widget/TextView;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_5

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mTitle:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    const-string/jumbo v11, "("

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string/jumbo v11, ")"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1b0d0002

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    sput v11, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->sTitleNum:I

    :goto_1
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "-"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v9, v11, v12

    invoke-static {v11}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/miui/home/launcher/assistant/util/StringUtil;->getStringLength(Ljava/lang/String;)I

    move-result v11

    sget v12, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->sTitleLen:I

    add-int/lit8 v12, v12, 0x1

    if-le v11, v12, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    sget v14, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->sTitleNum:I

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v11, 0x4

    if-le v6, v11, :cond_7

    add-int/lit8 v11, v6, -0x4

    invoke-virtual {v7, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_7
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    sget-object v13, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->EXPRESS_NUMBER_TXT:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    invoke-static {v11}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    sget-object v13, Lcom/miui/home/launcher/assistant/express/ExpressCardView;->EXPRESS_ORIGIN_PREV:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v2, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, " "

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object v7, v11, v12

    invoke-static {v11}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mNum:Landroid/widget/TextView;

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mNum:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    :cond_a
    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mDesc:Landroid/widget/TextView;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mDesc:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1b0d0001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    sput v11, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->sTitleNum:I

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_e
    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mTitle:Landroid/widget/TextView;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/miui/home/launcher/assistant/express/ExpressItemLayout;->mTitle:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method
