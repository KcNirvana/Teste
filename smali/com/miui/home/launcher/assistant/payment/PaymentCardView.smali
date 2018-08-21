.class public Lcom/miui/home/launcher/assistant/payment/PaymentCardView;
.super Lcom/miui/home/launcher/assistant/ui/view/BaseView;
.source "PaymentCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PaymentCardView"

.field private static sNoticeDialog:Lmiui/app/AlertDialog;


# instance fields
.field private mAsyncTask:Landroid/os/AsyncTask;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentView:Landroid/view/View;

.field private mContentViewStub:Landroid/view/ViewStub;

.field private mGuideView:Landroid/view/View;

.field private mGuideViewStub:Landroid/view/ViewStub;

.field private mHeaderView:Landroid/view/View;

.field private mNoticeBar:Landroid/view/View;

.field private mPaymentCardContent:Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

.field private mRecordAmountUnitView:Landroid/widget/TextView;

.field private mRecordAmountView:Landroid/widget/TextView;

.field private mRecordCategoryView:Landroid/widget/ImageView;

.field private mRecordCommentView:Landroid/widget/TextView;

.field private mRecordContentView:Landroid/view/View;

.field private mRecordEmptyView:Landroid/view/View;

.field private mRecordMethodView:Landroid/widget/TextView;

.field private mRecordTimeView:Landroid/widget/TextView;

.field private mTotalMonthAmountView:Landroid/widget/TextView;

.field private mTotalTodayAmountView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$1;-><init>(Lcom/miui/home/launcher/assistant/payment/PaymentCardView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$1;-><init>(Lcom/miui/home/launcher/assistant/payment/PaymentCardView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$1;-><init>(Lcom/miui/home/launcher/assistant/payment/PaymentCardView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/payment/PaymentCardView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->enablePaymentAssistant(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/payment/PaymentCardView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mNoticeBar:Landroid/view/View;

    return-object v0
.end method

.method private cancelAsyncTask()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mAsyncTask:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public static dismissDialog()V
    .locals 1

    sget-object v0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->sNoticeDialog:Lmiui/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->sNoticeDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->sNoticeDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private enablePaymentAssistant(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->openPaymentCatcher(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mAsyncTask:Landroid/os/AsyncTask;

    :cond_0
    new-instance v0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$5;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$5;-><init>(Lcom/miui/home/launcher/assistant/payment/PaymentCardView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mAsyncTask:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getAmountString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "0.00"

    :cond_0
    return-object p1
.end method

.method private getCurrencyCodeDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1b0b0333

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSuitableTextSize(Ljava/lang/String;Ljava/lang/String;)F
    .locals 4

    const/16 v3, 0xc

    const/16 v2, 0xa

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0c01c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0c01c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0c01c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0
.end method

.method private hideContentView()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private hideGuideView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mGuideView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mGuideView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initContentView()V
    .locals 4

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentViewStub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentView:Landroid/view/View;

    const v3, 0x1b0901ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentView:Landroid/view/View;

    const v3, 0x1b0901b9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v2, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v2, :cond_2

    const v2, 0x1b0202eb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v2, 0x1b0202ec

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentView:Landroid/view/View;

    const v3, 0x1b0901b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mTotalTodayAmountView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentView:Landroid/view/View;

    const v3, 0x1b0901b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mTotalMonthAmountView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentView:Landroid/view/View;

    const v3, 0x1b0901bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordEmptyView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentView:Landroid/view/View;

    const v3, 0x1b0901bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordContentView:Landroid/view/View;

    const v3, 0x1b0901bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordCategoryView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordContentView:Landroid/view/View;

    const v3, 0x1b0901be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordCommentView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordContentView:Landroid/view/View;

    const v3, 0x1b0901c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordMethodView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordContentView:Landroid/view/View;

    const v3, 0x1b0901bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordAmountView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordContentView:Landroid/view/View;

    const v3, 0x1b0901c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordAmountUnitView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordContentView:Landroid/view/View;

    const v3, 0x1b0901c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordTimeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->isNoticeBarEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentView:Landroid/view/View;

    const v3, 0x1b0901af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mNoticeBar:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mNoticeBar:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mNoticeBar:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mNoticeBar:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private initGuideView()V
    .locals 13

    const/16 v12, 0x21

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mGuideView:Landroid/view/View;

    if-eqz v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mGuideViewStub:Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mGuideView:Landroid/view/View;

    sget-boolean v8, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mGuideView:Landroid/view/View;

    const v9, 0x1b090018

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v9, 0x1b020316

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_1
    iget-object v8, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mGuideView:Landroid/view/View;

    const v9, 0x1b09015a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x1b0200e2

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mGuideView:Landroid/view/View;

    const v9, 0x1b090157

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v8, 0x1b020200

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mGuideView:Landroid/view/View;

    const v9, 0x1b090158

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v8, 0x1b0b02f5

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v8, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mGuideView:Landroid/view/View;

    const v9, 0x1b090159

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1b0b0304

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/text/SpannableString;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x1b0b0305

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/miui/home/launcher/assistant/util/StringUtil;->stringConnect([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x1b0b012f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int v4, v8, v9

    new-instance v8, Landroid/text/style/URLSpan;

    iget-object v9, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/miui/home/launcher/assistant/util/Util;->getGuidePrivacy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v5, v4, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v9, "#80000000"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7, v8, v5, v4, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_0
.end method

.method private openPaymentCatcher(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Payment"

    aput-object v2, v0, v1

    invoke-static {p1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v1

    const-string/jumbo v2, "catcher_switch"

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerReceivers()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->PAYMENT_UPDATE_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private showContentView(Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;)V
    .locals 8

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->hideGuideView()V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->initContentView()V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getTotalToday()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getAmountString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getTotalMonth()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getAmountString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getSuitableTextSize(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mTotalTodayAmountView:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mTotalMonthAmountView:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mTotalTodayAmountView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mTotalMonthAmountView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getNewestItemAmount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordContentView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordEmptyView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordContentView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordEmptyView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getNewestItemCategoryIcon()[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v5, v0

    if-nez v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordCategoryView:Landroid/widget/ImageView;

    const v6, 0x1b020294

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordCommentView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getNewestItemComment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordMethodView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getNewestItemMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordAmountView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getNewestItemAmount()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getAmountString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordAmountUnitView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getNewestItemCurrencyCode()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getCurrencyCodeDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordTimeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->getNewestItemHumanTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mRecordCategoryView:Landroid/widget/ImageView;

    array-length v6, v0

    invoke-static {v0, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private showGuideView()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->hideContentView()V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->initGuideView()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mGuideView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showNoticeDialog(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1b0b0303

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1b0b0300

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1b0b0302

    new-instance v2, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$4;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$4;-><init>(Lcom/miui/home/launcher/assistant/payment/PaymentCardView;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$3;-><init>(Lcom/miui/home/launcher/assistant/payment/PaymentCardView;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->sNoticeDialog:Lmiui/app/AlertDialog;

    invoke-static {p1, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->setNoticeBarEnabled(Landroid/content/Context;Z)V

    const-string/jumbo v0, "com.tencent.mm"

    invoke-static {p1, v0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->setSourceEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private unregisterReceivers()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "PaymentCardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->PAYMENT_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public isItemAuthorized()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mPaymentCardContent:Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mPaymentCardContent:Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isItemContentEmpty()Z
    .locals 2

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mPaymentCardContent:Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mPaymentCardContent:Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mTotalTodayAmountView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mTotalTodayAmountView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mTotalTodayAmountView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "0.00"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    const-string/jumbo v0, "PaymentCardView"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->registerReceivers()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->isShowDialog(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;

    new-instance v3, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$2;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView$2;-><init>(Lcom/miui/home/launcher/assistant/payment/PaymentCardView;)V

    invoke-direct {v1, v0, v3}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/assistant/ui/widget/CTADialog$OnClickListener;)V

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/ui/widget/CTADialog;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->enablePaymentAssistant(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "card_button_click_payment"

    const-string/jumbo v5, "12"

    const-string/jumbo v6, "PaymentCardView"

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1b0b0323

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->startPaymentAddActivity(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    invoke-static {v0}, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->startPaymentMainActivity(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "card_button_click_payment"

    const-string/jumbo v5, "12"

    const-string/jumbo v6, "PaymentCardView"

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1b0b0327

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->showNoticeDialog(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1b09015a -> :sswitch_0
        0x1b0901af -> :sswitch_3
        0x1b0901b9 -> :sswitch_2
        0x1b0901ba -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string/jumbo v0, "PaymentCardView"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->dismissDialog()V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->cancelAsyncTask()V

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->unregisterReceivers()V

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Lcom/miui/home/launcher/assistant/ui/view/BaseView;->onFinishInflate()V

    const v3, 0x1b090183

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->findView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mHeaderView:Landroid/view/View;

    const v3, 0x1b0901ad

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->findView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mGuideViewStub:Landroid/view/ViewStub;

    const v3, 0x1b0901ae

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->findView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mContentViewStub:Landroid/view/ViewStub;

    const v3, 0x1b0900d6

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x1b090184

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b0b02f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v3, Lcom/miui/home/launcher/assistant/AssistantApplication;->isAllScreen:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b02029e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1b02029d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0
.end method

.method protected onMenuClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/payment/PaymentUtil;->startPaymentSettingActivity(Landroid/content/Context;)V

    return-void
.end method

.method public queryItemData()Ljava/lang/Object;
    .locals 3

    const-string/jumbo v0, "PaymentCardView"

    const-string/jumbo v1, "queryItemData"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/payment/PaymentItem;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/payment/PaymentItem;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/payment/PaymentItem;->queryItem(Ljava/lang/String;I)Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    move-result-object v0

    return-object v0
.end method

.method public refreshView(Ljava/lang/Object;)V
    .locals 4

    const-string/jumbo v2, "PaymentCardView"

    const-string/jumbo v3, "refreshView"

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mPaymentCardContent:Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mPaymentCardContent:Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mPaymentCardContent:Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->showContentView(Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/home/launcher/assistant/payment/PaymentItem;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/payment/PaymentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/payment/PaymentItem;->isPaymentAssistantEnabled()Z

    move-result v1

    new-instance v2, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    invoke-direct {v2}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mPaymentCardContent:Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->mPaymentCardContent:Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/assistant/payment/PaymentCardContent;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/payment/PaymentCardView;->showGuideView()V

    goto :goto_1
.end method
