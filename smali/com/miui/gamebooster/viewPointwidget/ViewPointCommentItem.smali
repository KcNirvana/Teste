.class public Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field private TAG:Ljava/lang/String;

.field protected fl:Landroid/os/Bundle;

.field protected fm:Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;

.field protected fn:Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

.field protected fo:I

.field protected fp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public iG(Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;IZ)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fm:Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;

    iput p2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fo:I

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_2

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->kp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fp:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fn:Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->kr()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->iI(I)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->km()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fn:Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

    invoke-virtual {v0, v8}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fp:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fp:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->kp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->kp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fp:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fp:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fp:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->kp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->mf()I

    move-result v3

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->kn()I

    move-result v4

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->kt()Z

    move-result v5

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->ku()Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/miui/gamebooster/a/r;->gk(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;IIZZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fn:Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

    invoke-virtual {v0, v7}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fn:Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->km()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public iH(Landroid/view/View;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fm:Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fm:Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->kn()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "migamecenter://comment_list?dataType=%s&commentId=%s&title=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "8"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fm:Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;

    invoke-virtual {v3}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->lY()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fm:Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;

    invoke-virtual {v3}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->ko()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "bundle_key_pass_through"

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fl:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/gamebooster/a/G;->io(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fm:Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;

    invoke-virtual {v0}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->kq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/a/t;->gy(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fm:Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;

    invoke-virtual {v1}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->kn()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fm:Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;

    invoke-virtual {v2}, Lcom/miui/gamebooster/gamead/ViewPointCommentInfoModel;->lY()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fl:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/miui/gamebooster/a/J;->iw(Landroid/content/Context;ILjava/lang/String;Lcom/miui/gamebooster/a/K;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0406

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fp:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fp:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/gamebooster/viewPointwidget/g;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/viewPointwidget/g;-><init>(Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0407

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fn:Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fn:Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;

    new-instance v1, Lcom/miui/gamebooster/viewPointwidget/h;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/viewPointwidget/h;-><init>(Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;)V

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/viewPointwidget/ShowTextCountTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fl:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fl:Landroid/os/Bundle;

    const-string/jumbo v1, "report_activity_layer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
