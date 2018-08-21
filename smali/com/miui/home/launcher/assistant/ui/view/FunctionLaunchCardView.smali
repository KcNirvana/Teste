.class public Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "FunctionLaunchCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;
    }
.end annotation


# static fields
.field private static final ACTION_INTENT_CONTENT:Ljava/lang/String; = "content"

.field private static final ACTION_INTENT_DUAL:Ljava/lang/String; = "dual"

.field private static final ACTION_INTENT_KEY:Ljava/lang/String; = "packageName"

.field private static final ACTION_INTENT_TITLE:Ljava/lang/String; = "title"

.field private static final ACTION_LAUNCH_ACTIVITY:Ljava/lang/String; = "com.miui.personalassistant.LaunchActivity"

.field private static final APP_NAME_MAX_LENGTH:I = 0xa

.field private static final APP_NAME_SUB_SIZE:I = 0x4

.field private static final ICON_COUNT_DOUBLE:I = 0xa

.field private static final ICON_COUNT_SINGLE:I = 0x5

.field private static final INSTALL_ALPHA:F = 1.0f

.field private static final INTENT_ACTION_DIALOG:Ljava/lang/String; = "com.miui.personalassistant.QUICKSTART_DIALOG"

.field private static final TAG:Ljava/lang/String; = "FunctionLaunchCardView"

.field private static final UNINSTALL_ALPHA:F = 0.3f

.field public static final VIEW_TYPE:Ljava/lang/String; = "FunctionLaunchView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private mIconClickListener:Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick$IconClickListener;

.field private mImageStorageAppIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mImageStorageItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mLlContainer1:Landroid/widget/LinearLayout;

.field private mLlContainer2:Landroid/widget/LinearLayout;

.field private mUpdateLisener:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$IUpdateLisener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mIconClickListener:Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick$IconClickListener;

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$6;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$6;-><init>(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mUpdateLisener:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$IUpdateLisener;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mImageStorageItems:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mImageStorageAppIcons:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mUpdateLisener:Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$IUpdateLisener;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver;->setUpdateListener(Lcom/miui/home/launcher/assistant/module/receiver/PackageInstallReceiver$IUpdateLisener;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mIconClickListener:Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick$IconClickListener;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick;->setClickListener(Lcom/miui/home/launcher/assistant/interfaces/LaunchIconClick$IconClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;Ljava/util/ArrayList;I)Lcom/miui/personalassistant/model/FunctionLaunch;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getItem(Ljava/util/ArrayList;I)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;Lcom/miui/personalassistant/model/FunctionLaunch;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->clickItem(Lcom/miui/personalassistant/model/FunctionLaunch;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->addMoreLaunch(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->doAlipaySdkAction()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->updateView(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mImageStorageItems:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mImageStorageAppIcons:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->reloadFunctionItem()V

    return-void
.end method

.method private addMoreIconToContainer(I)V
    .locals 2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getViewFromContainer(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->bindMoreOrEmptyBtnEntry(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method private addMoreLaunch(I)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "card_item_click_function_launch"

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "FunctionLaunchView"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b0233

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "com.miui.personalassistant.LaunchActivity"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "hasLightBgForClock"

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getLightBgForClock()Z

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private bindDataToView(Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/view/View;I)V
    .locals 11

    const-string/jumbo v8, "FunctionLaunchCardView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bindDataToView functionPos="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\titem="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;

    invoke-direct {v1, p0, p2}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;-><init>(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v8, v1, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mIcon:Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->setTag(Ljava/lang/Object;)V

    const-string/jumbo v8, "131"

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "132"

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_1
    iget-object v8, v1, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mIcon:Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->setVisibility(I)V

    iget-object v8, v1, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mClearButton:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v8, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, p1, p2, p3}, Lcom/miui/home/launcher/assistant/ui/widget/GadgetClearView;-><init>(Landroid/content/Context;Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/view/View;I)V

    :goto_1
    iget-object v8, v1, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mItem:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$2;

    invoke-direct {v9, p0, v3, p1, p3}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;Ljava/lang/String;Lcom/miui/personalassistant/model/FunctionLaunch;I)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getDrawableId()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-gtz v0, :cond_8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/miui/home/launcher/assistant/util/Util;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getName()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual {p1, v5}, Lcom/miui/personalassistant/model/FunctionLaunch;->setName(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1b0b0031

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mImageStorageAppIcons:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/miui/home/launcher/assistant/util/Util;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v2, :cond_3

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_3
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mImageStorageAppIcons:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1b020197

    invoke-static {v8, v9}, Lcom/miui/home/launcher/assistant/util/Util;->getThemeStyleFromId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v2, :cond_5

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_5
    iget-object v8, v1, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mIcon:Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;

    invoke-virtual {v8, v2}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v5}, Lcom/miui/home/launcher/assistant/util/StringUtil;->getStringLength(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0xa

    if-le v8, v9, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_6
    iget-object v8, v1, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mTvFunctionName:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v1, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mTvAppName:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v8}, Lcom/miui/personalassistant/model/FunctionLaunch;->isInstalled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v8, "com.alipay.sdk.formi"

    invoke-static {v8, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/miui/home/launcher/assistant/util/Util;->isKeyguardSecure(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, v1, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mIcon:Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;

    const v9, 0x3e99999a    # 0.3f

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_7
    iget-object v8, v1, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mIcon:Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->setVisibility(I)V

    iget-object v8, v1, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mClearButton:Landroid/widget/FrameLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    if-lez v0, :cond_4

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/home/launcher/assistant/util/StringUtil;->getStringResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/home/launcher/assistant/util/StringUtil;->getStringResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mImageStorageItems:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v9

    invoke-static {v8, v9, v6, v0}, Lcom/miui/home/launcher/assistant/util/ImageUtil;->getLaunchDrawable(Landroid/content/Context;ZLjava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mImageStorageItems:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_9
    iget-object v8, v1, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mIcon:Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->setAlpha(F)V

    goto/16 :goto_0

    :cond_a
    iget-object v8, v1, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mIcon:Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;

    const v9, 0x3e99999a    # 0.3f

    invoke-virtual {v8, v9}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method private clickItem(Lcom/miui/personalassistant/model/FunctionLaunch;I)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_item_click_function_launch"

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "FunctionLaunchView"

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getStatisName(Lcom/miui/personalassistant/model/FunctionLaunch;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "FunctionLaunchCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClickEvent functionPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->setClickEvent(Lcom/miui/personalassistant/model/FunctionLaunch;)V

    goto :goto_0
.end method

.method private doAlipaySdkAction()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/Util;->isKeyguardSecure(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FunctionLaunchCardView"

    const-string/jumbo v1, "isKeyguardSecure false"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/util/Util;->showKeyguardDialog(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "FunctionLaunchCardView"

    const-string/jumbo v1, "isKeyguardSecure true"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v0

    const-string/jumbo v1, "functin_alipay_sdk"

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getItem(Ljava/util/ArrayList;I)Lcom/miui/personalassistant/model/FunctionLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;I)",
            "Lcom/miui/personalassistant/model/FunctionLaunch;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/FunctionLaunch;

    goto :goto_0
.end method

.method private getStatisName(Lcom/miui/personalassistant/model/FunctionLaunch;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo v2, ""

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/util/StringUtil;->getStringResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/util/StringUtil;->getStringResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-\u53cc\u5f00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getViewFromContainer(I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mLlContainer1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mLlContainer2:Landroid/widget/LinearLayout;

    add-int/lit8 v1, p1, -0x5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private reloadFunctionItem()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$5;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$5;-><init>(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setClickEvent(Lcom/miui/personalassistant/model/FunctionLaunch;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "com.alipay.sdk.formi"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->isShowDialog(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$4;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$4;-><init>(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;)V

    invoke-direct {v1, v4, v5}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$OnClickListener;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->doAlipaySdkAction()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v2}, Lcom/miui/home/launcher/assistant/util/Util;->isInstalled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v4

    const-string/jumbo v5, "function_start_app"

    invoke-virtual {v4, v0, v5, v6, v6}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->showDownloadDialog(Lcom/miui/personalassistant/model/FunctionLaunch;Z)V

    goto :goto_0

    :cond_3
    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v4

    const-string/jumbo v5, "function_start_app"

    invoke-virtual {v4, v0, v5, v6, v6}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDownloadDialog(Lcom/miui/personalassistant/model/FunctionLaunch;Z)V
    .locals 9

    const v6, 0x1b0b0204

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getDrawableId()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "packageName"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "dual"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-gtz v0, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "title"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "content"

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    const v5, 0x1b0b0202

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_2
    const-string/jumbo v3, "com.miui.personalassistant.QUICKSTART_DIALOG"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    const v5, 0x1b0b0201

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    if-lez v0, :cond_1

    const-string/jumbo v3, "title"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/personalassistant/model/FunctionLaunch;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/home/launcher/assistant/util/StringUtil;->getStringResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "content"

    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    const v5, 0x1b0b0203

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    const v5, 0x1b0b0200

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method private updateContainerVisible(I)V
    .locals 3

    const-string/jumbo v0, "FunctionLaunchCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateContainerVisible..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mLlContainer2:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mLlContainer2:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateView(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v4, "FunctionLaunchCardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateView...list="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ge v1, v4, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getItem(Ljava/util/ArrayList;I)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v2

    if-nez v2, :cond_4

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->addMoreIconToContainer(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->updateContainerVisible(I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getViewFromContainer(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->bindMoreOrEmptyBtnEntry(ILandroid/view/View;Z)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getViewFromContainer(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    invoke-direct {p0, v2, v3, v1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->bindDataToView(Lcom/miui/personalassistant/model/FunctionLaunch;Landroid/view/View;I)V

    :cond_5
    const/16 v4, 0x9

    if-ne v1, v4, :cond_2

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->updateContainerVisible(I)V

    goto :goto_1
.end method


# virtual methods
.method public bindMoreOrEmptyBtnEntry(ILandroid/view/View;Z)V
    .locals 6

    const/16 v5, 0x8

    const-string/jumbo v2, "FunctionLaunchCardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bindMoreOrEmptyBtnEntry position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\tview="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\tisMore="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;-><init>(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;Landroid/view/View;)V

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mClearButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mTvAppName:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_2

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mIcon:Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mIcon:Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1b0201b1

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/util/Util;->getThemeStyleFromId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mIcon:Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, v0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mTvFunctionName:Landroid/widget/TextView;

    const v3, 0x1b0b0233

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mItem:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$3;

    invoke-direct {v3, p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$3;-><init>(Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mIcon:Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;

    invoke-virtual {v2, v5}, Lcom/miui/home/launcher/assistant/ui/widget/FilterImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView$ViewHolder;->mTvFunctionName:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getItemQuantity()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemSequence()Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mData:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, ""

    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/FunctionLaunch;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getStatisName(Lcom/miui/personalassistant/model/FunctionLaunch;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    const v2, 0x1b090184

    const-string/jumbo v0, "FunctionLaunchCardView"

    const-string/jumbo v1, "onFinishInflate"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    const v0, 0x1b0900d6

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1b0b008a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x1b090181

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mLlContainer1:Landroid/widget/LinearLayout;

    const v0, 0x1b090182

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mLlContainer2:Landroid/widget/LinearLayout;

    sget-boolean v0, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v0, :cond_0

    const v0, 0x1b090180

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1b0200dc

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x1b0202cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x1b0202cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onMenuClick()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.personalassistant.LaunchActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "hasLightBgForClock"

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getLightBgForClock()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public queryItemData()Ljava/lang/Object;
    .locals 3

    const-string/jumbo v0, "FunctionLaunchCardView"

    const-string/jumbo v1, "queryItemData"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;

    move-result-object v0

    const-string/jumbo v1, "function"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/FunctionLaunchItem;->queryItem(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 3

    const-string/jumbo v0, "FunctionLaunchCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshView..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mData:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->mData:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/ui/view/FunctionLaunchCardView;->updateView(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public updateCard(Lcom/miui/home/launcher/assistant/module/CardSource;I)V
    .locals 5

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->isLaunchSettingUpdate()Z

    move-result v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/module/CardSource;->getReLoad()Z

    move-result v0

    const-string/jumbo v2, "FunctionLaunchCardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCard...position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",isLaunchSettingUpdate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",getReLoad="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/assistant/module/CardSource;->setReLoad(Z)V

    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->updateCard(Lcom/miui/home/launcher/assistant/module/CardSource;I)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
