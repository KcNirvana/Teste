.class public Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UIVoiceLanguageChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;
    }
.end annotation


# instance fields
.field private mCurrentTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

.field private mOkListener:Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;

.field private vBtnOk:Landroid/widget/Button;

.field private vTitle:Landroid/widget/TextView;

.field private vUIList:Lcom/miui/video/biz/search/ui/UITagList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic lambda$initViewsEvent$1(Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->mOkListener:Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->mOkListener:Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->mCurrentTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-interface {p1, v0}, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;->onClick(Lcom/miui/video/common/feed/entity/TinyCardEntity;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$initViewsEvent$2(Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    instance-of p1, p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->mCurrentTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->mCurrentTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setChecked(Z)V

    :cond_0
    check-cast p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->setChecked(Z)V

    iput-object p3, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->mCurrentTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    iget-object p1, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->vUIList:Lcom/miui/video/biz/search/ui/UITagList;

    invoke-virtual {p1}, Lcom/miui/video/biz/search/ui/UITagList;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/search/R$layout;->ui_voice_language_choose:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->inflateView(I)V

    sget v0, Lcom/miui/video/biz/search/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/search/R$id;->v_ui_tag_list:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/search/ui/UITagList;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->vUIList:Lcom/miui/video/biz/search/ui/UITagList;

    sget v0, Lcom/miui/video/biz/search/R$id;->ui_btn_ok:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->vBtnOk:Landroid/widget/Button;

    return-void
.end method

.method public initViewsEvent()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->vBtnOk:Landroid/widget/Button;

    new-instance v1, Lcom/miui/video/biz/search/ui/-$$Lambda$UIVoiceLanguageChange$DVrS_aK48dblLhlDLZY0sRqbo7A;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/search/ui/-$$Lambda$UIVoiceLanguageChange$DVrS_aK48dblLhlDLZY0sRqbo7A;-><init>(Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->vUIList:Lcom/miui/video/biz/search/ui/UITagList;

    new-instance v1, Lcom/miui/video/biz/search/ui/-$$Lambda$UIVoiceLanguageChange$8mJNsPx5UJHfBuXMA3Mc-ylqgjI;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/search/ui/-$$Lambda$UIVoiceLanguageChange$8mJNsPx5UJHfBuXMA3Mc-ylqgjI;-><init>(Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/search/ui/UITagList;->setOnItemClickListener(Lcom/miui/video/common/feed/ui/UITagListView$OnItemClickListener;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->mCurrentTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    return-void
.end method

.method public setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V
    .locals 1

    instance-of v0, p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/miui/video/common/feed/entity/FeedRowEntity;

    iget-object v0, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->vUIList:Lcom/miui/video/biz/search/ui/UITagList;

    invoke-virtual {v0, p1, p2}, Lcom/miui/video/biz/search/ui/UITagList;->setData(ILcom/miui/video/framework/base/ui/BaseUIEntity;)V

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/FeedRowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-virtual {p2}, Lcom/miui/video/common/feed/entity/TinyCardEntity;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->mCurrentTinyCardEntity:Lcom/miui/video/common/feed/entity/TinyCardEntity;

    :cond_1
    return-void
.end method

.method public setOkOnClickListener(Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange;->mOkListener:Lcom/miui/video/biz/search/ui/UIVoiceLanguageChange$IOnOKClickListener;

    return-void
.end method
