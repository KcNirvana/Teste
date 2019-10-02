.class public Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;
.super Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;
.source "UserFeedbackFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserFeedbackFragment"


# instance fields
.field private mEtContact:Landroid/widget/EditText;

.field private mEtFeedback:Landroid/widget/EditText;

.field private mTagAdapter:Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;

.field private mTagDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTagListView:Lcom/miui/video/biz/videoplus/ui/UITagListView;

.field private mTvSend:Landroid/widget/TextView;

.field private vImageBack:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTagDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;)Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTagAdapter:Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;

    return-object p0
.end method

.method private initTagList()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTagDataList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$array;->feedback_tag_list:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v6, v5

    if-le v6, v4, :cond_0

    new-instance v6, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;

    aget-object v7, v5, v2

    aget-object v4, v5, v4

    invoke-direct {v6, v7, v4}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTagDataList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTagDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTagDataList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;

    invoke-virtual {v0, v4}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->setSelected(Z)V

    :cond_2
    new-instance v0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTagDataList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTagAdapter:Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTagListView:Lcom/miui/video/biz/videoplus/ui/UITagListView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTagAdapter:Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/ui/UITagListView;->setAdapter(Landroid/widget/Adapter;)V

    return-void
.end method

.method public static synthetic lambda$initViewsValue$47(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method private sendFeedback()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mEtFeedback:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->feedback_text_empty_toast:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/framework/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->feedback_net_error:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mEtContact:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$string;->feedback_contact_empty:I

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTagDataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackTagItem;->getTagType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    const-string v2, ""

    :goto_1
    const-string v3, "videoplus"

    invoke-static {v0, v2, v1, v3}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackPostEntity;->getPostBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackPostEntity$PostBody;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTvSend:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "UserFeedbackFragment"

    return-object v0
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_img_left:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->vImageBack:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->et_feedback:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mEtFeedback:Landroid/widget/EditText;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->ui_tag_list:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/ui/UITagListView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTagListView:Lcom/miui/video/biz/videoplus/ui/UITagListView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->et_contact:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mEtContact:Landroid/widget/EditText;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->tv_send:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTvSend:Landroid/widget/TextView;

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTagListView:Lcom/miui/video/biz/videoplus/ui/UITagListView;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/ui/UITagListView;->setOnItemClickListener(Lcom/miui/video/biz/videoplus/ui/UITagListView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->mTvSend:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment$2;-><init>(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->setStatusBarDarkMode(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->initTagList()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;->vImageBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/business/feedback/-$$Lambda$UserFeedbackFragment$sTCNxvxRqtQNGS0qNtHwbkgggIk;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/business/feedback/-$$Lambda$UserFeedbackFragment$sTCNxvxRqtQNGS0qNtHwbkgggIk;-><init>(Lcom/miui/video/biz/videoplus/app/business/feedback/UserFeedbackFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->fragment_videoplus_feedback:I

    return v0
.end method
