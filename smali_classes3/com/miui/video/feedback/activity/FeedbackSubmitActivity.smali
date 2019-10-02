.class public Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;
.super Lcom/miui/video/service/base/VideoBaseAppCompatActivity;
.source "FeedbackSubmitActivity.java"

# interfaces
.implements Lcom/miui/video/feedback/presenter/view/FeedbackView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicViewHolder;,
        Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/service/base/VideoBaseAppCompatActivity<",
        "Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;",
        ">;",
        "Lcom/miui/video/feedback/presenter/view/FeedbackView;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;

.field private editText:Landroid/widget/EditText;

.field private loadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

.field private presenter:Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

.field private titleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

.field private vLoginTips:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->vLoginTips:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->updateListIcon()V

    return-void
.end method

.method private initEditTextLayout()V
    .locals 5

    sget v0, Lcom/miui/video/feedback/R$id;->et_input:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->editText:Landroid/widget/EditText;

    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/feedback/R$drawable;->ic_feedback_input_hint:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/miui/video/feedback/R$string;->feedback_hint:I

    invoke-virtual {p0, v3}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initLoginTipsLayout()V
    .locals 2

    sget v0, Lcom/miui/video/feedback/R$id;->v_login_tips:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->vLoginTips:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->vLoginTips:Landroid/view/View;

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->vLoginTips:Landroid/view/View;

    new-instance v1, Lcom/miui/video/feedback/activity/-$$Lambda$FeedbackSubmitActivity$mSJXwww086VJQF4ot-PLH45f8lM;

    invoke-direct {v1, p0}, Lcom/miui/video/feedback/activity/-$$Lambda$FeedbackSubmitActivity$mSJXwww086VJQF4ot-PLH45f8lM;-><init>(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTopicListLayout()V
    .locals 3

    sget v0, Lcom/miui/video/feedback/R$id;->ui_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    new-instance v1, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;

    invoke-direct {v1, p0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;-><init>(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;)V

    iput-object v1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->adapter:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;

    iget-object v1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->adapter:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static synthetic lambda$initFindViews$0(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$initFindViews$1(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->adapter:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;

    invoke-virtual {v0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->getSelectTopic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/feedback/R$string;->t_network_error:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/feedback/R$string;->content_can_not_null:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_2

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/feedback/R$string;->input_size_tips:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->presenter:Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    new-instance v2, Lcom/miui/video/feedback/model/FeedbackContent;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, p1, v4}, Lcom/miui/video/feedback/model/FeedbackContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->submit(Lcom/miui/video/feedback/model/FeedbackContent;)V

    return-void
.end method

.method public static synthetic lambda$initLoginTipsLayout$2(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->login()V

    return-void
.end method

.method public static synthetic lambda$updateListIcon$3(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->titleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    invoke-virtual {p1}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->getRightImgAction()Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/miui/video/feedback/R$drawable;->ic_feedback_history:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/video/feedback/activity/FeedbackListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private login()V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$1;-><init>(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/miui/video/base/account/VideoMiAccountManager;->login(Landroid/app/Activity;Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;)V

    :cond_0
    return-void
.end method

.method private updateListIcon()V
    .locals 4

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/base/utils/RegionUtils;->isOnlineVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->titleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    invoke-virtual {v2}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->getRightImgAction()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v0, :cond_1

    new-instance v3, Lcom/miui/video/feedback/activity/-$$Lambda$FeedbackSubmitActivity$TXdLXRf6Fv2lW6dwNcRGpa1FnTQ;

    invoke-direct {v3, p0}, Lcom/miui/video/feedback/activity/-$$Lambda$FeedbackSubmitActivity$TXdLXRf6Fv2lW6dwNcRGpa1FnTQ;-><init>(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->titleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    invoke-virtual {v2}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->getRightImgAction()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/miui/video/common/library/base/impl/IPresenter;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->createPresenter()Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;
    .locals 1

    new-instance v0, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    invoke-direct {v0}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;-><init>()V

    iput-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->presenter:Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->presenter:Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    return-object v0
.end method

.method public hideLoading()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->loadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->hideAll()V

    return-void
.end method

.method public initFindViews()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setTranslucentStatus(Landroid/content/Context;Z)V

    invoke-static {p0, v0}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    sget v0, Lcom/miui/video/feedback/R$id;->v_title_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/UICommonTitleBar;

    iput-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->titleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->titleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    sget v1, Lcom/miui/video/feedback/R$string;->ovp_navigation_feedback:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->titleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    new-instance v1, Lcom/miui/video/feedback/activity/-$$Lambda$FeedbackSubmitActivity$h4uyof3zanq1SaNEgmphKaQcdqE;

    invoke-direct {v1, p0}, Lcom/miui/video/feedback/activity/-$$Lambda$FeedbackSubmitActivity$h4uyof3zanq1SaNEgmphKaQcdqE;-><init>(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->setOnClickBack(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/feedback/R$id;->ui_loadingview:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/UILoadingView;

    iput-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->loadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

    invoke-direct {p0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->initEditTextLayout()V

    invoke-direct {p0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->initTopicListLayout()V

    invoke-direct {p0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->initLoginTipsLayout()V

    sget v0, Lcom/miui/video/feedback/R$id;->btn_submit:I

    invoke-virtual {p0, v0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/video/feedback/activity/-$$Lambda$FeedbackSubmitActivity$NeC-nYURX0N75gykqBP4n6QT2oM;

    invoke-direct {v1, p0}, Lcom/miui/video/feedback/activity/-$$Lambda$FeedbackSubmitActivity$NeC-nYURX0N75gykqBP4n6QT2oM;-><init>(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->titleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->getRightImgAction()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/miui/video/feedback/R$drawable;->ic_feedback_history:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->updateListIcon()V

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->presenter:Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;

    invoke-virtual {v0}, Lcom/miui/video/feedback/presenter/FeedbackSubmitPresenter;->init()V

    return-void
.end method

.method public onInit(Lcom/miui/video/common/feed/entity/TinyCardEntity;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void

    :cond_0
    iget-object p2, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->adapter:Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getKvList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity$TopicAdapter;->setData(Ljava/util/List;)V

    iget-object p2, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->titleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    invoke-virtual {p2}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->getRightImgAction()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->getRedPoint()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget p1, Lcom/miui/video/feedback/R$drawable;->ic_feedback_history_new:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/miui/video/feedback/R$drawable;->ic_feedback_history:I

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->updateListIcon()V

    return-void
.end method

.method public onSubmitResult(ZLjava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void

    :cond_0
    sget p1, Lcom/miui/video/feedback/R$id;->v_success_layout:I

    invoke-virtual {p0, p1}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/miui/video/feedback/R$id;->v_input_layout:I

    invoke-virtual {p0, p1}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget p1, Lcom/miui/video/feedback/R$id;->tv_feed_back_quit_tips:I

    invoke-virtual {p0, p1}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/feedback/R$plurals;->feed_back_home:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, p2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->titleBar:Lcom/miui/video/common/library/widget/UICommonTitleBar;

    new-instance p2, Lcom/miui/video/feedback/activity/-$$Lambda$TyEQbleNSBZV5U9DCF2OHa2_0Gw;

    invoke-direct {p2, p0}, Lcom/miui/video/feedback/activity/-$$Lambda$TyEQbleNSBZV5U9DCF2OHa2_0Gw;-><init>(Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/video/common/library/widget/UICommonTitleBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/feedback/R$layout;->activity_feedback_submit:I

    return v0
.end method

.method public showLoading()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/feedback/activity/FeedbackSubmitActivity;->loadingView:Lcom/miui/video/common/feed/ui/UILoadingView;

    invoke-virtual {v0}, Lcom/miui/video/common/feed/ui/UILoadingView;->showLoading()V

    return-void
.end method
