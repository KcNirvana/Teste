.class public Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;
.super Lcom/miui/video/player/service/setting/views/BaseFrameLayout;
.source "OnlineSubtitleView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OnlineSubtitleView"


# instance fields
.field private mBtnListener:Landroid/view/View$OnClickListener;

.field private mChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private switcherContainer:Landroid/view/View;

.field private vCancel:Landroid/widget/Button;

.field private vDeclareContainer:Landroid/view/View;

.field private vDeclareRemember:Landroid/widget/CheckBox;

.field private vOk:Landroid/widget/Button;

.field private vOnlineContent:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

.field private vRightContent:Landroid/widget/TextView;

.field private vSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->mChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView$2;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->mBtnListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vCancel:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vOk:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;)Landroid/widget/ViewSwitcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vSwitcher:Landroid/widget/ViewSwitcher;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vDeclareRemember:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;)Lcom/miui/video/player/service/presenter/LocalBasePresenter;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;)Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vOnlineContent:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    return-object p0
.end method

.method private getSettingChecked()Z
    .locals 3

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v0

    const-string v1, "subtitle_online_remember_checked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/base/common/data/SettingsSPManager;->loadBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->initSwitcher(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vDeclareContainer:Landroid/view/View;

    sget v0, Lcom/miui/video/player/service/R$id;->v_declare_remember:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vDeclareRemember:Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vDeclareContainer:Landroid/view/View;

    sget v0, Lcom/miui/video/player/service/R$id;->v_right_content:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vRightContent:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->getSettingChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->showNext()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vOnlineContent:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->mPresenter:Lcom/miui/video/player/service/presenter/LocalBasePresenter;

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->initRightContent()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vDeclareRemember:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vDeclareRemember:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->mChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vDeclareContainer:Landroid/view/View;

    sget v0, Lcom/miui/video/player/service/R$id;->v_cancel:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vCancel:Landroid/widget/Button;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vDeclareContainer:Landroid/view/View;

    sget v0, Lcom/miui/video/player/service/R$id;->v_ok:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vOk:Landroid/widget/Button;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vCancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->mBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vOk:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->mBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private initRightContent()V
    .locals 4

    new-instance v0, Lcom/miui/video/common/library/widget/ext/SpanText;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$string;->lv_subtitle_onlinesub_right_declare_content:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/ext/SpanText;->length()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/miui/video/player/service/R$color;->checked_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/video/common/library/widget/ext/SpanText;->hideUnderline(III)Lcom/miui/video/common/library/widget/ext/SpanText;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vRightContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vRightContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private initSwitcher(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->lp_subtitle_online_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->switcherContainer:Landroid/view/View;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$layout;->lp_subtitle_right_declare:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vDeclareContainer:Landroid/view/View;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-direct {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vOnlineContent:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->switcherContainer:Landroid/view/View;

    sget v0, Lcom/miui/video/player/service/R$id;->v_online_subtitle_switcher:I

    invoke-virtual {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->getViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ViewSwitcher;

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vSwitcher:Landroid/widget/ViewSwitcher;

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$anim;->anim_end_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$anim;->anim_end_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vDeclareContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->vOnlineContent:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/GetOnlineSubtitleView;

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->switcherContainer:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;->onFinishInflate()V

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->TAG:Ljava/lang/String;

    const-string v1, "onFinishInflate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public refresh()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;->refresh()V

    return-void
.end method

.method public setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/player/service/setting/views/BaseFrameLayout;->setPresenter(Lcom/miui/video/player/service/presenter/LocalBasePresenter;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/OnlineSubtitleView;->init(Landroid/content/Context;)V

    return-void
.end method
