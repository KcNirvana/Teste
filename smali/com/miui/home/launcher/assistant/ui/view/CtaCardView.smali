.class public Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "CtaCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static EXPIRY_TIME:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "WelcomeCardView"

.field private static URL_WELCOME:Ljava/lang/String; = null

.field public static final VIEW_TYPE:Ljava/lang/String; = "WelcomeView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "https://api.assistant.miui.com/guide/quickcardV2?appVersion="

    sput-object v0, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->URL_WELCOME:Ljava/lang/String;

    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->EXPIRY_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->mStamp:J

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->URL_WELCOME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "com.miui.personalassistant"

    invoke-static {p1, v1}, Lcom/miui/home/launcher/assistant/util/Util;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->URL_WELCOME:Ljava/lang/String;

    return-void
.end method

.method private closeWelcomeCard()V
    .locals 3

    const-string/jumbo v0, "WelcomeCardView"

    const-string/jumbo v1, "closeWelcomeCard"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "key_welcome"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/CardStatusUtil;->setCardStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->refreshListView()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->closeWelcomeCard()V

    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->URL_WELCOME:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b09013b
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    const v2, 0x1b09013c

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x1b09013b

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v2, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v2, :cond_0

    const v2, 0x1b0900b4

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x1b020316

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v2, 0x1b0202eb

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v2, 0x1b0202ec

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public onLeaveMinus()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->mStamp:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->EXPIRY_TIME:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->closeWelcomeCard()V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->mStamp:J

    return-void
.end method

.method public updateCard(Lcom/miui/home/launcher/assistant/module/CardSource;I)V
    .locals 4

    iget-wide v0, p0, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->mStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/assistant/ui/view/CtaCardView;->mStamp:J

    :cond_0
    return-void
.end method
