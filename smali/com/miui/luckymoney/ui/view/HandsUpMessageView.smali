.class public Lcom/miui/luckymoney/ui/view/HandsUpMessageView;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/luckymoney/ui/view/messageview/MessageView;


# instance fields
.field private final configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

.field private final headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

.field private mMessage:Lcom/miui/luckymoney/model/message/AppMessage;

.field private mMessageCount:I


# direct methods
.method static synthetic -get0(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)Lcom/miui/luckymoney/model/config/BaseConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)Lcom/miui/luckymoney/ui/view/HeadsUpView;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)Lcom/miui/luckymoney/model/message/AppMessage;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    return-object v0
.end method

.method public constructor <init>(Lcom/miui/luckymoney/model/config/BaseConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessageCount:I

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    new-instance v0, Lcom/miui/luckymoney/ui/view/HeadsUpView;

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    return-void
.end method

.method private getTitle()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    invoke-interface {v0}, Lcom/miui/luckymoney/model/message/AppMessage;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    invoke-static {v3, v0}, Lcom/miui/luckymoney/utils/StringUtil;->getMaxLengthLimitedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    invoke-interface {v3}, Lcom/miui/luckymoney/model/message/AppMessage;->isGroupMessage()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v3}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    iget v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessageCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const v0, 0x7f07016a

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    invoke-static {v3, v0}, Lcom/miui/luckymoney/utils/StringUtil;->getMaxLengthLimitedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    invoke-interface {v3}, Lcom/miui/luckymoney/model/message/AppMessage;->isBusinessMessage()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v3}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const v0, 0x7f07016c

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v3, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v3}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->context()Landroid/content/Context;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const v0, 0x7f07016b

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showFirstly()V
    .locals 3

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    new-instance v1, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$1;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$1;-><init>(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)V

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->setPositiveClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    new-instance v1, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$2;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$2;-><init>(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)V

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->setNegativeClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    new-instance v1, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$3;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView$3;-><init>(Lcom/miui/luckymoney/ui/view/HandsUpMessageView;)V

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->setSettingsActionListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->show(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V

    return-void
.end method

.method private update()V
    .locals 3

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->update(Lcom/miui/luckymoney/model/config/BaseConfiguration;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->dismiss()V

    return-void
.end method

.method public isAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->headsUpView:Lcom/miui/luckymoney/ui/view/HeadsUpView;

    invoke-virtual {v0}, Lcom/miui/luckymoney/ui/view/HeadsUpView;->isAlive()Z

    move-result v0

    return v0
.end method

.method public show(Lcom/miui/luckymoney/model/message/AppMessage;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessageCount:I

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessage:Lcom/miui/luckymoney/model/message/AppMessage;

    iget v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->mMessageCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->showFirstly()V

    :goto_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->configuration:Lcom/miui/luckymoney/model/config/BaseConfiguration;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/config/BaseConfiguration;->getLuckyMoneyEventKeyPostfix()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordLuckyMoneyNoti(Ljava/lang/String;Z)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/luckymoney/ui/view/HandsUpMessageView;->update()V

    goto :goto_0
.end method
